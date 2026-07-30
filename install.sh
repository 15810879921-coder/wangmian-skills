#!/usr/bin/env bash
set -e

# ===================================================
# 王冕分身 Skills（wangmian-brain + wangmian-twin）
# 一键安装 / 一键更新脚本 (支持 Cursor & Codex)
# ===================================================

echo "🚀 开始安装 / 更新 王冕分身 Skills (wangmian-brain & wangmian-twin)..."

TMP_DIR="/tmp/wangmian-skills-installer-$$"
mkdir -p "$TMP_DIR"

cleanup() {
    rm -rf "$TMP_DIR"
}
trap cleanup EXIT

REPO_URL="https://github.com/15810879921-coder/wangmian-skills.git"

echo "📥 正在拉取最新代码 ($REPO_URL)..."
git clone --depth 1 "$REPO_URL" "$TMP_DIR/repo" >/dev/null 2>&1 || {
    echo "❌ 克隆仓库失败，请检查网络或 GitHub 访问权限。"
    exit 1
}

CURSOR_SKILLS_DIR="$HOME/.cursor/skills"
CODEX_SKILLS_DIR="$HOME/.codex/skills"

install_to_agent() {
    local target_base="$1"
    local agent_name="$2"

    echo "⚙️ 正在部署到 $agent_name ($target_base)..."
    mkdir -p "$target_base"

    # 安装/更新 wangmian-brain
    if [ -d "$TMP_DIR/repo/skills/wangmian-brain" ]; then
        rm -rf "$target_base/wangmian-brain"
        cp -R "$TMP_DIR/repo/skills/wangmian-brain" "$target_base/"
        echo "  ✅ wangmian-brain 已安装/更新至 $target_base/wangmian-brain"
    fi

    # 安装/更新 wangmian-twin
    if [ -d "$TMP_DIR/repo/skills/wangmian-twin" ]; then
        rm -rf "$target_base/wangmian-twin"
        cp -R "$TMP_DIR/repo/skills/wangmian-twin" "$target_base/"
        echo "  ✅ wangmian-twin 已安装/更新至 $target_base/wangmian-twin"
    fi
}

# 1. 部署 Cursor
install_to_agent "$CURSOR_SKILLS_DIR" "Cursor"

# 2. 部署 Codex
install_to_agent "$CODEX_SKILLS_DIR" "Codex"

# 3. 运行冒烟测试（若有）
if command -v python3 >/dev/null 2>&1 && [ -f "$CURSOR_SKILLS_DIR/wangmian-brain/scripts/smoke-system-qa.py" ]; then
    echo "🧪 正在执行冒烟测试..."
    python3 "$CURSOR_SKILLS_DIR/wangmian-brain/scripts/smoke-system-qa.py" || true
fi

echo ""
echo "🎉 安装/更新完成！"
echo "👉 请在 Cursor 或 Codex 中【新开 Chat】即可立即使用。"
echo "👉 唤醒口令：王冕分身 / $wangmian-twin / 王冕分身大脑 / $wangmian-brain"
