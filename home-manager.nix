{ pkgs, ...}:

# This is a very very dumb function which, when given attrset with key "pkgs" shall

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

    ## I don't know how to find these binaries, but I'd like to have them:
    # pkgs.dd
    # pkgs.pv

    # Have to be externally configured:
    pkgs.gnupg
    pkgs.darcs
    pkgs.tmux

    ## To be packaged (by us?)
    # domaPakages.passveil

]
