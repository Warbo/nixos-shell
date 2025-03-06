{
  pkgs ? import nixpkgs { inherit system; },
  nixpkgs ? <nixpkgs>,
  system ? builtins.currentSystem
}:
pkgs.buildGoModule {
  name = "nixos-shell";
  src = ./.;
  vendorHash = "sha256-qkBpSVLWZPRgS9bqOVUWHpyj8z/nheQJON3vJOwPUj4=";
}
