<img src="https://github.com/crshmk/neovim-config/blob/master/example.png" width="700" />

---

### Mac setup
- `brew install neovim`
- install [iterm2](https://iterm2.com/); use for everything relevant below
- clone this repo as `/Users/username/.config/nvim`
- install font/icons
  - [download](https://www.nerdfonts.com/font-downloads) a nerd font collection to `/Users/username/.local/share/fonts/fontname`, e.g. `/Users/chris/.local/share/fonts/Hack`
  - open each font in the collection with font book and install 
  - open `iterm2` preferences and select the font group (e.g. Hack mono) from profiles -> Default -> text
- install package manager and dependencies 
  - [clone to install packer](https://github.com/wbthomason/packer.nvim#quickstart)
  - rename `after/plugin` folder to anything else so that neovim doesn't break on init
  - open `packer.lua` - `nvim /Users/username/.config/nvim/lua/chris/packer.lua` and install packages with the following two commands in command mode
    - `so`
    - `PackerSync`
  - fix `after/plugin` folder name 
- `nvim .`

