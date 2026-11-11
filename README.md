# Keynote Visual Explainer

**Turn complex ideas into clear, elegant, presentation-ready visual explanations.**

[简体中文](#中文) · [English](#english)

> A community-made visual explanation Skill inspired by the clarity and restraint of product keynote presentations. **Not affiliated with or endorsed by Apple.**

![Minimal conceptual illustration](assets/reference-minimal.jpg)

## 中文

`keynote-visual-explainer` 是一个可复用的 Agent Skill，用于把技术文章、产品观点、系统架构、商业机制和抽象概念转成**一眼能看懂的配图**。

它不是单纯的“苹果风格提示词”——它会先把原文提炼成准确的**实体、关系、因果和边界**，再选择恰当的构图，最后应用统一的视觉语言。

### 视觉特征

- **默认横向 16:9**：适合 Keynote / PowerPoint、文章配图。
- **雾白 + 大留白**：简洁、安静、对齐清晰。
- **精致的 2.5D / 柔和 3D**：哑光陶瓷、磨砂材质、统一工作室光。
- **无五官人偶与精简实体模型**：有亲和力，但不做幼稚的卡通堆砌。
- **克制的蓝灰配色**：主要流向用蓝色强调，风险/成功只使用少量辅助色。
- **关系优先**：箭头、空间、形状承载信息；必要时才加极少文字，明确要求无字则绝不加字。

### 快速安装

这是使用 `SKILL.md` 作为入口的 Agent Skill，不依赖特别的 Python 或 Node 包。将本仓库克隆或下载到你的 Agent 支持的 Skills 目录：

```bash
git clone https://github.com/chaos-xxl/keynote-visual-explainer.git "$HOME/.agents/skills/keynote-visual-explainer"
```

不同客户端使用的 Skills 目录可能不同，请以对应产品当前文档为准。确保 `SKILL.md` 和 `references/`、`assets/` 保持在同一目录结构中。

然后直接说：

> 用 Keynote Visual Explainer 风格，把这段关于 Router / Worker 并行协作的文字画成 16:9 架构图。少文字，尽量让结构本身说话。

或：

> 使用 keynote-visual-explainer，把下面三个技术方案画成三栏对比。不要任何文字。

此 Skill 指导理解与图像生成，**不是图像模型或绘图引擎**；需要配合实际可用的图像生成工具。Skill 不能保证所有生成结果的文字、箭头和技术细节 100% 正确，应检查成图。

### 三种典型场景

| 场景 | 关键表达 | 参考图 |
|---|---|---|
| 抽象概念 | 用熟悉的实物解释技术关系 | [Minimal](assets/reference-minimal.jpg) |
| 多方案对比 | 同一基准下突出真正差异 | [Three paths](assets/reference-three-paths.jpg) |
| 系统架构 | 输入、调度、并行执行、回传与状态管理 | [Architecture](assets/reference-architecture.jpg) |

![Three-way comparison](assets/reference-three-paths.jpg)

![Kitchen workflow illustration](assets/kitchen-workflow.png)

![Super-agent multitasking and attention](assets/super-agent-multitasking.png)

![A2UI travel planning comparison](assets/a2ui-travel-planning.png)

**设计规则与结构范式：** [`SKILL.md`](SKILL.md) · [`visual-system.md`](references/visual-system.md) · [`composition-patterns.md`](references/composition-patterns.md)

### 设计原则

**准确性 > 结构清晰 > 视觉一致性 > 装饰性。**

- 不能为了让画面对称而捏造技术机制。
- 不能用“酷炫”的机器人、云朵、光效代替真实的关系。
- 不能把长文直接排版成密密麻麻的海报。
- 同系列图尽量复用相同视觉语义、视角、配色和对象尺度。

## English

**Keynote Visual Explainer** is a reusable Agent Skill for communicating technical concepts, systems, product strategy, and business mechanics in presentation-ready illustrations.

It begins with **semantic structure**, not decoration: identify the main claim, entities, dependencies, actions, and boundaries; choose a suitable composition; then render a cohesive visual in a restrained, matte, soft-3D editorial style.

### What it does

- 16:9 slide-first compositions with generous negative space.
- Soft off-white, matte ceramic/metallic objects, coherent studio lighting.
- Blue-gray semantic accent colors, sparing success/warning colors.
- Faceless rounded figures where characters actually explain the mechanism.
- Common visual patterns: flow, before/after, side-by-side comparison, system architecture, and conceptual axes.
- Zero text when requested; otherwise, only minimum necessary labels.
- Prioritizes **technical correctness over ornamental effects**.

### Install

```bash
git clone https://github.com/chaos-xxl/keynote-visual-explainer.git "$HOME/.agents/skills/keynote-visual-explainer"
```

The target Skills directory differs by agent product. Refer to your product documentation. This repository provides instructions and visual references, not an image-generation model; use it with a supported image-generation tool.

### Usage

> Use keynote-visual-explainer to illustrate the difference between a physics engine and a world model. Widescreen, no text, clear comparison.

> Turn this architecture description into a keynote-style visual overview. Preserve the data flow and human approval boundaries.

### Scope and limitations

This Skill is for conceptual explanation graphics, **not** pixel-perfect engineering schematics, quantitative charts, copyrighted artwork replication, or official Apple-brand design assets. Reference images are examples of aesthetic and abstraction level; they are not authoritative technical diagrams. Review outputs for invented arrows, inaccurate labels, or changed mechanisms.

### One-command publication (for maintainers)

If the repository has not yet been created, on a machine with `gh` authenticated and Git configured, run `bash publish.sh` from the downloaded project directory. The script creates a **new public repository** under `chaos-xxl` and refuses to overwrite an existing one.

## Repository layout

```text
keynote-visual-explainer/
├── SKILL.md
├── README.md
├── LICENSE
├── CONTRIBUTING.md
├── CHANGELOG.md
├── publish.sh
├── references/
│   ├── visual-system.md
│   └── composition-patterns.md
└── assets/
    ├── a2ui-travel-planning.png
    ├── kitchen-workflow.png
    ├── reference-minimal.jpg
    ├── reference-three-paths.jpg
    ├── reference-architecture.jpg
    └── super-agent-multitasking.png
```

## License

Released under the [MIT License](LICENSE). The visual references were AI-generated as examples for this Skill. This project is an independent community project; **Apple**, **Keynote**, and related trademarks belong to their respective owners. No affiliation or endorsement is implied.
