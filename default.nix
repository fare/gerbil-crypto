let super = import <nixpkgs> {}; in
(mixin: let pkgs = mixin pkgs super ; in
  pkgs.gerbilPackages-unstable.gerbil-crypto)
(pkgs: super: let inherit (super.gerbil-support) overrideGerbilPackage gerbilFilterSource; in
  overrideGerbilPackage "gerbil-crypto" (_: gerbilFilterSource ./.) {} super)
