{ pkgs ? import (if pin == false then <nixpkgs> else pin) {},
  pin ? ./nixpkgs.nix, ...}:
with pkgs;
let
  rEnv = with pkgs; rWrapper.override {
    packages = with rPackages; [
      tidyverse
      testthat
      rstanarm
    ];
  };
in

pkgs.mkShell {
  buildInputs = [ rEnv ];
}
