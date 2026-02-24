# izuno4t/homebrew-tap

`izuno4t` が提供する Homebrew Tap です。  
このリポジトリを tap することで、以下の CLI ツールを `brew` でインストールできます。

## 提供 Formula

| Formula | 説明 | 対応環境 |
| --- | --- | --- |
| `crv` | Coverage report viewer for terminals | macOS, Linux (x86_64) |
| `rurl` | Rust-based URL helper | macOS (Apple Silicon) |

注意: `rurl` は Intel macOS では利用できません。

## 前提条件

- Homebrew がインストール済みであること

Homebrew 未導入の場合は
[公式手順](https://brew.sh/)を参照してください。

## セットアップ

Tap を追加します。

```bash
brew tap izuno4t/tap
```

## インストール方法

### `crv`

```bash
brew install izuno4t/tap/crv
```

### `rurl`

```bash
brew install izuno4t/tap/rurl
```

## 動作確認

```bash
crv --version
rurl -V
```

## 更新

Tap と Formula を更新します。

```bash
brew update
brew upgrade
```

個別に更新する場合:

```bash
brew upgrade izuno4t/tap/crv
brew upgrade izuno4t/tap/rurl
```

## アンインストール

```bash
brew uninstall crv
brew uninstall rurl
```

Tap 自体を削除する場合:

```bash
brew untap izuno4t/tap
```

## トラブルシュート

- `Formula ... is unavailable` が出る:
  - `brew tap izuno4t/tap` が完了しているか確認してください。
- `rurl is not available for Intel macOS` が出る:
  - `rurl` は Intel macOS 非対応です。Apple Silicon macOS を利用してください。
