<div align="center">
 👋 Hi, everyone! 
    <br>
    We are <b>ByteDance Seed team.</b>
</div>

<p align="center">
  You can get to know us better through the following channels👇
  <br>
  <a href="https://seed.bytedance.com/">
    <img src="https://img.shields.io/badge/Website-%231e37ff?style=for-the-badge&logo=bytedance&logoColor=white"></a>
  <a href="https://github.com/user-attachments/assets/5793e67c-79bb-4a59-811a-fcc7ed510bd4">
    <img src="https://img.shields.io/badge/WeChat-07C160?style=for-the-badge&logo=wechat&logoColor=white"></a>
 <a href="https://www.xiaohongshu.com/user/profile/668e7e15000000000303157d?xsec_token=ABl2-aqekpytY6A8TuxjrwnZskU-6BsMRE_ufQQaSAvjc%3D&xsec_source=pc_search">
    <img src="https://img.shields.io/badge/Xiaohongshu-%23FF2442?style=for-the-badge&logo=xiaohongshu&logoColor=white"></a>
  <a href="https://www.zhihu.com/org/dou-bao-da-mo-xing-tuan-dui/">
    <img src="https://img.shields.io/badge/zhihu-%230084FF?style=for-the-badge&logo=zhihu&logoColor=white"></a>
</p>

![seed logo](https://github.com/user-attachments/assets/c42e675e-497c-4508-8bb9-093ad4d1f216)

<!-- 注释：以上为Seed官方信息，可直接复制使用，请注意导入“Seed WeChat”（第12行）、“Seed logo”(第20行)图片替换 -->


# Flow-based Policy for Online Reinforcement Learning
<p align="center">
  <a href="https://github.com/bytedance/flux">
    <img src="https://img.shields.io/badge/COMET-Project Page-yellow"></a>
  <a href="https://arxiv.org/pdf/2502.19811">
    <img src="https://img.shields.io/badge/COMET-Tech Report-red"></a>
  <a href="XXXX">
    <img src="https://img.shields.io/badge/COMET-Hugging Face-orange"></a>
  <br>
  <a href="https://github.com/user-attachments/assets/d3fcb3bf-466b-4efe-8c3f-5f85258202ae">
    <img src="https://img.shields.io/badge/COMET-Wechat Communication Group-07C160"></a>
  <a href="XXX">
    <img src="https://img.shields.io/badge/License-XXX-blue"></a>
</p>

We are delighted to introduce FlowRL. It is a new approach for online reinforcement learning that integrates flow-based policy representation with Wasserstein-2-regularized optimization. This creates a promising framework that integrates generative policies with reinforcement learning.


<!-- 注释：以上为项目基础信息，以项目COMET举例，Comet一级标题（第25行）、徽章Comet名字（第28、30、32、34行）记得替换，徽章可按需使用
请注意，徽章可根据具体项目自定义，如技术成果落地页、技术成果报告/Paper、Hugging Face、项目微信交流群、License、打榜榜单等，更换名字和链接即可；
专属微信群出现在两个位置，第34行、第42行，可以联系EB同学创建 -->

## News
[2025/06/10]🔥We release the PyTorch version of the code.
## Introduction
FlowRL is an  Actor-Critic framework that leverages flow-based policy representation and integrates Wasserstein-2-regularized optimization. By implicitly constraining the current policy to the optimal behavioral policy via W2 distance, FlowRL achieves superior performance on challenging benchmarks like the DM_Control (Dog domain, Humanoid domain) and Humanoid_Bench.
## Getting Started

1. **Setup Conda Environment:**
    Create an environment with
    ```bash
    conda create -n flowrl python=3.11
    ```

2. **Clone this Repository:**
    ```bash
    git clone https://github.com/bytedance/FlowRL.git
    cd FlowRL
    ```

3. **Install FlowRL Dependencies:**
    ```bash
    pip install -r requirements.txt
    ```

4. **Training Examples:**
    - Run a single training instance:
        ```bash
        python3 main.py --domain dog --task run
        ```

    - Run parallel training:
        ```bash
        bash scripts/train_parallel.sh
        ```

## License
This project is licensed under the Apache License 2.0. See the LICENSE file for details.
## TODO
- [ ] Release JAX version source code
## Citation
If you find FlowRL useful for your research and applications, please consider giving us a star ⭐ or cite us using:

```bibtex
@article{lv2025flow,
  title={Flow-Based Policy for Online Reinforcement Learning},
  author={Lv, Lei and Li, Yunfei and Luo, Yu and Sun, Fuchun and Kong, Tao and Xu, Jiafeng and Ma, Xiao},
  journal={arXiv preprint arXiv:2506.12811},
  year={2025}
}
```

## About [ByteDance Seed Team](https://seed.bytedance.com/)

Founded in 2023, ByteDance Seed Team is dedicated to crafting the industry's most advanced AI foundation models. The team aspires to become a world-class research team and make significant contributions to the advancement of science and society.

<!-- 注释：About ByteDance Seed Team可直接复制使用 -->

