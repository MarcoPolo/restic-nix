# Restic flake

Flake that builds [restic](https://restic.net/).

## Restic in your shell

```
nix shell github:marcopolo/restic-nix
```

## Restic in your flake


```nix
{
  # ...

  inputs.restic = {
    url = "github:marcopolo/restic-nix";
    # Optional if you want to share the version of nixpkgs
    # inputs.nixpkgs.follows = "nixpkgs";
  };

  # ...
}
```