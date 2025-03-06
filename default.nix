{
  nixpkgs ? <nixpkgs>, system ? builtins.currentSystem
}:

with import nixpkgs { inherit system; };

buildGoModule {
  name = "nixos-shell";
  src = ./.;
  vendorHash = "sha256-qkBpSVLWZPRgS9bqOVUWHpyj8z/nheQJON3vJOwPUj4=";
}
