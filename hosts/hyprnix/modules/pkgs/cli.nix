{ pkgs, ... }:
{

  # Cli tools.
  programs.zsh.enable = true;
  programs.zsh.promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
  programs.neovim.enable = true;
  programs.bat.enable = true;
  programs.lazygit.enable = true;

  # fzf.
  programs.fzf.keybindings = true;
  programs.fzf.fuzzyCompletion = true;

  environment.systemPackages = with pkgs; [
    atuin
    caligula
    curl
    distrobox
    eza
    fastfetch
    fd
    fzf
    git
    htop
    jq
    poppler
    ripgrep
    stow
    tealdeer
    tmux
    trash-cli
    unzip
    uv
    wget
    xdg-utils
    yazi
    yt-dlp
    zip
    zoxide
    zsh-powerlevel10k
  ];
}
