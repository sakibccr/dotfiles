# My Dotfiles

This is where I keep my personal configs, managed with [chezmoi](https://www.chezmoi.io). It helps me keep my setup consistent across my machines.

### First-Time Setup

> **Heads up:** This command will overwrite any conflicting files in your home directory with the ones from this repo. Back up anything important first if you need to!

1.  **Install `chezmoi`**. Grab it from the [official site](https://www.chezmoi.io/install/).

2.  **Run this command:**

    ```bash
    chezmoi init --apply https://github.com/sakibccr/dotfiles.git
    ```

### Day-to-Day Workflow

* **Add new changes**
    
    After editing a config file, run `chezmoi add /path/to/that/file` to save the changes to the repo's source state.

    ```bash
    chezmoi add ~/.config/nvim/init.vim
    ```

* **Push the changes to the remote repo**

    Go into the `chezmoi` repo and use regular Git commands.

    ```bash
    chezmoi cd
    git add .
    git commit -m "Update some config"
    git push
    ```

* **Get the config from remote repo**

    To pull the latest changes and apply them, use this one-liner.

    ```bash
    chezmoi update
    ```

That's it.
