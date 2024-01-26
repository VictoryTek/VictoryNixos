# STATIC Network Configuration
# https://github.com/VictoryTek
# Ver. 1.0

{ config, pkgs, ... }:

{

  # Enable STATIC Networking.
  networking = {
    firewall.enable = false;
    useDHCP = false;
    interfaces = {
      enp0s3 = {
        ipv4.addresses = [ {
          address = "192.168.100.1";
          prefixLength = 21;
        } ];
      };
    };
    defaultGateway = "192.168.100.1";
    nameservers = [ "192.168.100.1" ];
  };



Old
  #Enable STATIC Networking with a bridge.
#  networking.useDHCP = false;
#  networking.bridges = {
#    "br0" = {
#      interfaces = [ "eno1" ];
#    };
#  };
#  networking.interfaces.br0.ipv4.addresses = [ {
#    address = "192.168.100.1";
#    prefixLength = 24;
#  } ];
#  networking.defaultGateway = "192.168.100.1";
#  networking.nameservers = ["192.168.100.1"];



New
  #Enable STATIC Networking with bridge.
#  networking = {
#    useDHCP = false;
#    bridges = {
#      "br0" = {
#        interfaces = [ "eno1" ];
#      };
#    };
#    interfaces = {
#      br0 = {
#        ipv4.addresses = [ {
#          address = "192.168.100.1";
#          prefixLength = 24;
#        } ];
#      };
#    };
#    defaultGateway = "192.168.100.1";
#    nameservers = [ "192.168.100.1" ];
#  };
#
#};

  
}
