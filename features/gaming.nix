{ config, pkgs, ... }:

{
  programs.steam = {
    enable = true;
    extraPackages = with pkgs; [
      gamemode
      gamescope
      kdePackages.breeze
      mangohud
    ];
  };
}