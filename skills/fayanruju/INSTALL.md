# 安装 / 更新 法眼如炬（fayanruju）

1. 解压更新包，得到 `fayanruju/` 目录
2. 放到：`~/.codex/skills/fayanruju/`
3. Cursor 侧建议 symlink：`ln -s ~/.codex/skills/fayanruju ~/.cursor/skills/fayanruju`
4. **新开 Cursor Chat**，Skills 选 `fayanruju` 或口令 `$fayanruju` / `法眼如炬`
5. 知识库仍依赖工作区：`src/resources/oneos-knowledge-base/`（含 `machine/kb-alias-index.tsv`）
6. 可选冒烟：`python3 ~/.codex/skills/fayanruju/scripts/smoke-system-qa.py`
7. 旧入口：`wangmian-brain` 仅为兼容 stub，会转读本 Skill
