---
permalink: /
title: ""
excerpt: ""
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

{% if site.google_scholar_stats_use_cdn %}
{% assign gsDataBaseUrl = "https://cdn.jsdelivr.net/gh/" | append: site.repository | append: "@" %}
{% else %}
{% assign gsDataBaseUrl = "https://raw.githubusercontent.com/" | append: site.repository | append: "/" %}
{% endif %}
{% assign url = gsDataBaseUrl | append: "google-scholar-stats/gs_data_shieldsio.json" %}

<span class='anchor' id='about-me'></span>
I'm **Xinyu Guo**, a third-year Ph.D. student in Computer Science at the University of Arizona. I am fortunate to be advised by Prof. <a href="https://surdeanu.cs.arizona.edu/mihai/">Mihai Surdeanu</a> in the <a href="https://clulab.org/">CLU Lab</a>. Before that, I received my B.E. in Computer Science from Shandong University in 2023.

My research focuses on **LLM-based reasoning**, along two directions:

- **RL credit assignment for reasoning supervision**: credit assignment is key to RL for reasoning, which needs fine-grained credit beyond RLVR's outcome-only rewards. I tackle it from two angles: (1) *efficient intermediate rewards*, self-derived from the model's own correct reasoning without annotation or an LLM judge ([CogRE](https://arxiv.org/abs/2510.06198)); and (2) *from rewards to advantages*, disentangling the varying query-specific rubrics in critic learning to estimate per-rubric values and advantages (DVE).
- **Reasoning mechanisms**: looking inside LLMs to understand how concepts and their logical structure support reasoning, by aligning sparse autoencoder features with concepts ([AlignSAE](https://arxiv.org/abs/2512.02004)) and taxonomies (TaxoSAE).

<div style="background:#fdf0ef; border-radius:8px; padding:12px 16px; margin:8px 0 4px;"><span style="color:#c0392b;"><strong>🔥 I am actively looking for Summer 2027 research internships!</strong></span> My interests lie in reinforcement learning for LLM reasoning, though I am open to related directions. Please feel free to reach out if you think I'd be a good fit: <a href="mailto:xinyuguo@arizona.edu"><strong>xinyuguo@arizona.edu</strong></a>. <a href="/files/CV.pdf" style="white-space:nowrap; text-decoration:none; color:inherit;"><i class="fas fa-file-pdf" style="color:#c0392b;"></i> <strong>CV</strong></a></div>

# 🔥 News
- *2026.08:* &nbsp;🎉 "The Answer Lies Within: Self-Derived Rewards Enable Explainable Relation Extraction" (CogRE) is accepted to the **EMNLP 2026 Main Conference**!
- *2026.08:* &nbsp;🎉 "AlignSAE: Concept-Aligned Sparse Autoencoders" is accepted to **TMLR**!
- *2026.08:* "Rubric Dropout: A Simple Way to Mitigate Reward Hacking in Rubric-as-Reward RL" is released on [arXiv](https://arxiv.org/abs/2608.11669).
- *2026.06:* &nbsp;🏆 I received the [Galileo Circle Scholarship](https://lpl.arizona.edu/graduate/awards/galileo/2024) from the University of Arizona!
- *2026.05:* "Dr. DocBench: A Comprehensive Benchmark for Expert-Level and Difficult Document Parsing" is released on [arXiv](https://arxiv.org/abs/2606.01393), and accepted to the **LCFM Workshop @ NeurIPS 2026**! [[OpenReview](https://openreview.net/forum?id=D0drMyVKYI)]
- *2025.11:* "Deep Research: A Systematic Survey" is released on [arXiv](https://arxiv.org/abs/2512.02038).
- *2025.09:* &nbsp;🏆 I received the Science Graduate College Fellowship from the University of Arizona!
- *2025.07:* &nbsp;🎉 "QUEST: Query Optimization in Unstructured Document Analysis" is accepted to **VLDB 2025**!

# 📝 Publications

## RL Credit Assignment for Reasoning Supervision

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">EMNLP 2026 Main</div><img src='images/cogre_fig1.png' alt="CogRE" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

[The Answer Lies Within: Self-Derived Rewards Enable Explainable Relation Extraction](https://arxiv.org/abs/2510.06198)

**Xinyu Guo**, Zhengliang Shi, Minglai Yang, Mahdi Rahimi, Mihai Surdeanu

[**Paper**](https://arxiv.org/abs/2510.06198) \| [**Code**](https://github.com/xinnyuguo/CogRE-Hit-at-Dict)
- Identified two failure modes of LLMs on realistic one-shot relation extraction: attending to irrelevant tokens, and predicting relations at a granularity mismatched with human annotation schemas.
- Proposed **Hit@Dict**, a self-derived intermediate RL reward that credits relation-bearing phrases in the reasoning trace, using a dictionary mined from the model's own correct explanations; no LLM judge needed.
- Improved F1 by **+73.7%** (relative) over accuracy-only RL on one-shot NYT29 and human-rated explanation quality by **+54%**.
</div>
</div>

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">Under Review</div><img src='images/dve.png' alt="DVE" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

Disentangled Value Estimation: Rethinking Scalar Critics in Rubric-Based RL

**Xinyu Guo**, Zhengliang Shi, Minglai Yang, Chen Xu, Lingyong Yan

- Identified a bottleneck in the critic model for rubric-based RL: the critic sees only the query and response prefix, yet is trained on a scalar reward that collapses many query-specific rubrics.
- Proposed a shared critic conditioned on one rubric at a time that estimates per-rubric values and token-level advantages, aggregated with the rubric weights.
- Outperformed PPO and GRPO in **13 of 15** model–benchmark settings (up to **+8.0 points** over PPO), with lower value error and advantages concentrated on rubric-relevant tokens.
</div>
</div>

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">Under Review</div><img src='images/rubricdropout.png' alt="Rubric Dropout" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

[Rubric Dropout: A Simple Way to Mitigate Reward Hacking in Rubric-as-Reward RL](https://arxiv.org/abs/2608.11669)

Minglai Yang, **Xinyu Guo**, Utkarsh Tyagi, Mian Zhang, Razvan Dumitru, Sunjie Hou, Yunzhong He, Daniel Yue Zhang, Ying Liu

[**Paper**](https://arxiv.org/abs/2608.11669)
- Showed that rubric-as-reward RL reward-hacks out of distribution: the training judge's score keeps rising while a stronger gold judge's score peaks and falls by **22 points** on ResearchQA.
- Proposed Rubric Dropout, which randomly drops rubric criteria at every step, raising the out-of-distribution gold score by **+6–7 points** on ResearchQA with no in-domain cost.
</div>
</div>

## Reasoning Mechanisms

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">Under Review</div><img src='images/taxosae.png' alt="TaxoSAE" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

TaxoSAE: Rethinking Sparse Autoencoders through Taxonomic Logic

**Xinyu Guo**, Minglai Yang, Zhengliang Shi, Clayton T. Morrison, Eduardo Blanco, Mihai Surdeanu

- Showed that existing SAEs learn a flat feature space, so concept readout lacks taxonomic consistency and control lacks the granularity to scope an edit.
- Proposed TaxoSAE, which mirrors a taxonomy with stacked SAEs and a taxonomic alignment loss; only terminal concepts need supervision.
- Improved hypernym readout of unseen abstract concepts by **+31.3 points** and swap success by **+25.5 points**; suppressing a concept removes only its own answers.
</div>
</div>

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">TMLR 2026</div><img src='images/alignsae.png' alt="AlignSAE" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

[AlignSAE: Concept-Aligned Sparse Autoencoders](https://openreview.net/forum?id=I9UjKxW4nq)

Minglai Yang, **Xinyu Guo**, Zhengliang Shi, Jinhe Bi, Steven Bethard, Mihai Surdeanu, Liangming Pan

[**Paper**](https://openreview.net/forum?id=I9UjKxW4nq) \| [**arXiv**](https://arxiv.org/abs/2512.02004)
- Showed that unsupervised SAEs fragment human-defined concepts across many entangled features.
- Proposed a "pre-train, then post-train" curriculum that binds each ontology concept to a dedicated latent slot.
- Enabled reliable concept swaps (**94.8%**) and **9–∞×** better disentanglement than standard SAEs; used the aligned slots to probe multi-hop reasoning and grokking-like dynamics.
</div>
</div>

## Other Publications

- From Copying to Composition: How Language Models Develop In-Context Learning, Minglai Yang, **Xinyu Guo**, Renxiong Wang, Daniel Yue Zhang, Yunzhong He, *Under Review, 2026*
- [Dr. DocBench: A Comprehensive Benchmark for Expert-Level and Difficult Document Parsing](https://arxiv.org/abs/2606.01393), Minglai Yang, Xinyan Velocity Yu, Pengyuan Li, **Xinyu Guo**, Zhenting Qi, et al., *NeurIPS Workshop (LCFM), 2026*
- RecuritOpsBench: When Agents Fail to Ask for the Information They Need, Yunze Xiao, Jienan Chen, **Xinyu Guo**, Minghao Liu, Zihan Wang, Weihao Xuan, *Under Review, 2026*
- [Deep Research: A Systematic Survey](https://arxiv.org/abs/2512.02038), Zhengliang Shi, ..., **Xinyu Guo**, ..., Zhaochun Ren, *Under Review, 2025*
- [QUEST: Query Optimization in Unstructured Document Analysis](https://arxiv.org/abs/2507.06515), Zhaoze Sun, Qiyan Deng, Chengliang Chai, Kaisen Jin, **Xinyu Guo**, Han Han, Ye Yuan, Guoren Wang, Lei Cao, *VLDB, 2025*

<!-- TODO: confirm authorship before uncommenting.
- [Not Every Rubric Teaches Equally: Policy-Aware Rubric Rewards for RLVR](https://arxiv.org/abs/2605.20164), Utkarsh Tyagi, **Xinyu Guo**, et al., *arXiv 2026*
-->

# 📖 Education
- *2024 - now:* Ph.D. in Computer Science, University of Arizona, Tucson, AZ. Advisor: Prof. [Mihai Surdeanu](https://surdeanu.cs.arizona.edu/mihai/). GPA: 3.86/4.0.
- *2019 - 2023:* B.E. in Computer Science, Shandong University, China. Graduated with Honors. GPA: 3.8/4.0.

# 💻 Internships
- *2026.05 - 2026.10*, Research Scientist Intern, **[Abaka AI](https://www.abaka.ai)**, Mountain View, CA.
  - **Agentic RL Training**: built an internal agentic RL training framework supporting MCP-based tool use and RL training; post-trained Qwen3-8B on **2K** synthesized tasks, raising Pass@1 on τ²-bench Retail from **31.6%** to **60.2%** ([RetailServe blog](https://www.abaka.ai/blog/retail-agent-training-data-retailserve)).
  - **RL environments & task synthesis**: built a knowledge-grounded pipeline for scaling RL environment construction and task synthesis, where deep research and knowledge graphs supply the domain knowledge that guides both code agents in building environment software and the synthesis of training tasks.
  - **Video QA pipeline**: built a large-scale audio-visual QA generation pipeline for multiple-choice and open-ended questions across **13** video domains, with multi-stage annotation, leakage and difficulty probing, and model-based verification.
  - **Image QA pipeline**: constructed challenging image QA data requiring multi-step visual reasoning over real-world images, with hard distractors, adversarial validation, and no overlap with public test sets.
  - **Document parsing**: curated data and built the multi-model evaluation harness for [Dr. DocBench](https://arxiv.org/abs/2606.01393) (NeurIPS 2026 LCFM Workshop).

# 🔬 Research Experience
- *2025.03 - now*, Graduate Research Assistant, **CLU Lab, University of Arizona**, Tucson, AZ.
  - Advisors: Prof. [Mihai Surdeanu](https://surdeanu.cs.arizona.edu/mihai/), Prof. [Clayton T. Morrison](https://ischool.arizona.edu/people/clayton-morrison), Prof. [Eduardo Blanco](https://eduardoblanco.github.io/).
  - Research topics: NLP, LLM reasoning mechanisms. Publications: [CogRE](https://arxiv.org/abs/2510.06198) (EMNLP), [AlignSAE](https://openreview.net/forum?id=I9UjKxW4nq) (TMLR), TaxoSAE (under review).
- *2023.09 - 2024.09*, Undergraduate Research Assistant, **CAES Research Center, Shandong University**, China. Advisor: Prof. [Zhongxing Yu](https://zhongxingyu.github.io/).
  - **C++ type conversion bugs**: built a dataset of **226** real-world type conversion bugs from **10** major C++ projects (e.g., V8, PyTorch, OpenCV, MySQL), summarized root-cause and fix patterns, and designed a tool to automatically detect and repair them.
  - **Code clone detection & repair** (undergraduate thesis): applied SemanticCodeBERT, which extends GraphCodeBERT with semantic flow graphs and five structure-aware pre-training tasks; outperformed GraphCodeBERT on BigCloneBench clone detection and Transformer baselines on Bug-Fixes code repair.
- *2022.02*, Oxford Winter Exchange Program, **Oxford University**, UK. Advisor: Prof. [Jeremy Pitt](https://www.imperial.ac.uk/people/j.pitt). Topic: Human-centered AI.

# 🎖 Honors and Awards
- *2026:* **[Galileo Circle Scholarship](https://lpl.arizona.edu/graduate/awards/galileo/2024)**, University of Arizona
- *2024, 2025:* **Science Graduate College Fellowship**, University of Arizona
- *2023:* **Outstanding Undergraduate Thesis Award**, Shandong University
- *2023:* **Outstanding Graduate Student**, Shandong University
- *2022:* **Academic Scholarship**, Shandong University
- *2021:* **18th Certified Software Professional Examination, Top 4.57%**, CCF

# 🤝 Grants and Services
- **Co-PI**, ABC SEED Grant, Arizona Astrobiology Center
- **Reviewer**, ACL Rolling Review (ARR) 2026, NeurIPS Workshop (LCFM) 2026

# 📚 Teaching
- *2024, 2025:* Teaching Assistant, University of Arizona. Courses: CSC337 Web Programming, CSC460 Database, CSC477/577 Computer Vision.
- *2023:* Teaching Assistant, Shandong University. Course: Software Engineering.

<div style="display:none;">
    <p align="left">
        <img src="https://komarev.com/ghpvc/?username=xinnyuguo&label=Profile%20views&color=0e75b6&style=flat" alt="profile views" />
    </p>
</div>
