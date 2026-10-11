default:
    @just --list

fmt:
    cd "{{justfile_directory()}}" && nixfmt flake.nix darwin.nix home.nix

check:
    nix flake check --no-build "{{justfile_directory()}}"

build:
    nix run nix-darwin/nix-darwin-26.05#darwin-rebuild -- build --flake "{{justfile_directory()}}#macos"

switch:
    sudo -H nix run nix-darwin/nix-darwin-26.05#darwin-rebuild -- switch --flake "{{justfile_directory()}}#macos"

switch-show-trace:
    sudo -H nix run nix-darwin/nix-darwin-26.05#darwin-rebuild -- switch --flake "{{justfile_directory()}}#macos" --show-trace

update:
    nix flake update --flake "{{justfile_directory()}}"
