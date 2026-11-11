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

### 2. 用读者需要看懂的关系决定构图

先问读者要看懂的是“先后怎么发生”“谁负责什么”，还是“几种做法差在哪”。选择一个主版式，具体例子见 [结构版式](references/composition-patterns.md)：
- **一条链**：输入 → 核心决策/转换 → 输出（流程、权力交接）。
- **双/三栏对比**：共享视觉基准，仅突出不同规则或控制权。
- **分层架构**：当读者需要区分交互、协调和执行时，优先按职责分层。在画布上给核心调度角色最大的视觉分量，让并行执行单元同层排列，把共享能力放在旁侧或底层。读 [分层架构示例](references/composition-patterns.md#d-分层架构中心协调多单元并行)。
- **前后变化**：过去与现在，展示一个关键关系的增删。
- **二维曲线/坐标**：清晰轴向、曲线、少量锚点；位置必须与原文的方向相符。
- **生活隐喻**：厨房、旅行社、商场等场景，场景服务于机制，不做人物故事海报。

默认画幅 **16:9 横向**，PPT/Keynote 适配；用户指定其他比例时以用户要求为准。

生成前写清楚画布上的相对位置：**第一眼看哪里、各角色放在哪一层、哪几个元素同级、辅助能力放在哪里**。把这些位置和尺寸关系写进提示词。箭头只补充有意义的方向、回传或边界，避免为每个技术名词排一个等大的图标。

### 3. 选一张参考图，作为实际生成输入

1. **选图**。优先使用用户指定的图或本对话中用户选定的上一张成图。没有指定时，选同类的内置样图：分层架构用 [分层架构样图](assets/reference-layered-architecture.png)，多方案对比用 [三栏样图](assets/reference-three-paths.jpg)，单场景概念用 [简洁样图](assets/reference-minimal.jpg)，关系流程用 [厨房流程样图](assets/kitchen-workflow.png)。布局不匹配时，只参考它的光线、材质和配色。
2. **把图传入生成器**。先查看图片，再通过生成工具的参考图或编辑图输入附上实际图片，按工具支持的方式使用文件、图片附件或已生成图。提示词里提到文件名不等于传入图片。若当前工具只能接收文字，说明这次采用文字近似，并按 [视觉规范](references/visual-system.md) 写明具体特征。
3. **区分视觉沿用与内容替换**。同一张图的局部修改，将原图作为编辑目标，明确锁定位置、比例、造型、光线和排版。为新题目出图，将样图作为风格参考，只有结构合适时才沿用布局。根据新题目决定实体、文字、工位数量和箭头，不从样图继承旧内容。

未指定画风时，从 [视觉规范](references/visual-system.md) 选取与参考图一致的特征：
- **背景**：瓷白 / 雾白，极轻的冷灰蓝渐变，柔和工作室光，无明显纹理。
- **主体**：简洁 2.5D / 柔和 3D，奶白哑光陶瓷、磨砂塑料、少量阳极氧化金属；形体圆润、边缘精准，真实但不过度写实。
- **人物**：无五官、白瓷材质、圆润人偶。角色分工是主旨时，优先给不同职责可识别的造型（如用户、调度员、执行工位）；设备、资源和存储则用对应物件。仅在隐喻与实际职责相符时使用。
- **配色**：雾蓝、浅灰、中性白为主；亮蓝只强调主路径；薄荷绿强调成功/许可，暖橙/柔红仅用于风险/异常。
- **构图**：严格对齐、统一大小和视角、易识别剪影、圆角基座/卡片、小而软的落地阴影。
- **线条**：流向实线箭头、状态/条件虚线箭头；避免箭头穿过对象或多处交叉。
- **气质**：高级、安静、友好、技术感、编辑式克制。像精心排版的发布会一页，不像操作手册拼贴。

### 4. 控制文字

优先遵循用户的明确约束：
- 用户说 **“不要任何文字”“纯图形”**：完全不出现标题、标签、字母、数字、Logo、水印；用物体形态、空间关系与箭头解释。
- 用户没有要求无字：保留一条主标题及必要标签。演示型架构图允许在关键层或核心角色旁加一条短职责说明（如“接单 · 派单 · 回传”）；这行应帮助读者理解职责。保留 A2UI、Intelligent UI、Router、Worker 等必要术语。
- 用户提供长文时：**不要把整段文章排进图片**；文字只是必要的消歧，不是主要载体。
- 若生成器中文文字稳定性欠佳，则进一步减字、用图标与后期可编辑标注代替；不要牺牲语义准确性。

### 5. 生成前校对结构，生成后检查成图

- **3 秒测试**：能否不看正文就认出关键参与者和主关系？
- **对比测试**：每一种路线真正不同的点是否在画面中可见？
- **因果测试**：箭头方向正确吗？条件变化、权限边界、控制主体有没有画反？
- **层级测试**：缩到演示文稿缩略图大小时，是否仍能认出唯一视觉重心，并区分交互层、执行层和辅助能力？标题或辅助模块是否抢了主角的分量？
- **删减测试**：删掉任何一个装饰元素，会不会更清爽？如果会，删掉。
- **一致性测试**：同一角色在不同分镜中是否同形，同一颜色是否同义？
- **约束测试**：比例/无字/节点数量/用户提供的术语是否被严格遵守？

若结果太复杂，优先减少物件、标注、卡片层数与次要场景，**不要只是缩小字体或压缩间距**。
看成图时逐条核对关键连线的起点、终点、方向和分支数量，并检查图中文字。发现主从关系、分支基数或文字错误时，修正后再交付。
要求延续画风时，将成图与选中的参考并排看，核对背景冷暖、蓝色覆盖面积、角色轮廓和比例、标题位置与辅助信息的视觉分量。若偏离，保留参考图做有针对性的编辑。

## 图像生成提示词骨架

生成图像时，按任务动态填充。不要在用户不需要时展示此内部提示词。

```text
Create ONE polished Apple-Keynote-inspired editorial 3D explainer illustration,
wide 16:9, on a warm porcelain-white background with an almost imperceptible
cool-blue gradient. Use minimalist soft-clay and matte ceramic forms, precise
rounded geometry, elegant studio lighting, delicate shadows, ample negative space,
and a restrained palette of ivory, slate-gray and soft blue.

CORE CLAIM: [one-sentence takeaway].
IMAGE INPUT: [attached reference image or edit target; which visual traits
to retain, what content to replace, and what geometry is fixed].
COMPOSITION: [reading order, focal subject and relative size, placement of
layers or groups, position of supporting capabilities].
VISUAL ENTITIES: [essential roles and the recognizable form that expresses each].
RELATIONSHIPS: [source, target, direction and one-to-one/one-to-many meaning
of each necessary connection; group related elements before adding arrows].
CRITICAL DISTINCTIONS: [the facts that must not be visually conflated].

Visual storytelling over text. Every object has a semantic purpose.
Keep silhouettes instantly recognizable. Consistent perspective, scale,
lighting, arrow design and color semantics throughout.

TEXT POLICY: [absolutely no text / exact labels and any short role descriptions].

AVOID: busy infographic dashboards, long copy, decorative filler, excessive
icons, overly glossy glassmorphism, neon, sci-fi holograms, generic blue robots,
heavy borders, crowded panels, random badges, repeated redundant scenes,
logos, watermarks and confusing arrows.
```

## 难点处理

- **深层架构图**：先确定讲的是角色分工还是事件流。归并同一职责的实现细节，仅展开会改变读者理解的权限、状态或异常路径。
- **一句话可以画清的事情**：不要做多宫格大信息图；一幅统一场景或一个三节点关系更好。
- **技术机制 + 日常隐喻**：保留技术真实关系，隐喻只做角色映射。不要因隐喻方便而改变协议、执行权或资源边界。
- **系列配图**：如需连续多张，优先固定人物/主色/俯视角度/箭头表达，以相同模板替换实体；不要每张随机重新发明风格。

## 参考资料

按需读取：
- `references/visual-system.md`：造型、材质、色彩、排版、常见失败模式。
- `references/composition-patterns.md`：针对不同信息关系的结构选择方法及三个真实题材示例。

技能包中的样图用于传递视觉特征。图中的技术名词和连线只适用于各自的题目。分层构图可结合 [架构示例](references/composition-patterns.md#d-分层架构中心协调多单元并行) 使用。
