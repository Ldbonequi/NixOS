{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    protonup-ng
  ];

  environment.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS =
    "/home/leob/.steam/root/compatibilitytools.d";
  };

}