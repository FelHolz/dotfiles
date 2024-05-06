{ config, pkgs, ... }: {
  programs = {
    git = {
      enable = true;
      userName = "FelHolz";
      userEmail = "f.holzwarth91@gmail.com";
      ignores = [
        # Direnv
        ".direnv/"
        ".envrc"

        # VS Code
        ".vscode"

        # nix
        "result"
        "result/*"
      ];
      extraConfig = {
        pull.rebase = "false";
        init.defaultBranch = "main";
      };
    };
    vscode = { enable = true; };
  };

  home.packages = with pkgs; [ keepassxc google-chrome git ];

  home.stateVersion = "23.11";
}
