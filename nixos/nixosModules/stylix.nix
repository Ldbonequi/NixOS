
{ config, pkgs, ... }:
{

	stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";
	stylix.image = ../dotfiles/Aurora.jpg;

	stylix.cursor.package = pkgs.bibata-cursors;
	stylix.cursor.name = "Bibata-Modern-Ice";
	stylix.polarity = "dark";
	


	stylix.fonts = {
	  monospace = {
	    # Use the updated nerd-fonts package for JetBrains Mono
	    package = pkgs.nerd-fonts.jetbrains-mono;
	    name = "JetBrainsMono Nerd Font Mono";
	  };
	  sansSerif = {
	    # DejaVu Sans remains unchanged
	    package = pkgs.dejavu_fonts;
	    name = "DejaVu Sans";
	  };
	  serif = {
	    # DejaVu Serif remains unchanged
	    package = pkgs.dejavu_fonts;
	    name = "DejaVu Serif";
	  };
	};

}

