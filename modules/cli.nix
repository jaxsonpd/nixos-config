{ config, pkgs, ... }:

{
  imports = [
    ./common.nix
  ];

  # Headless/CLI-specific configuration
  services.openssh.enable = true;

  environment.systemPackages = with pkgs; [
  ];
}
