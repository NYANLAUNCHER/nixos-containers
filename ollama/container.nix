{ config, pkgs, ... }:
{
  boot.isContainer = true;
  networking.hostName = "ollama-container";
  system.stateVersion = "26.05";
  environment.systemPackages = with pkgs; [
    git
    curl
    wget
    vim
    gcc
    gnumake
    pkg-config
  ];
  programs.git.enable = true;
  services.openssh.enable = true;
}
