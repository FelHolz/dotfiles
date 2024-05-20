{ pkgs, ... }:
with pkgs.vscode-extensions;
[
  bbenoist.nix
  brettm12345.nixfmt-vscode
  haskell.haskell
  justusadam.language-haskell
  waderyan.gitblame
  donjayamanne.githistory
  mkhl.direnv
]
