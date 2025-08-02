{ config, pkgs, ... }:

{
  
  home.username = "murat";
  home.homeDirectory = "/home/murat";
  
  imports = [ 
    ./hypr.nix
  ];

  wayland.windowManager.hyprland = {

    enable = true;
    package = null;
    portalPackage = null;

  };
  
  home.packages = with pkgs; [

    fastfetch
    tree
    firefox
    steam 
    quickshell
    git

  ];

  programs = {
    
    kitty = {
      enable = true; 
      settings = {
        confirm_os_window_close = 0;
      };
    };
   
  };
  
  home.sessionVariables = {
    SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket";
  };
 
  home.enableNixpkgsReleaseCheck = false;

  programs.home-manager.enable = true;

  home.stateVersion = "25.05";
}
