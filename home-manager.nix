{ pkgs, ...}:

# This is a very very dumb function which, when given attrset with key "pkgs" shall

let npkgs = pkgs.nodePackages; in
[
    pkgs.httpie
    pkgs.jq
    pkgs.curl
    pkgs.imagemagick
    pkgs.nodejs-18_x
    npkgs.typescript
    npkgs.node-gyp
    # npkgs.tsm
    # Stuff that hasn't been yet confirmed to work

    ## Stuff that I don't know how to find
    # pkgs.dd
    # pkgs.pv
    # Stuff that has to be externally configured
    pkgs.gnupg
    pkgs.darcs
    pkgs.tmux
    ## Stuff that isn't yet implemented
    # domaPakages.passveil
    pkgs.elan
    pkgs.go
]
