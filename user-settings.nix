{ pkgs, ... }: {
  # editor settings
  editor = {
    minimap.enabled = false;
    tabSize = 2;
    formatOnSave = true;
  };
  # telemetry settings
  telemetry.telemetryLevel = "off";

  # miscellaneous settings
  workbench.colorThem = "Default Dark+";
  window.zoomLevel = 1;

  # git settings
  git = {
    confirmSync = false;
    autofetch = true;
    autoStash = true;
  };

  # search settings
  search = {
    collapseResults = "auto";
    useGlobalIgnoreFiles = true;
  };

  # explorer settings
  explorer.confirmDragAndDrop = false;

  # default haskell settings
  haskell = {
    formattingProvider = "ormolu";
    manageHLS = "PATH";
  };

  # default nix settings
  "[nix]" = { editor.defaultFormatter = "brettm12345.nixfmt-vscode"; };
  nix.enableLanguageServer = true;
}
