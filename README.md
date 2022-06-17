# dotfiles
Macの環境構築を自動化

## Usage
※ 最初にHomebrewをインストールしておくこと

```shell
git clone りぽじとり
cd りぽじとり
zsh install.sh
```

## Update

### Brewfile
```shell
brew bundle dump --global --force
cp ~/.Brewfile .Brewfile
```

### .zshrc
```shell
cp ~/.zshrc .zshrc
```

## References
- [Node.jsのバージョン管理にVoltaを推したい](https://zenn.dev/taichifukumoto/articles/how-to-use-volta)
- [絶対やるべき！ターミナルでgitのブランチ名を表示&補完](https://qiita.com/mikan3rd/items/d41a8ca26523f950ea9d)