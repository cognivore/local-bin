{ pkgs, ...}:

# This is a very very dumb function which, when given attrset with key "pkgs" shall

[
    pkgs.httpie
    pkgs.jq
    pkgs.curl
    pkgs.imagemagick
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
]
