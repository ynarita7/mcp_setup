# Claude Code MCP セットアップガイド

Claude Codeの強力なMCPツールを簡単にセットアップするためのリポジトリです。

## 🔧 セットアップ方法

### 1. リポジトリをクローン

```bash
git clone https://github.com/ynarita7/mcp_setup.git
cd mcp_setup
```

### 2. MCPツールをインストール

**Mac/Linux:**

```bash
chmod +x setup-mcp.sh
./setup-mcp.sh
```

**Windows:**

```bash
setup-mcp.bat
```

これで以下の3つのMCPツールがインストールされます：

- **Serena** - コード検索・編集
- **Context7** - 最新ドキュメント取得
- **Playwright** - ブラウザ自動化

## 🚀 使い方

1. **新しい会話を開始する**
   - Claude Codeで新しい会話を開始
   - 最初のメッセージとして以下を入力:

   ```
   /mcp__serena__initial_instructions
   ```

2. **作業開始**
   - 例: 「ユーザー認証機能を実装して」
   - 例: 「このコードのバグを修正して」

## 📋 使用例

```
あなた: /mcp__serena__initial_instructions

Claude: Serenaの初期設定を読み込みました。

あなた: このプロジェクトのUser認証部分を改善したい

Claude: Serenaを使ってUser認証関連のコードを検索し、
       Context7で最新のJWT実装方法を確認して、
       改善案を提示します。
```

## 📄 プロジェクトに含まれるファイル

- `CLAUDE.md` - Claude Codeの動作設定ファイル（プロジェクトのルートに配置）
- `setup-mcp.sh` - Mac/Linux用セットアップスクリプト
- `setup-mcp.bat` - Windows用セットアップスクリプト

## ⚠️ 注意点

- Serenaは新しい会話ごとに初期設定が必要です
- MCPツールは一度インストールすれば、すべてのプロジェクトで使えます（`-s user`オプションのため）
- MCPツールのエラーが発生した場合は、`/mcp restart [tool-name]`で再起動できます