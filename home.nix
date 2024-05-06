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
    vscode = {
      enable = true;
      enableExtensionUpdateCheck = false;
      enableUpdateCheck = false;
      mutableExtensionsDir = false;
      extensions = import ./extensions.nix { inherit pkgs; };
      userSettings = import ./user-settings.nix { inherit pkgs; };
    };
    direnv = {
      enable = true;
      enableBashIntegration = true;
      nix-direnv.enable = true;
    };
  };

  home.packages = with pkgs; [ keepassxc google-chrome git ];

  home.stateVersion = "23.11";
}
