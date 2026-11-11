---
name: keynote-visual-explainer
description: >-
  将产品观点、AI/技术原理、系统架构、流程、对比或抽象概念，制作成具有 Apple Keynote 发布会质感的中文/英文解释型配图。适用于用户说“用之前的 Keynote 风格画图”“给这段文字配图”“画一个架构图”“做简洁易懂的概念可视化”“不要文字”时；强调浅色高留白、精致柔和 3D、克制配色与一眼看懂的关系。非摄影写实、非复制 Apple 官方素材，且不替代严格数据可视化。
metadata:
  version: "1.0.0"
  language: zh-CN
---

# Keynote Visual Explainer

把一段文字提炼成**一眼理解机制、关系与差异**的高品质解释图。视觉取向借鉴 Apple Keynote 发布会的简洁、精密与克制，但不复制 Apple 标志、官方插画或特定页面。**准确性先于好看，结构先于细节。**

## 使用时机

- 用户要求“延续之前 Apple Keynote 那种风格”“给文字配图”“图解概念”“画系统架构”“对比三种路线”。
- 适配产品原理、AI Agent、操作系统、技术路线、服务流程、商业模式、隐喻说明。
- 遇到明确的静态配图要求，**直接产出图片**（如当前运行环境支持图像生成）；不要只返回一段绘图提示词来代替图片。环境仅支持提示词时，应提供完整可复制的生成提示词并诚实说明。
- 不应强行用于精确工程蓝图、精确统计图、真实 UI 截图、硬性品牌素材规范。精确图表/工程图应选择能校验结构的绘图工具。

## 核心设计准则（优先级从高到低）

1. **内容正确**：忠实区分参与者、资源、权限、流程、边界、依赖；不要为了对称而编造逻辑。
2. **主旨唯一**：观众应在三秒内识别唯一主要结论。把原文压缩成 1 个核心关系 + 2–6 个要素；架构大图允许 5–9 个分组节点。
3. **关系可见**：靠空间、形态、路径、因果箭头表达，不靠大量标注补救模糊结构。
4. **克制、透气**：足够大的留白、少量重点元素、清晰的阅读路径，拒绝无意义装饰。
5. **系列一致**：相同的人物、组件、箭头、卡片和颜色语义在同一组图中保持一致。

## 工作流程

### 1. 先把文字变成结构

在内部确认：
- **唯一想说明的结论**是什么？
- 有哪些**实体**（如用户、导购、商店；Trigger、Router、Worker）？
- 实体之间是**流向、控制、归属、条件分支，还是并列比较**？
- 哪些细节会改变原意（安全边界、资源来自谁、谁做决策、谁执行、是否动态更新）？这些必须保留。
- 什么只是例子、情绪修饰、修辞？可以省略。

不应把所有段落逐字转成图片。优先**抽象**，但不能把两种机制画成相同流程。

### 2. 选一种最自然的构图

根据语义从下列版式中挑选一种，具体例子见 `references/composition-patterns.md`：
- **一条链**：输入 → 核心决策/转换 → 输出（流程、权力交接）。
- **双/三栏对比**：共享视觉基准，仅突出不同规则或控制权。
- **中心辐射/主从分层**：中央调度器 → 多执行单元，并让底层状态与监控独立成层（系统架构）。
- **前后变化**：过去与现在，展示一个关键关系的增删。
- **二维曲线/坐标**：清晰轴向、曲线、少量锚点；位置必须与原文的方向相符。
- **生活隐喻**：厨房、旅行社、商场等场景，场景服务于机制，不做人物故事海报。

默认画幅 **16:9 横向**，PPT/Keynote 适配；用户指定其他比例时以用户要求为准。

### 3. 套用视觉系统

详见 `references/visual-system.md`。默认：
- **背景**：瓷白 / 雾白，极轻的冷灰蓝渐变，柔和工作室光，无明显纹理。
- **主体**：简洁 2.5D / 柔和 3D，奶白哑光陶瓷、磨砂塑料、少量阳极氧化金属；形体圆润、边缘精准，真实但不过度写实。
- **人物**：无五官、白瓷材质、圆润人偶；只在表达角色或行为时使用。AI 角色可使用少量蓝色符号，但不要默认让机器人占画面中心。
- **配色**：雾蓝、浅灰、中性白为主；亮蓝只强调主路径；薄荷绿强调成功/许可，暖橙/柔红仅用于风险/异常。
- **构图**：严格对齐、统一大小和视角、易识别剪影、圆角基座/卡片、小而软的落地阴影。
- **线条**：流向实线箭头、状态/条件虚线箭头；避免箭头穿过对象或多处交叉。
- **气质**：高级、安静、友好、技术感、编辑式克制。像精心排版的发布会一页，不像操作手册拼贴。

