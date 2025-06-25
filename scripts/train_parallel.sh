#!/bin/bash

# a example training scripts on dmc dog domain

log_dir="training_logs"
mkdir -p $log_dir

tasks=(run walk stand trot)
# # tasks = (
#     your_task1
#     your_task2
#     ....
# # )
seeds=(0 1 2 3 4)
lagrange_multiplier =(0.1)

NUM_GPUS=8
MAX_TASKS_PER_GPU=3
MAX_CONCURRENT=$((NUM_GPUS * MAX_TASKS_PER_GPU))

function current_jobs {
    jobs -rp | wc -l
}

task_id=0
for seed in "${seeds[@]}"; do
    for task in "${tasks[@]}"; do
        for lamda in "${lagrange_multiplier[@]}"; do
            gpu=$(( (task_id / MAX_TASKS_PER_GPU) % NUM_GPUS ))
            while [ $(current_jobs) -ge $MAX_CONCURRENT ]; do
                sleep 1
            done
            echo "Launching task: seed=$seed, task=$task, bc=$bc on GPU $gpu"
            CUDA_VISIBLE_DEVICES=$gpu python3 maindm.py --domain dog --seed $seed --task $task --lamda $lamda \
                > "${log_dir}/dog_${task}_seed${seed}_bc${bc}.log" 2>&1 &
            ((task_id++))
        done
    done
done

wait
echo "training done"
