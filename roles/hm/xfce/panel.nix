{
  # whisker menu
  xdg.configFile."xfce4/panel/whiskermenu-1.rc".text = ''
    favorites=
    recent=
    button-icon=xfce4-whiskermenu
    button-single-row=false
    show-button-title=true
    show-button-icon=true
    launcher-show-name=true
    launcher-show-description=true
    launcher-show-tooltip=true
    item-icon-size=3
    hover-switch-category=false
    category-show-name=true
    category-icon-size=1
    load-hierarchy=false
    view-as-icons=false
    recent-items-max=0
    favorites-in-recent=true
    display-recent-default=false
    position-search-alternate=true
    position-commands-alternate=false
    position-categories-alternate=true
    stay-on-focus-out=false
    confirm-session-command=true
    menu-width=450
    menu-height=500
    menu-opacity=100
    command-settings=xfce4-settings-manager
    show-command-settings=true
    command-lockscreen=xflock4
    show-command-lockscreen=true
    command-switchuser=gdmflexiserver
    show-command-switchuser=false
    command-logoutuser=xfce4-session-logout --logout --fast
    show-command-logoutuser=false
    command-restart=xfce4-session-logout --reboot --fast
    show-command-restart=false
    command-shutdown=xfce4-session-logout --halt --fast
    show-command-shutdown=false
    command-suspend=xfce4-session-logout --suspend
    show-command-suspend=false
    command-hibernate=xfce4-session-logout --hibernate
    show-command-hibernate=false
    command-logout=xfce4-session-logout
    show-command-logout=true
    command-menueditor=menulibre
    show-command-menueditor=true
    command-profile=mugshot
    show-command-profile=true
    search-actions=0
  '';

  # screenshot plugin
  xdg.configFile."xfce4/panel/screenshooter-10.rc".text = ''
    app=none
    last_user=
    screenshot_dir=
    action=1
    delay=0
    region=3
    show_mouse=1
  '';
}
