# 王冕驱动 Skills（言出法随 + 法眼如炬）

> 官方仓库：支持 **Cursor** 与 **Codex** 一键安装 / 更新。  
> 签名：**王冕驱动 · 言出法随** / **王冕驱动 · 法眼如炬**

| Skill | 花名 | 当前能力要点 |
|---|---|---|
| `yanchufasui` | 言出法随 | **瘦启动**只读 `boot.md`；按本尊习惯落需求/改原型；**闭环五件套**；内嵌法眼；租赁对齐 v2.5.8f；写云效前确认 |
| `fayanruju` | 法眼如炬 | KB 窄检索裁决 + **闭环五件套** + 租赁 **v2.5.8f** digest；不改原型 |
| `wangmian-twin` | （兼容 stub） | 已更名 → 转读 `yanchufasui` |
| `wangmian-brain` | （兼容 stub） | 已更名 → 转读 `fayanruju` |

---

## 一键安装 / 更新

```bash
curl -fsSL https://raw.githubusercontent.com/15810879921-coder/wangmian-skills/main/install.sh | bash
```

或分别用 npx：

```bash
npx skills add 15810879921-coder/wangmian-skills --skill yanchufasui -a cursor -a codex -g -y
npx skills add 15810879921-coder/wangmian-skills --skill fayanruju -a cursor -a codex -g -y
```

装完请**新开 Chat**。

- 分身口令：`言出法随` / `$yanchufasui` / `/yanchufasui`
- 法眼口令：`法眼如炬` / `$fayanruju` / `/fayanruju`
- 旧口令 `王冕分身` / `$wangmian-twin`、`分身大脑` / `$wangmian-brain` 仍兼容

---

## 提速说明（瘦启动）

言出法随唤醒后**只强制读** `skills/yanchufasui/boot.md`，不再默认六连读 habits / playbook / profile 等。按题型升档；研发规则口径题优先走法眼如炬。安装脚本冒烟测试默认跳过，需要时 `RUN_SMOKE=1 bash install.sh`。

---

## 链接

- 仓库：https://github.com/15810879921-coder/wangmian-skills
- 安装中心：https://15810879921-coder.github.io/oneos-pm-skills/
- **同事使用说明**：[`同事使用说明.md`](./同事使用说明.md)
- **更新日志（能力+性能）**：[`更新日志.md`](./更新日志.md)
- 言出法随细日志：`skills/yanchufasui/CHANGELOG.md`
- 法眼如炬细日志：`skills/fayanruju/CHANGELOG.md`
