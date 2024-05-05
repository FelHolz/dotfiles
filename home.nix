{ config, ... }: {
  programs.git = {
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

  home.stateVersion = "23.11";
}
