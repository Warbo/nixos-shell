{
  pkgs ? import nixpkgs { inherit system; },
  nixpkgs ? <nixpkgs>,
  system ? builtins.currentSystem
}:
pkgs.buildGoModule {
  name = "nixos-shell";
  src = ./.;
  vendorSha256 = "0gjj1zn29vyx704y91g77zrs770y2rakksnn9dhg8r6na94njh5a";
}