### 4. 控制文字

优先遵循用户的明确约束：
- 用户说 **“不要任何文字”“纯图形”**：完全不出现标题、标签、字母、数字、Logo、水印；用物体形态、空间关系与箭头解释。
- 用户没有要求无字：允许**极简标注**。技术对比可保留 A2UI、Intelligent UI、Router、Worker 等必要短标签；最多 1 个主标题，每组仅 1 个短标签，不写长段说明。
- 用户提供长文时：**不要把整段文章排进图片**；文字只是必要的消歧，不是主要载体。
- 若生成器中文文字稳定性欠佳，则进一步减字、用图标与后期可编辑标注代替；不要牺牲语义准确性。

### 5. 质量检查（生成前）

- **3 秒测试**：能否不看正文就认出关键参与者和主关系？
- **对比测试**：每一种路线真正不同的点是否在画面中可见？
- **因果测试**：箭头方向正确吗？条件变化、权限边界、控制主体有没有画反？
- **层级测试**：最重要的主体是否最显眼？有无抢戏的标题、装饰、巨大机器人？
- **删减测试**：删掉任何一个装饰元素，会不会更清爽？如果会，删掉。
- **一致性测试**：同一角色在不同分镜中是否同形，同一颜色是否同义？
- **约束测试**：比例/无字/节点数量/用户提供的术语是否被严格遵守？

若结果太复杂，优先减少物件、标注、卡片层数与次要场景，**不要只是缩小字体或压缩间距**。

## 图像生成提示词骨架

生成图像时，按任务动态填充。不要在用户不需要时展示此内部提示词。

```text
Create ONE polished Apple-Keynote-inspired editorial 3D explainer illustration,
wide 16:9, on a warm porcelain-white background with an almost imperceptible
cool-blue gradient. Use minimalist soft-clay and matte ceramic forms, precise
rounded geometry, elegant studio lighting, delicate shadows, ample negative space,
and a restrained palette of ivory, slate-gray and soft blue.

CORE CLAIM: [one-sentence takeaway].
COMPOSITION: [one clear diagram layout].
VISUAL ENTITIES: [the few essential actors/objects, their exact roles].
RELATIONSHIPS: [direction of arrows, branching, boundaries, ownership, or states].
CRITICAL DISTINCTIONS: [the facts that must not be visually conflated].

Visual storytelling over text. Every object has a semantic purpose.
Keep silhouettes instantly recognizable. Consistent perspective, scale,
lighting, arrow design and color semantics throughout.

TEXT POLICY: [absolutely no text / a few accurate short labels in ...].

AVOID: busy infographic dashboards, long copy, decorative filler, excessive
icons, overly glossy glassmorphism, neon, sci-fi holograms, generic blue robots,
heavy borders, crowded panels, random badges, repeated redundant scenes,
logos, watermarks and confusing arrows.
```

## 难点处理

- **深层架构图**：用 4–6 个水平/垂直分组承载更多细节，先呈现主流程，再展示持久状态、监测和异常路径；不要把所有模块无差别装成卡片。
- **一句话可以画清的事情**：不要做多宫格大信息图；一幅统一场景或一个三节点关系更好。
- **技术机制 + 日常隐喻**：保留技术真实关系，隐喻只做角色映射。不要因隐喻方便而改变协议、执行权或资源边界。
- **系列配图**：如需连续多张，优先固定人物/主色/俯视角度/箭头表达，以相同模板替换实体；不要每张随机重新发明风格。

## 参考资料

按需读取：
- `references/visual-system.md`：造型、材质、色彩、排版、常见失败模式。
- `references/composition-patterns.md`：针对不同信息关系的结构选择方法及三个真实题材示例。

技能包中 `assets/` 的图片来自当前系列已绘制的示例，仅作**质感、留白、布局和抽象程度**参考。**不要复制它们的文字或假定其技术细节都准确**。抽象概念图优先参考 `reference-minimal.jpg`，三栏比较参考 `reference-three-paths.jpg`，架构图参考 `reference-architecture.jpg`。
