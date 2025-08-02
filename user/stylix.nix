{ config, lib, pkgs, ... }:

{

  stylix = {

   base16Scheme = "${pkgs.base16-schemes}/share/themes/ayu-mirage.yaml";

   polarity = "dark";

   image = pkgs.fetchurl {
     url = "https://w.wallhaven.cc/full/d6/wallhaven-d69eom.jpg";
     hash = "sha256-l9AFtsBdO3I1LIvOnUKHjwjXdQmKG4YZ/m+osCIBsr4=";
   };

   imageScalingMode = "fit"; 

   cursor = {
     package = pkgs.bibata-cursors;
     name = "Bibata-Modern-Ice";
     size = 24;
   };

   fonts = {
     emoji.name = "Noto Color Emoji";
     emoji.package = pkgs.noto-fonts-color-emoji;

     monospace.name = "DejaVu Sans Mono";
     monospace.package = pkgs.dejavu_fonts;

     sansSerif.name = "DejaVu Sans";
     sansSerif.package = pkgs.dejavu_fonts;

   
     sizes = {
       applications = 10;
       desktop = 10; 
       terminal = 11;
     };
     
   };
 
   opacity = {
     applications = 1.0;
     desktop = 1.0;
     terminal = 0.9;
   };

  };

}
