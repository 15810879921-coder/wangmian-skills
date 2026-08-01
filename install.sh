#!/usr/bin/env bash
set -e

# ===================================================
# 王冕驱动 Skills（言出法随 yanchufasui + 法眼如炬 fayanruju）
# 一键安装 / 一键更新脚本 (支持 Cursor & Codex)
# 兼容旧名：wangmian-twin / wangmian-brain（stub）
# ===================================================

echo "开始安装 / 更新：言出法随 (yanchufasui) + 法眼如炬 (fayanruju)..."

TMP_DIR="/tmp/wangmian-skills-installer-$$"
mkdir -p "$TMP_DIR"

cleanup() {
    rm -rf "$TMP_DIR"
}
trap cleanup EXIT

REPO_URL="https://github.com/15810879921-coder/wangmian-skills.git"

echo "正在拉取最新代码 ($REPO_URL)..."
git clone --depth 1 "$REPO_URL" "$TMP_DIR/repo" >/dev/null 2>&1 || {
    echo "克隆仓库失败，请检查网络或 GitHub 访问权限。"
    exit 1
}

CURSOR_SKILLS_DIR="$HOME/.cursor/skills"
CODEX_SKILLS_DIR="$HOME/.codex/skills"

install_skill() {
    local target_base="$1"
    local skill_name="$2"
    if [ -d "$TMP_DIR/repo/skills/$skill_name" ]; then
        rm -rf "$target_base/$skill_name"
        cp -R "$TMP_DIR/repo/skills/$skill_name" "$target_base/"
        echo "  ✅ $skill_name → $target_base/$skill_name"
    fi
}

install_to_agent() {
    local target_base="$1"
    local agent_name="$2"

    echo "正在部署到 $agent_name ($target_base)..."
    mkdir -p "$target_base"

    # 主 skill
    install_skill "$target_base" "yanchufasui"
    install_skill "$target_base" "fayanruju"
    # 旧名兼容 stub
    install_skill "$target_base" "wangmian-twin"
    install_skill "$target_base" "wangmian-brain"
}

install_to_agent "$CURSOR_SKILLS_DIR" "Cursor"
install_to_agent "$CODEX_SKILLS_DIR" "Codex"

# 冒烟默认跳过；需要时：RUN_SMOKE=1 bash install.sh
if [ "${RUN_SMOKE:-0}" = "1" ] && command -v python3 >/dev/null 2>&1 && [ -f "$CURSOR_SKILLS_DIR/fayanruju/scripts/smoke-system-qa.py" ]; then
    echo "正在执行法眼冒烟测试..."
    python3 "$CURSOR_SKILLS_DIR/fayanruju/scripts/smoke-system-qa.py" || true
fi

echo ""
echo "安装/更新完成！"
echo "请在 Cursor 或 Codex 中【新开 Chat】再喊口令。"
echo "主唤名：言出法随 / \$yanchufasui ；法眼如炬 / \$fayanruju"
echo "签名：王冕驱动 · 言出法随 / 王冕驱动 · 法眼如炬"
echo "旧口令 wangmian-twin / wangmian-brain 仍兼容（会转读新 Skill）。"
