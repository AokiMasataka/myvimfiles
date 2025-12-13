# install plugins

```
:PlugInstall
```

# Python環境構築

## デフォルトのjedaiのセットアップ

```
cd ~/.config/nvim
python -m venv lsp_env
./lsp_env/bin/python -m pip install jedi-language-server
```

## プロジェクトごとのセットアップ

```
cd your/project
mkdir .vim
touch .vim/coc-settings.json
```

```
# coc-settings.json
{
  "jedi": {
    "extraPaths": [
      "./.venv/lib/pythonX.Y/site-packages" 
    ]
  }
}
```
