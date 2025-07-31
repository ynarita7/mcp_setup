@echo off
REM MCPツール一括インストールスクリプト（Windows用）

echo 🔧 MCPツールをインストールします...
echo 📊 基本ツール + データ分析・機械学習ツールをセットアップします

REM Serena
echo 📦 [1/5] Serena をインストール中...
claude mcp add serena -s user -- uvx --from git+https://github.com/oraios/serena serena-mcp-server --context ide-assistant --project %cd%

REM Context7
echo 📦 [2/5] Context7 をインストール中...
claude mcp add --transport http context7 -s user https://mcp.context7.com/mcp

REM Playwright
echo 📦 [3/5] Playwright をインストール中...
claude mcp add playwright -s user -- cmd /c npx @playwright/mcp@latest

REM MongoDB Atlas (データベース連携ツール)
echo 📦 [4/5] MongoDB Atlas をインストール中...
npm install -g mcp-mongodb-atlas
claude mcp add atlas -s user -- npx mcp-mongodb-atlas

REM Pulse (データ分析・可視化ツール)
echo 📦 [5/5] Pulse をインストール中...
npm install -g @modelcontextprotocol/server
npm install -g pulse-mcp-server
claude mcp add pulse -s user -- cmd /c npx pulse-mcp-server

echo ✅ すべてのMCPツールのインストールが完了しました！
echo 🚀 Claude Codeで新しい会話を開始し、最初に以下を入力してください：
echo    /mcp__serena__initial_instructions