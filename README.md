<h1 align="center">
  <img
    src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png"
    height="30"
    width="0px"
  />
  🎨color-roulette.nvim
  <img
    src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png"
    height="30"
    width="0px"
  />
</h1>

<p align="center">
  <a href="https://github.com/October-Studios/color-roulette.nvim/stargazers">
    <img
      alt="Stargazers"
      src="https://img.shields.io/github/stars/October-Studios/color-roulette.nvim?style=for-the-badge&logo=starship&color=c678dd&logoColor=d9e0ee&labelColor=282a36"
    />
  </a>
  <a href="https://github.com/October-Studios/color-roulette.nvim/releases/latest">
    <img
      alt="Releases"
      src="https://img.shields.io/github/release/October-Studios/color-roulette.nvim.svg?style=for-the-badge&include_prereleases&logo=github&color=F2CDCD&logoColor=d9e0ee&labelColor=282a36"
    />
  </a>
  <a href="https://github.com/October-Studios/color-roulette.nvim/issues">
    <img
      alt="Issues"
      src="https://img.shields.io/github/issues/October-Studios/color-roulette.nvim?style=for-the-badge&logo=gitbook&color=f0c062&logoColor=d9e0ee&labelColor=282a36"
    />
  </a>
  <a href="https://github.com/October-Studios/color-roulette.nvim/contributors">
    <img
      alt="Contributors"
      src="https://img.shields.io/github/contributors/October-Studios/color-roulette.nvim?style=for-the-badge&logo=opensourceinitiative&color=abcf84&logoColor=d9e0ee&labelColor=282a36"
    />
  </a>
</p>

&nbsp;

## 💭 About

color-roulette takes in a configuration file with the user's favorite neovim color schemes and randomly chooses from this list with each neovim session.

## ⚙️ Setup

- [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'October-Studios/color-roulette.nvim'
```

- [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use('October-Studios/color-roulette.nvim')
```

## ▶️ Usage

### Default configuration

```lua
require('color-roulette').setup {
  colorschemes = {
    scheme_1 = 'ron',
    scheme_2 = 'ron',
    scheme_3 = 'ron',
    scheme_4 = 'ron',
    scheme_5 = 'ron',
  },
}
```

Currently, this plugin only supports 5 color schemes in the configuration file.

If you want to get your current color-roulette config, you can do so with:

```lua
require('color-roulette').get_config()
```

---

### Starting color-roulette

```lua
require('color-roulette').setup()
```

&nbsp;

<p align="center">
  Copyright &copy; 2022-present
  <a href="https://github.com/October-Studios" target="_blank">October Studios</a>
</p>
<p align="center">
  <a href="https://github.com/October-Studios/color-roulette.nvim/blob/main/LICENSE"
    ><img
      src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=282a36&colorB=c678dd"
  /></a>
</p>
