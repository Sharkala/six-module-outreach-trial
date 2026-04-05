#!/bin/bash
# 配置检查脚本

echo "=== 六模块客户开发 - 配置检查 ==="
echo ""

# 检查 Serper API
if [ -n "$SERPER_API_KEY" ]; then
    echo "✅ Serper API Key: 已配置"
else
    echo "❌ Serper API Key: 未配置"
fi

# 检查 Resend API
if [ -n "$RESEND_API_KEY" ]; then
    echo "✅ Resend API Key: 已配置"
else
    echo "❌ Resend API Key: 未配置"
fi

# 检查 OpenClaw Cron
if command -v openclaw &> /dev/null; then
    echo "✅ OpenClaw Cron: 可用"
else
    echo "⚠️ OpenClaw Cron: 未安装"
fi

# 检查飞书
if [ -f ~/.openclaw/openclaw.json ]; then
    if grep -q "feishu" ~/.openclaw/openclaw.json 2>/dev/null; then
        echo "✅ 飞书配置: 已配置"
    else
        echo "⚠️ 飞书配置: 未配置（可选）"
    fi
else
    echo "⚠️ 飞书配置: 未配置（可选）"
fi

echo ""
echo "=== 检查完成 ==="
