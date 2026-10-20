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

- **RL credit assignment for reasoning supervision**: credit assignment is key to RL for reasoning, which needs fine-grained credit beyond RLVR's outcome-only rewards. I tackle it from two angles: (1) *efficient intermediate rewards*, self-derived from the model's own correct reasoning without annotation or an LLM judge ([CogRE](https://arxiv.org/abs/2510.06198)); and (2) *from rewards to advantages*, turning multi-criterion rewards into per-criterion, token-level advantages (DVE).
- **Reasoning mechanisms**: looking inside LLMs to understand how concepts and their logical structure support reasoning, by aligning sparse autoencoder features with concepts ([AlignSAE](https://arxiv.org/abs/2512.02004)) and taxonomies (TaxoSAE).

<div style="background:#fdf0ef; border-radius:8px; padding:12px 16px; margin:8px 0 4px;"><span style="color:#c0392b;"><strong>🔥 I am actively looking for Summer 2027 research internships!</strong></span> My interests lie in RL reasoning, though I am open to related directions. Please feel free to reach out if you think I'd be a good fit: <a href="mailto:xinyuguo@arizona.edu"><strong>xinyuguo@arizona.edu</strong></a>. <a href="/files/CV.pdf" style="white-space:nowrap; text-decoration:none; color:inherit;"><i class="fas fa-file-pdf" style="color:#c0392b;"></i> <strong>CV</strong></a></div>

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
- A cognitively structured reasoning framework (chunking, anchoring, integrative reasoning), plus **Hit@Dict**, an intermediate RL reward that credits relation-bearing phrases in the reasoning trace using a dictionary mined from the model's own correct predictions.
- +73.7% relative F1 over accuracy-only RL and +54% human-rated explanation quality, with no LLM judge needed.
</div>
</div>

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">Under Review</div><img src='images/dve.png' alt="DVE" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

Disentangled Value Estimation: Rethinking Scalar Critics in Rubric-Based RL

**Xinyu Guo**, Zhengliang Shi, Minglai Yang, Chen Xu, Lingyong Yan

- A rubric-conditioned critic that estimates values and token-level advantages per rubric, instead of fitting a scalar reward that collapses all criteria together.
- Outperforms PPO and GRPO in 13 of 15 model–benchmark settings, with lower value error and advantages concentrated on rubric-relevant tokens.
</div>
</div>

## Reasoning Mechanisms

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">Under Review</div><img src='images/taxosae.png' alt="TaxoSAE" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

TaxoSAE: Rethinking Sparse Autoencoders through Taxonomic Logic

**Xinyu Guo**, Minglai Yang, Zhengliang Shi, Clayton T. Morrison, Eduardo Blanco, Mihai Surdeanu

- Encodes is-a (hypernym–hyponym) logic into the SAE feature space with stacked SAEs and a taxonomic alignment loss, supervising only the most specific concepts.
- Reads out unseen concepts through their hypernyms (up to +37.9 points) and gives scoped control: suppressing a concept removes only its own answers.
</div>
</div>

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">TMLR 2026</div><img src='images/alignsae.png' alt="AlignSAE" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

[AlignSAE: Concept-Aligned Sparse Autoencoders](https://openreview.net/forum?id=I9UjKxW4nq)

Minglai Yang, **Xinyu Guo**, Zhengliang Shi, Jinhe Bi, Steven Bethard, Mihai Surdeanu, Liangming Pan

[**Paper**](https://openreview.net/forum?id=I9UjKxW4nq) \| [**arXiv**](https://arxiv.org/abs/2512.02004)
- Binds ontology concepts to dedicated SAE slots through a "pre-train, then post-train" curriculum, enabling reliable concept swaps (94.8%) and step-wise probing of multi-hop reasoning and grokking.
</div>
</div>

## Other Publications

- [Rubric Dropout: A Simple Way to Mitigate Reward Hacking in Rubric-as-Reward RL](https://arxiv.org/abs/2608.11669), Minglai Yang, **Xinyu Guo**, Utkarsh Tyagi, Mian Zhang, Razvan Dumitru, Sunjie Hou, Yunzhong He, Daniel Yue Zhang, Ying Liu, *arXiv 2026*
- From Copying to Composition: How Language Models Develop In-Context Learning, Minglai Yang, **Xinyu Guo**, Renxiong Wang, Daniel Yue Zhang, Yunzhong He, *Under Review*
- RecuritOpsBench: When Agents Fail to Ask for the Information They Need, Yunze Xiao, Jienan Chen, **Xinyu Guo**, Minghao Liu, Zihan Wang, Weihao Xuan, *Under Review*
- [Deep Research: A Systematic Survey](https://arxiv.org/abs/2512.02038), Zhengliang Shi, Yiqun Chen, Haitao Li, et al. (incl. **Xinyu Guo**), *arXiv 2025*
- [QUEST: Query Optimization in Unstructured Document Analysis](https://arxiv.org/abs/2507.06515), Zhaoze Sun, Qiyan Deng, Chengliang Chai, Kaisen Jin, **Xinyu Guo**, Han Han, Ye Yuan, Guoren Wang, Lei Cao, *VLDB 2025*
- [Dr. DocBench: A Comprehensive Benchmark for Expert-Level and Difficult Document Parsing](https://arxiv.org/abs/2606.01393), Minglai Yang, Xinyan Velocity Yu, Pengyuan Li, **Xinyu Guo**, Zhenting Qi, et al., *NeurIPS 2026 Workshop LCFM*

<!-- TODO: confirm authorship before uncommenting.
- [Not Every Rubric Teaches Equally: Policy-Aware Rubric Rewards for RLVR](https://arxiv.org/abs/2605.20164), Utkarsh Tyagi, **Xinyu Guo**, et al., *arXiv 2026*
-->

# 📖 Education
- *2024 - now:* Ph.D. in Computer Science, University of Arizona, Tucson, AZ.
- *2019 - 2023:* B.E. in Computer Science, Shandong University, Qingdao, China.

# 🔬 Research Experience
- *2025.03 - now:* Research Assistant, CLU Lab, University of Arizona. Advisor: Prof. Mihai Surdeanu.
- *2023.09 - 2024.06:* Undergraduate Research Assistant, CAES Research Center, Shandong University. Advisor: Prof. Zhongxing Yu.

# 💻 Internships
- *2026.05 - 2026.10*, Research Scientist Intern, **[Abaka AI](https://www.abaka.ai)**, Mountain View, CA, USA.
  - Built RL environments and post-training data for tool-using customer-service agents on τ²-bench, and trained call agents with RL ([RetailServe blog](https://www.abaka.ai/blog/retail-agent-training-data-retailserve)).
  - Contributed to [Dr. DocBench](https://arxiv.org/abs/2606.01393), a benchmark for expert-level document parsing, and helped organize the [DocInsights 2026](https://docinsights-workshop.github.io/docinsights-2026/) workshop at EMNLP 2026.

# 🎖 Honors and Awards
- *2026:* **[Galileo Circle Scholarship](https://lpl.arizona.edu/graduate/awards/galileo/2024)**, University of Arizona
- *2024, 2025:* **Science Graduate College Fellowship**, University of Arizona
- *2023:* **Outstanding Undergraduate Thesis Award**, Shandong University
- *2023:* **Outstanding Graduate Student**, Shandong University
- *2022:* **Academic Scholarship**, Shandong University

# 🤝 Grants and Services
- **Co-PI**, ABC SEED Grant, Arizona Astrobiology Center
- **Reviewer**, ACL Rolling Review (ARR) 2026

<div style="display:none;">
    <p align="left">
        <img src="https://komarev.com/ghpvc/?username=xinnyuguo&label=Profile%20views&color=0e75b6&style=flat" alt="profile views" />
    </p>
</div>
