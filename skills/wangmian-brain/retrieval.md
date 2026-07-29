# 分身大脑 · 检索协议（retrieval）

## KB 根路径（按序取第一个存在的）

1. `<当前工作区>/src/resources/oneos-knowledge-base/`
2. `/Users/sylvawong/oneos-v2/src/resources/oneos-knowledge-base/`
3. 均无 → 告知本尊缺库；可提示同源 zip：`oneos-v2/src/resources/oneos-knowledge-base 2.zip`；**不要瞎全仓扫**

## 窄读顺序（强制）

| 步 | 动作 |
|----|------|
| 0 | 需要时扫一眼 `README.md` 冲突裁决摘要 |
| 1 | 读 `machine/kb-manifest.json`，用关键词 / 条线 / 模块名定位 `id` |
| 2 | 读对应 `modules/<id>.md`；机读可辅以 `machine/rules/<id>.json` |
| 3 | 跨切：`00-cross-cutting-rules.md`；业财类必加 `foundations/biz-finance-integration.md` |
| 4 | 条线总述：`lines/<line>.md`；底座：`foundations/*`；平台：`platform/*`（按需） |
| 5 | 对外应答口径：`00-digital-employee-voice.md`（仅「对一线用户」场景） |
| 6 | 现网补强：当前仓原型 `.spec/requirements-prd.md` / `src/resources/prd/*-autoprd.md`（若存在且更新） |

## 冲突裁决（与 KB README 对齐）

1. 中期闭环与**最新 AutoPRD**优先  
2. **业财资金闭环与门禁** → `foundations/biz-finance-integration`（王冕规划基准）  
3. V1.2 操作细节 → Desktop `web端`（见 `00-source-corpus.md` / mapping）  
4. 氢费「核对 ≠ 对账」→ V2 现行  
5. 未来版本 / 试验页 → 不作现网强验收；未拍板项标 `待拍板`  

## 业财类默认检索

1. `foundations/biz-finance-integration.md` + `machine/rules/biz-finance-integration.json`  
2. 相关模块卡（提车应收、租赁台账、还车、客户、付款、保险、供应商等）  
3. 人读全文（对内）：`src/resources/业财一体化全链条方案-汇报稿.md`  

## 大脑答复包模板

```markdown
## 大脑答复
**结论：** …
**引用：** `modules/xxx.md`（confidence: …）· …
**裁决：** …
**缺口 / 待拍板：** …
**给分身落需求的边界建议：** 做什么 / 不做什么（各 1～3 条）
```

## 禁止

- 一次读完整个 `modules/`
- 把 `__MACOSX` / zip 内垃圾路径当语料
- 对终端用户朗读仓库绝对路径、confidence 字段名（对内给本尊/分身可以）
