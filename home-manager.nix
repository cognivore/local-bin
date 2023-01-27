{ pkgs, ...}:

# This is a very very dumb function which, when given attrset with key "pkgs" shall
#####
# Remember, your home-manager config is ~/.config/nixpkgs/home.nix

let npkgs = pkgs.nodePackages; in
[
    pkgs.jq
    pkgs.curl
    pkgs.imagemagick
    pkgs.nodejs-18_x
    npkgs.typescript
    npkgs.node-gyp
    pkgs.elan
    pkgs.go

    ## Used to work, but now is broken
    # npkgs.tsm
    # pkgs.httpie

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
    pkgs.python
    pkgs.luajitPackages.luarocks
    # NodeJS is installed anyway
    # NeoVim is installed as a binary release

    # Install fzf
    pkgs.fzf
    pkgs.fzf-obc
    pkgs.sysz
    pkgs.tmuxPlugins.tmux-fzf
]
