# My Dotfiles

This repository contains my personal dotfiles, managed with the help of **[chezmoi](https://www.chezmoi.io)**. Chezmoi simplifies the process of synchronizing configuration files across multiple machines.

---

### 🚀 Quick Start on a New Machine

To install chezmoi and get started with my dotfiles on a new system, follow these steps.

1.  **Install chezmoi:**
    First, install `chezmoi` by following the [official installation instructions](https://www.chezmoi.io/install/).

2.  **Initialize and Apply:**
    Once `chezmoi` is installed, run the following command to clone this repository and apply the dotfiles to your system.

    ```bash
    chezmoi init --apply [https://github.com/sakibccr/dotfiles.git](https://github.com/sakibccr/dotfiles.git)
    ```

    *This command will set up a local Git repository with the dotfiles and then immediately apply them to your home directory.*

---
### 📝 Day-to-Day Workflow

This section outlines the common commands for managing your dotfiles after the initial setup.

* **Record local changes to the source repo:**
    After making a change to a managed dotfile in your home directory, use `chezmoi add` to update `chezmoi`'s source state. This command is also used for adding new files for the first time.

    ```bash
    chezmoi add ~/.config/nvim/init.vim
    ```
    *(Remember to specify the full path to the file you changed.)*

* **View pending changes:**
    Before committing, it's a good habit to check what changes `chezmoi` will make. This command shows the difference between the source state and your home directory.

    ```bash
    chezmoi diff
    ```

* **Commit and Push to GitHub:**
    Once your local changes are recorded in the source state, commit and push them to your remote repository.

    ```bash
    chezmoi cd
    git add .
    git commit -m "feat: update Neovim config"
    git push
    ```

    *(**Pro-tip:** Consider using conventional commit messages like "feat:", "fix:", or "chore:" for a cleaner commit history.)*

* **Pull and apply remote changes:**
    On another machine, to get the latest changes from your repository and apply them to your system, run:

    ```bash
    chezmoi update
    ```
    *This single command performs both a `git pull` and a `chezmoi apply`, simplifying the update process.*
---

### 📖 Learn More

* **[Official Chezmoi Website](https://www.chezmoi.io)**
* **[Chezmoi Reference Manual](https://www.chezmoi.io/reference/commands/)**
