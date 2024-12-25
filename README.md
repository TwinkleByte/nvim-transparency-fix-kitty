# nvim-transparency-fix-kitty

A simple script to toggle Kitty's transparency settings when launching Neovim. It temporarily disables the `background_opacity` setting in `kitty.conf` to prevent visual issues, and restores it after exiting Neovim. The script automates the process of commenting and uncommenting the setting, and reloads Kitty's configuration to apply the changes.

# Installation
### 1. **Clone the repo**
```
git clone https://github.com/TwinkleByte/nvim-transparency-fix-kitty
cd nvim-transparency-fix-kitty/
```

### 2. **Make the Script Executable**
Run the following command to make the script executable:
```bash
chmod +x ./kitty-nvim-transparency.sh
```

### 3. **Modify Shell Configuration**
You'll need to modify your shell configuration file to create an alias for `nvim` that runs the script instead.
* I'm using ~/.local/bin/ as the directory where the script resides for the example. Put the path where you put the script in the following commands.

#### **For Bash** (`~/.bashrc`):
Open `~/.bashrc` with editor and put this:

```bash
alias nvim='~/.local/bin/kitty-nvim-transparency.sh'
```
```bash
source ~/.bashrc
```
#### **For Zsh** (`~/.zshrc`):
Open `~/.zshrc` and add the same line:
```zsh
alias nvim='~/.local/bin/kitty-nvim-transparency.sh'
```
```bash
source ~/.zshrc
```
#### **For Fish** (`~/.config/fish/config.fish`):
Open `~/.config/fish/config.fish` and add the following line:
```fish
function nvim
    ~/.local/bin/kitty-nvim-transparency.sh $argv
end
```
```fish
source ~/.config/fish/config.fish
```

Test it out by using nvim ~/.bashrc or smth

# FAQ
Kitty's background color turned solid. WHat do I do?
Its possible you closed kitty directly without closing Nvim. You didn't exit Nvim using :qa or wq or q!. Run `nvim` again and quit `nvim` to fix it. 
