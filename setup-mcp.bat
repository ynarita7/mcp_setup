@echo off
REM MCPツール一括インストールスクリプト（Windows用）

echo 🔧 MCPツールをインストールします...

REM Serena
echo 📦 [1/3] Serena をインストール中...
claude mcp add serena -s user -- uvx --from git+https://github.com/oraios/serena serena-mcp-server --context ide-assistant --project %cd%

REM Context7
echo 📦 [2/3] Context7 をインストール中...
claude mcp add --transport http context7 -s user https://mcp.context7.com/mcp

REM Playwright
echo 📦 [3/3] Playwright をインストール中...
claude mcp add playwright -s user -- cmd /c npx @playwright/mcp@latest

echo ✅ すべてのMCPツールのインストールが完了しました！
echo 🚀 Claude Codeで新しい会話を開始し、最初に以下を入力してください：
echo    /mcp__serena__initial_instructions