{ config, pkgs, lib, inputs, ... }:

{
  hardware.rtl-sdr.enable = true;

  users.users.jackd = {
    isNormalUser = true;
    extraGroups = [ "wheel" "plugdev" ];
    shell = pkgs.nushell;
    hashedPassword = "$6$1vkTCTcl2QcGUykM$4LJmHBM7sIUkFmrUCR/P9YeObsOzDZ7GUrMwOhdGJoIKgYY.ESVEyBoJSyLMO4QCtKTQ3J7IVwR8QC5eaW7Og.";
  };
}

