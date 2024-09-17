{ pkgs, ...}:

# This is a very very dumb function which, when given attrset with key "pkgs" shall

let npkgs = pkgs.nodePackages; in
[
    pkgs.jq
    pkgs.curl
    pkgs.imagemagick
    pkgs.elan
    pkgs.go

    pkgs.pinentry-curses

    # Stuff that hasn't been yet confirmed to work
    ## I don't know how to find these binaries, but I'd like to have them:
    # pkgs.dd
    # pkgs.pv

    # Have to be externally configured:
    pkgs.gnupg
    pkgs.darcs
    pkgs.tmux

    ## To be packaged (by us?)
    # domaPakages.passveil

    # AtroNvim System Deps (we're installing nvim and astro in ad-hoc way)
    pkgs.tree-sitter
    pkgs.lazygit
    pkgs.bottom
    pkgs.python3
    pkgs.luajitPackages.luarocks
    # NodeJS is installed anyway
    # NeoVim is installed as a binary release

    # Install fzf
    pkgs.fzf
    pkgs.fzf-obc
    pkgs.sysz
    pkgs.tmuxPlugins.tmux-fzf
]
