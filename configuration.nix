# Victory Nixos Configuration
# Server Version
# Version 1.7
# NixOS Version 24.05
# https://github.com/VictoryTek


{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./modules/system/users.nix
      ./modules/de/gnome.nix
#      ./modules/installs/gnome_extensions.nix
#      ./modules/installs/packages.nix
#      ./modules/installs/rustdesk.nix
#      ./modules/installs/uptime-kuma.nix
#      ./modules/installs/virtualbox-ga.nix
      ./modules/network/dhcp.nix
#      ./modules/network/static.nix
#      ./modules/services/flatpak.nix
#      ./modules/services/docker.nix
#      ./modules/services/podman.nix
#      ./modules/services/jellyfin.nix
#      ./modules/services/plex.nix
#      ./modules/services/print.nix
#      ./modules/services/smb.nix
#      ./modules/services/sound.nix
      ./modules/services/ssh.nix
#      ./modules/services/tailscale.nix
#      ./modules/services/traefik.nix
#      ./modules/services/qemu_kvm.nix
#      ./modules/services/virtualbox.nix
#      ./modules/services/xrdp.nix
#      ./modules/system/flakes-enabled.nix
#      ./modules/system/nur.nix
#      ./modules/system/cleanup.nix
    ];

  # Bootloader.
  boot = {
    loader = {
      grub = {
        enable = true;
        device = "/dev/sda";
        useOSProber = true;
      };
    };
  };

  # Define your hostname.
  networking = {
    hostName = "nixos";
  };

  # Set your time zone.
  time = {    
    timeZone = "America/Chicago";
  };

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # Configure keymap in X11
  services  = {
    xserver = {
      xkb = {
        layout = "us";
        variant = "";
      };
    };
  };

  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on  ).
  system = {
    stateVersion = "24.05";
  };
  # Did you read the comment?

}
