# 王冕分身 Skills（wangmian-brain + wangmian-twin）

| Skill | 中文名 | 作用 |
|-------|--------|------|
| `wangmian-brain` | 王冕的分身大脑 | OneOS 知识库检索与口径裁决 |
| `wangmian-twin` | 王冕的数字分身 | 按习惯产出需求 / UI·UX；可自我介绍 |

知识库默认解析：

1. `<当前工作区>/src/resources/oneos-knowledge-base/`
2. 回落 `/Users/sylvawong/oneos-v2/src/resources/oneos-knowledge-base/`（第二台电脑若路径不同，改 `skills/wangmian-brain/retrieval.md` 与 `skills/wangmian-twin/playbook.md`）

---

## 一键安装（推荐 · 另一台电脑复制）

先安装 [GitHub CLI](https://cli.github.com/) 并登录：`gh auth login`

### Codex（用户级，全局可用）

```bash
gh skill install 15810879921-coder/wangmian-skills --all --agent codex --scope user -f
```

装完后**重启 Codex**（或新开会话）。口令：`王冕分身大脑` / `王冕分身`，或 `$wangmian-brain` / `$wangmian-twin`。

### Cursor（用户级）

```bash
gh skill install 15810879921-coder/wangmian-skills --all --agent cursor --scope user -f
```

### 两个一起装

```bash
gh skill install 15810879921-coder/wangmian-skills --all --agent codex --scope user -f && \
gh skill install 15810879921-coder/wangmian-skills --all --agent cursor --scope user -f
```

---

## 备用：Codex 对话里用 skill-installer

在 Codex 里：

```text
$skill-installer install https://github.com/15810879921-coder/wangmian-skills/tree/main/skills/wangmian-brain
$skill-installer install https://github.com/15810879921-coder/wangmian-skills/tree/main/skills/wangmian-twin
```

或一句让 Codex 两个都装。

---

## 备用：纯 git 拷贝到 Codex skills 目录

```bash
git clone --depth 1 https://github.com/15810879921-coder/wangmian-skills.git /tmp/wangmian-skills && \
mkdir -p "${CODEX_HOME:-$HOME/.codex}/skills" && \
cp -R /tmp/wangmian-skills/skills/wangmian-brain "${CODEX_HOME:-$HOME/.codex}/skills/" && \
cp -R /tmp/wangmian-skills/skills/wangmian-twin "${CODEX_HOME:-$HOME/.codex}/skills/" && \
rm -rf /tmp/wangmian-skills
```

私有仓库请改用 SSH，或先 `gh auth login` 再：

```bash
gh repo clone 15810879921-coder/wangmian-skills /tmp/wangmian-skills
```

---

## 仓库结构

```text
skills/
  wangmian-brain/
  wangmian-twin/
```

符合 Agent Skills / `gh skill install` 的 `skills/*/SKILL.md` 约定。
