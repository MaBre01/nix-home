{ config, pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    terminal = "screen-256color";
    keyMode = "vi";
    customPaneNavigationAndResize = true; # remap to use hjkl to switch windows
    disableConfirmationPrompt = true; # don't prompt when killing pane
    historyLimit = 10000;
    clock24 = true; # 24h format

    extraConfig = ''
      set -g mouse on

      # terminal title
      set-option -g set-titles on
      set-option -g set-titles-string "#S / #W"

      # simple status line
      set-option -g status-style bg=default
      set-option -g status-justify centre
      set-option -g status-left ""
      set-option -g status-right "⧉ #S"

      # only let tmux wait 20ms for escape
      set-option -g escape-time 20

      # split above and left as in vim
      bind-key '"' split-window -vb
      bind-key % split-window -hb

      # session name was stripped as too small
      set -g status-left-length 50

      # copy to clipboard
      set -s copy-command '${pkgs.xclip}/bin/xclip -in -selection clipboard'

      # better mouse selection
      bind -T copy-mode-vi MouseDragEnd1Pane send -X copy-pipe-no-clear
      bind -T copy-mode-vi MouseDown1Pane send -X clear-selection
    '';
  };
}
