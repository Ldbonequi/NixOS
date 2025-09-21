
{ config, pkgs, ... }:

{
  # Declare the packages to be included in the system environment
  environment.systemPackages = with pkgs; [
    spotify     # Spotify desktop application
  ];
}