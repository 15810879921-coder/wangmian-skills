# 王冕分身 Skills（wangmian-brain + wangmian-twin）

> **王冕分身 AI Skills 官方仓库**：支持 **Cursor** 与 **Codex** 双平台一键安装 & 一键更新。

| Skill | 中文名 | 核心能力 |
|---|---|---|
| `wangmian-brain` | **王冕的分身大脑** | OneOS 知识库检索与口径裁决（省 token 优化，L0–L3 + alias 索引） |
| `wangmian-twin` | **王冕的数字分身** | 按习惯产出需求/UI·UX；**新增基于大脑与系统现网逻辑校验规则与开炮裁决能力** |

---

## 🚀 终端一键安装 / 一键更新（推荐）

直接在终端（Mac/Linux）运行以下命令，即可自动安装/更新至 **Cursor** (`~/.cursor/skills/`) 和 **Codex** (`~/.codex/skills/`)：

```bash
curl -fsSL https://raw.githubusercontent.com/15810879921-coder/wangmian-skills/main/install.sh | bash
```

---

## 🤖 丢给 Cursor / Codex AI 一键执行

在 Cursor 或 Codex 的对话框中，直接把下面这句话复制发给 AI Agent 即可：

```text
请执行 Shell 命令进行王冕分身 Skills 的一键安装/更新：
curl -fsSL https://raw.githubusercontent.com/15810879921-coder/wangmian-skills/main/install.sh | bash
```

---

## 🛠️ 其他方式

### 方式 A：GitHub CLI (`gh`)

```bash
# 部署到 Cursor
gh skill install 15810879921-coder/wangmian-skills --all --agent cursor --scope user -f

# 部署到 Codex
gh skill install 15810879921-coder/wangmian-skills --all --agent codex --scope user -f

# 两个一起部署
gh skill install 15810879921-coder/wangmian-skills --all --agent codex --scope user -f && \
gh skill install 15810879921-coder/wangmian-skills --all --agent cursor --scope user -f
```

### 方式 B：纯 Git 手动更新

```bash
git clone --depth 1 https://github.com/15810879921-coder/wangmian-skills.git /tmp/wangmian-skills && \
mkdir -p ~/.cursor/skills ~/.codex/skills && \
cp -R /tmp/wangmian-skills/skills/wangmian-brain ~/.cursor/skills/ && \
cp -R /tmp/wangmian-skills/skills/wangmian-twin ~/.cursor/skills/ && \
cp -R /tmp/wangmian-skills/skills/wangmian-brain ~/.codex/skills/ && \
cp -R /tmp/wangmian-skills/skills/wangmian-twin ~/.codex/skills/ && \
rm -rf /tmp/wangmian-skills
```

---

## 📌 链接

- **GitHub 仓库**：[https://github.com/15810879921-coder/wangmian-skills](https://github.com/15810879921-coder/wangmian-skills)
- **一键安装脚本**：[https://raw.githubusercontent.com/15810879921-coder/wangmian-skills/main/install.sh](https://raw.githubusercontent.com/15810879921-coder/wangmian-skills/main/install.sh)
- **大脑 Skill**：`skills/wangmian-brain`
- **分身 Skill**：`skills/wangmian-twin`

---

## 💡 使用说明

安装或更新后，请**新开 Chat** 即可加载生效。
- 唤醒口令：`王冕分身` / `$wangmian-twin` / `王冕分身大脑` / `$wangmian-brain`
