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
I'm **Xinyu Guo**, a third-year Ph.D. student in Computer Science at the University of Arizona, advised by Prof. <a href="https://surdeanu.cs.arizona.edu/mihai/">Mihai Surdeanu</a> in the <a href="https://clulab.org/">CLU Lab</a>. Before that, I received my B.E. in Computer Science from Shandong University in 2023.

My research focuses on **fine-grained supervision for LLM reasoning**. Outcome-level signals tell a model *whether* it reasoned well, but not *where*. I work on making this supervision fine-grained along three directions:

- **RL for reasoning quality**: training LLMs to produce reasoning that is accurate, concise, and aligned with human understanding, while keeping proxy rewards from being hacked ([CogRE](https://arxiv.org/abs/2510.06198), [Rubric Dropout](https://arxiv.org/abs/2608.11669)).
- **Fine-grained credit assignment**: assigning credit to the specific phrases, tokens, and criteria responsible for a good response, using signals that are cheap to obtain, such as rewards derived from the model's own correct predictions or rubric-level scores that standard training discards (Hit@Dict, DVE).
- **Mechanisms of reasoning**: looking inside LLMs to find how concepts and their logical structure support reasoning, by aligning sparse autoencoder features with concepts and taxonomies ([AlignSAE](https://arxiv.org/abs/2512.02004), TaxoSAE).

📄 [CV](/files/CV.pdf)

# 🔥 News
- *2026.08:* &nbsp;🎉 "The Answer Lies Within: Self-Derived Rewards Enable Explainable Relation Extraction" (CogRE) is accepted to the **EMNLP 2026 Main Conference**!
- *2026.08:* &nbsp;🎉 "AlignSAE: Concept-Aligned Sparse Autoencoders" is accepted to **TMLR**!
- *2026.08:* "Rubric Dropout: A Simple Way to Mitigate Reward Hacking in Rubric-as-Reward RL" is released on [arXiv](https://arxiv.org/abs/2608.11669).

# 📝 Publications

## RL for Reasoning & Credit Assignment

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">EMNLP 2026 Main</div><img src='images/cogre.png' alt="CogRE" width="100%"></div></div>
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

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">arXiv 2026</div><img src='images/rubricdropout.png' alt="Rubric Dropout" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

[Rubric Dropout: A Simple Way to Mitigate Reward Hacking in Rubric-as-Reward RL](https://arxiv.org/abs/2608.11669)

Minglai Yang, **Xinyu Guo**, Utkarsh Tyagi, Mian Zhang, Razvan Dumitru, Sunjie Hou, Yunzhong He, Daniel Yue Zhang, Ying Liu

[**Paper**](https://arxiv.org/abs/2608.11669)
- Shows that rubric-as-reward RL hacks out of distribution, and randomly drops rubric criteria at each step so no fixed criterion can be exploited.
</div>
</div>

## Mechanisms of Reasoning

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

- From Copying to Composition: How Language Models Develop In-Context Learning, Minglai Yang, **Xinyu Guo**, Renxiong Wang, Daniel Yue Zhang, Yunzhong He, *Under Review*
- RecuritOpsBench: When Agents Fail to Ask for the Information They Need, Yunze Xiao, Jienan Chen, **Xinyu Guo**, Minghao Liu, Zihan Wang, Weihao Xuan, *Under Review*
- [Deep Research: A Systematic Survey](https://doi.org/10.20944/preprints202511.2077.v1), Zhengliang Shi, Yiqun Chen, Haitao Li, et al. (incl. **Xinyu Guo**), *Preprints 2025*
- [QUEST: Query Optimization in Unstructured Document Analysis](https://arxiv.org/abs/2507.06515), Zhaoze Sun, Qiyan Deng, Chengliang Chai, Kaisen Jin, **Xinyu Guo**, Han Han, Ye Yuan, Guoren Wang, Lei Cao, *VLDB 2025*

<!-- TODO: confirm authorship before uncommenting.
- [Not Every Rubric Teaches Equally: Policy-Aware Rubric Rewards for RLVR](https://arxiv.org/abs/2605.20164), Utkarsh Tyagi, **Xinyu Guo**, et al., *arXiv 2026*
-->

# 📖 Education
- *2024 - now:* Ph.D. in Computer Science, University of Arizona, Tucson, AZ.
- *2019 - 2023:* B.E. in Computer Science, Shandong University, Qingdao, China.

# 💻 Research Experience
- *2025.03 - now:* Research Assistant, CLU Lab, University of Arizona. Advisor: Prof. Mihai Surdeanu.
- *2023.09 - 2024.06:* Undergraduate Research Assistant, CAES Research Center, Shandong University. Advisor: Prof. Zhongxing Yu.

# 🎖 Honors and Awards
- *2022:* Academic Scholarship, Shandong University
- *2020, 2021, 2022:* Entrepreneurial Practice Award, Shandong University
- *2020:* Merit Award, 6th "Internet+" Innovation and Entrepreneurship Competition

<div style="display:none;">
    <p align="left">
        <img src="https://komarev.com/ghpvc/?username=xinnyuguo&label=Profile%20views&color=0e75b6&style=flat" alt="profile views" />
    </p>
</div>
