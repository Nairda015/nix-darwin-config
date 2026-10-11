1. install nix


`curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install | sh` 

2. install nix-darwin

`sudo nix run nix-darwin/nix-darwin-26.05#darwin-rebuild -- switch --flake .#macos`
