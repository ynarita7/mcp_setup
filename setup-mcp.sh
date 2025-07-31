#!/bin/bash
# MCPツール一括インストールスクリプト

echo "🔧 MCPツールをインストールします..."
echo "📊 基本ツール + データ分析・機械学習ツールをセットアップします"

# Serena
echo "📦 [1/5] Serena をインストール中..."
claude mcp add serena -s user -- uvx --from git+https://github.com/oraios/serena serena-mcp-server --context ide-assistant --project $(pwd)

# Context7
echo "📦 [2/5] Context7 をインストール中..."
claude mcp add --transport http context7 -s user https://mcp.context7.com/mcp

# Playwright
echo "📦 [3/5] Playwright をインストール中..."
claude mcp add playwright -s user -- npx @playwright/mcp@latest

# MongoDB Atlas (データベース連携ツール)
echo "📦 [4/5] MongoDB Atlas をインストール中..."
npm install -g mcp-mongodb-atlas
claude mcp add atlas -s user -- npx mcp-mongodb-atlas

# Pulse (データ分析・可視化ツール)
echo "📦 [5/5] Pulse をインストール中..."
npm install -g @modelcontextprotocol/server
npm install -g pulse-mcp-server
claude mcp add pulse -s user -- npx pulse-mcp-server

echo "✅ すべてのMCPツールのインストールが完了しました！"
echo "🚀 Claude Codeで新しい会話を開始し、最初に以下を入力してください："
echo "   /mcp__serena__initial_instructions"