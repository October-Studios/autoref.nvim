<h1 align="center">
  <img
    src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png"
    height="30"
    width="0px"
  />
  📖autoref.nvim
  <img
    src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png"
    height="30"
    width="0px"
  />
</h1>

<p align="center">
  <a href="https://github.com/October-Studios/autoref.nvim/stargazers">
    <img
      alt="Stargazers"
      src="https://img.shields.io/github/stars/October-Studios/autoref.nvim?style=for-the-badge&logo=starship&color=c678dd&logoColor=d9e0ee&labelColor=282a36"
    />
  </a>
  <a href="https://github.com/October-Studios/autoref.nvim/releases/latest">
    <img
      alt="Releases"
      src="https://img.shields.io/github/release/October-Studios/autoref.nvim.svg?style=for-the-badge&include_prereleases&logo=github&color=F2CDCD&logoColor=d9e0ee&labelColor=282a36"
    />
  </a>
  <a href="https://github.com/October-Studios/autoref.nvim/issues">
    <img
      alt="Issues"
      src="https://img.shields.io/github/issues/October-Studios/autoref.nvim?style=for-the-badge&logo=gitbook&color=f0c062&logoColor=d9e0ee&labelColor=282a36"
    />
  </a>
  <a href="https://github.com/October-Studios/autoref.nvim/contributors">
    <img
      alt="Contributors"
      src="https://img.shields.io/github/contributors/October-Studios/autoref.nvim?style=for-the-badge&logo=opensourceinitiative&color=abcf84&logoColor=d9e0ee&labelColor=282a36"
    />
  </a>
</p>

&nbsp;

## 💭 About

autoref creates a key map reference from all installed plugins

## ⚙️ Setup

- [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'October-Studios/autoref.nvim'
```

- [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use('October-Studios/autoref.nvim')
```

## ▶️ Usage

### Default configuration

```lua
require('autoref').setup
```

Currently, this plugin only supports 5 color schemes in the configuration file.

If you want to get your current autoref config, you can do so with:

```lua
require('autoref').get_config()
```

---

### Starting autoref

```lua
require('autoref').setup()
```

&nbsp;

<p align="center">
  Copyright &copy; 2022-present
  <a href="https://github.com/October-Studios" target="_blank">October Studios</a>
</p>
<p align="center">
  <a href="https://github.com/October-Studios/autoref.nvim/blob/main/LICENSE"
    ><img
      src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=282a36&colorB=c678dd"
  /></a>
</p>
