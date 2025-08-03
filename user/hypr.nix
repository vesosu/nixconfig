{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    bind = [
      "$mod, W, exec, firefox"
      "$mod, Q, exec, kitty"
      "$mod, C, killactive"
      "$mod SHIFT, C, exit" 
      "$mod, mouse_down, workspace, e-1"
      "$mod, mouse_up, workspace, e+1"
      "$mod, F, fullscreenstate, 1"
      "$mod SHIFT, F, fullscreenstate, 2 0"
      "$mod, Up, movefocus, u"
      "$mod, Down, movefocus, d"
      "$mod, Left, movefocus, l"
      "$mod, Right, movefocus, r"
      "$mod, P, togglefloating"
      "$mod SHIFT, P, pseudo"
    ]
    ++ (
       builtins.concatLists (builtins.genList (i:
           let ws = i + 1;
           in [
              "$mod, code:1${toString i}, workspace, ${toString ws}"
              "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
           ]
          )
          9)
    );
    
    bindm = [
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];

    bindc = [
      "$mod, mouse:272, togglefloating"
    ];
    
    master = {
      inherit_fullscreen = true;
      smart_resizing = true;
      drop_at_cursor = true;
    };  
    
    misc = {
      disable_hyprland_logo = true;
      always_follow_on_dnd = true;
      layers_hog_keyboard_focus = true;
      animate_manual_resizes = true;
      animate_mouse_windowdragging = true;
      new_window_takes_over_fullscreen = 2;
      initial_workspace_tracking = 2;
    };

    input = {
      kb_layout = "gb";
      #gb for english (%60 keyboard, tr for TR-Q (%10 keyboard) 
      follow_mouse = 1;
      touchpad = {
        natural_scroll = true;
        disable_while_typing = true;
      };
    };

    general = {
      border_size = 4;
      gaps_in = 5;
      gaps_out = 12;
    };

    decoration = {
      rounding = 7;
     /* active_opacity = 0.9;
      inactive_opacity = 0.8;
      dim_inactive = true;
      dim_strength = 0.2;
      blur = {
        enabled = true;
        new_optimizations = true;
      };*/
    };
  };
} 
