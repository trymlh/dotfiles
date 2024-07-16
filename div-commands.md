# Development Commands Reference

## Git Commands

### Basic Git Commands
- **Initialize a new Git repository:**
  ```bash
  git init
````

- **Clone a repository:**
  ```bash
  git clone <repository_url>
  ```

- **Add changes to staging:**
  ```bash
  git add <file_or_directory>
  ```

- **Commit changes:**
  ```bash
  git commit -m "Commit message"
  ```

- **Push changes to remote repository:**
  ```bash
  git push origin main
  ```

- **Pull changes from remote repository:**
  ```bash
  git pull origin main
  ```

### Commands Used to Create Dotfiles Repo

- **Create a directory for dotfiles:**
  ```bash
  mkdir ~/dotfiles
  ```

- **Navigate to the dotfiles directory:**
  ```bash
  cd ~/dotfiles
  ```

- **Initialize a new Git repository:**
  ```bash
  git init
  ```

- **Create a new GitHub repository using GitHub CLI:**
  ```bash
  gh repo create dotfiles --public --description "My configuration files" --clone
  ```

- **Move dotfiles to the repository:**
  ```bash
  mv ~/.bashrc ~/.vimrc ~/.gitconfig ~/dotfiles
  ```

- **Add files to the repository:**
  ```bash
  git add .bashrc .vimrc .gitconfig
  ```

- **Create a .gitignore file (optional):**
  ```bash
  echo ".DS_Store" >> .gitignore
  echo ".Trash" >> .gitignore
  git add .gitignore
  git commit -m "Add .gitignore file"
  ```

- **Commit the changes:**
  ```bash
  git commit -m "Add initial dotfiles"
  ```

- **Push changes to GitHub:**
  ```bash
  git push -u origin main
  ```

- **Check the status of the repository:**
  ```bash
  git status
  ```

- **Undo the last commit (keep changes):**
  ```bash
  git reset --soft HEAD~1
  ```

- **Undo the last commit (discard changes):**
  ```bash
  git reset --hard HEAD~1
  ```

### Advanced Git Commands

- **Interactive rebase to modify commits:**
  ```bash
  git rebase -i HEAD~n
  ```

## Docker Commands

### Basic Docker Commands

- **Build an image from a Dockerfile:**
  ```bash
  docker build -t <image_name> .
  ```

- **Run a container from an image:**
  ```bash
  docker run -d -p 80:80 <image_name>
  ```

- **List all running containers:**
  ```bash
  docker ps
  ```

### Advanced Docker Commands

- **Stop a running container:**
  ```bash
  docker stop <container_id>
  ```

- **Remove a container:**
  ```bash
  docker rm <container_id>
  ```

## Kubernetes Commands

### Basic kubectl Commands

- **Get all pods:**
  ```bash
  kubectl get pods
  ```

- **Get services:**
  ```bash
  kubectl get svc
  ```

- **Apply configuration from a file:**
  ```bash
  kubectl apply -f <file.yaml>
  ```

## Other Useful Commands

### SSH Commands

- **Generate a new SSH key:**
  ```bash
  ssh-keygen -t ed25519 -C "your_email@example.com"
  ```

- **Add SSH key to the ssh-agent:**
  ```bash
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/id_ed25519
  ```

### Miscellaneous Commands

- **Check disk space usage:**
  ```bash
  df -h
  ```

- **List open network ports:**
  ```bash
  netstat -tuln
  ```

## System Monitoring Commands

### CPU and Memory Usage

- **Display CPU usage:**
  ```bash
  top
  ```

- **Display memory usage:**
  ```bash
  free -h
  ```

## Aliases (for `.bashrc` or `.zshrc`)

- **Alias to update and upgrade Ubuntu:**
  ```bash
  alias update='sudo apt-get update && sudo apt-get upgrade -y'
  ```

- **Alias for a quick Git status:**
  ```bash
  alias gs='git status'
  ```

- **Alias to clear the terminal:**
  ```bash
  alias cls='clear'
  ```

```

### Summary

This `div-commands.md` file includes the commands you used to set up and manage your dotfiles repository, along with additional useful commands. You can expand this file further as needed to include other commands and configurations you frequently use. Storing this file in your `dotfiles` repository ensures that you have a handy reference for your development workflow.

```
