# My personal NixOS config

## Structure

The config is broken down into hosts which are stored in the [hosts](./hosts) directory and defined at the end of [flake.nix](./flake.nix). There are then different setups which are detailed in the [modules](./modules). User specific config is stored in [home](./home/). 

## Deployment

Get the repository into `/etc/nixos/` using:

```bash
cd /etc/nixos/
sudo rm configuration.nix 
sudo git clone <repo-url> .
```

Then build and select the corret config using:

```bash
sudo nixos-rebuild switch --flake .#<host-name>
```

 ## Getting nixos on WSL

 Make sure wsl is installed using:

```bash
wsl --install
```

Then download the wsl nixos from https://github.com/nix-community/NixOS-WSL/releases. Double click the `.wsl` file to register the program, then from the same directory run:

```bash
wsl -d nixos
```

