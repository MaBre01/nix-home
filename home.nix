{ config, pkgs, ... }:

{
  _module.args.secrets = import ./secrets.nix;

  # Enable settings that make home manager work better on Linux distribs other than NixOS
  targets.genericLinux.enable = true;

  # To fix glibc locale bug (https://github.com/NixOS/nixpkgs/issues/38991)
  home.sessionVariables.LOCALE_ARCHIVE_2_27 = "${pkgs.glibcLocales}/lib/locale/locale-archive";

  imports = [
    ./roles/hm/base
    ./roles/hm/xfce
  ];

  home.stateVersion = "19.09";
}
