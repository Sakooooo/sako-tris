{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";
  };

  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    lspservers = with pkgs; [
      clang-tools
      cmake-language-server
    ];
  in {
    devShells.${system}.default = pkgs.mkShell {
      nativeBuildInputs = with pkgs; [
        cmake
        pkg-config
        gcc
        lspservers
      ];
      buildInputs = with pkgs; [
        SDL2.dev
        SDL2_image
      ];
    };
  };
}
