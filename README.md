# 王冕分身 Skills（wangmian-brain + wangmian-twin）

| Skill | 中文名 | 版本要点 | 作用 |
|-------|--------|----------|------|
| `wangmian-brain` | 王冕的分身大脑 | **v1.1** 省 token（L0–L3 + alias 索引） | OneOS 知识库检索与口径裁决 |
| `wangmian-twin` | 王冕的数字分身 | — | 按习惯产出需求 / UI·UX；可自我介绍 |

知识库默认解析：

1. `<当前工作区>/src/resources/oneos-knowledge-base/`（需含 `machine/kb-alias-index.tsv`）
2. 回落 `/Users/sylvawong/oneos-v2/src/resources/oneos-knowledge-base/`

---

## 丢给 AI 一句话安装 / 更新（推荐）

把下面整段复制进 Cursor / Codex 对话即可：

```text
请安装或更新我的 Cursor 用户级 Skill：从 https://github.com/15810879921-coder/wangmian-skills 拉取 skills/wangmian-brain（v1.1）到 ~/.cursor/skills/wangmian-brain/，覆盖已有文件；装完后用 python3 ~/.cursor/skills/wangmian-brain/scripts/smoke-system-qa.py 冒烟，并把结果告诉我。
```

只装大脑：

```text
$skill-installer install https://github.com/15810879921-coder/wangmian-skills/tree/main/skills/wangmian-brain
```

大脑 + 分身：

```text
$skill-installer install https://github.com/15810879921-coder/wangmian-skills/tree/main/skills/wangmian-brain
$skill-installer install https://github.com/15810879921-coder/wangmian-skills/tree/main/skills/wangmian-twin
```

---

## CLI 一键安装

先安装 [GitHub CLI](https://cli.github.com/) 并登录：`gh auth login`

### Cursor（用户级）

```bash
gh skill install 15810879921-coder/wangmian-skills --all --agent cursor --scope user -f
```

### Codex（用户级）

```bash
gh skill install 15810879921-coder/wangmian-skills --all --agent codex --scope user -f
```

### 两个一起

```bash
gh skill install 15810879921-coder/wangmian-skills --all --agent codex --scope user -f && \
gh skill install 15810879921-coder/wangmian-skills --all --agent cursor --scope user -f
```

### 备用纯 git

```bash
git clone --depth 1 https://github.com/15810879921-coder/wangmian-skills.git /tmp/wangmian-skills && \
mkdir -p ~/.cursor/skills && \
rm -rf ~/.cursor/skills/wangmian-brain && \
cp -R /tmp/wangmian-skills/skills/wangmian-brain ~/.cursor/skills/ && \
rm -rf /tmp/wangmian-skills && \
python3 ~/.cursor/skills/wangmian-brain/scripts/smoke-system-qa.py
```

装完后**新开 Chat**。口令：`王冕分身大脑` / `$wangmian-brain`。

---

## 链接

| 项 | URL |
|----|-----|
| 仓库 | https://github.com/15810879921-coder/wangmian-skills |
| 大脑目录 | https://github.com/15810879921-coder/wangmian-skills/tree/main/skills/wangmian-brain |
| 分身目录 | https://github.com/15810879921-coder/wangmian-skills/tree/main/skills/wangmian-twin |
| Release（若有） | https://github.com/15810879921-coder/wangmian-skills/releases |

---

## 仓库结构

```text
skills/
  wangmian-brain/   # v1.1
  wangmian-twin/
```
