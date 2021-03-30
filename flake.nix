{
  description = "Polysemy effect for time";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/cfed29bfcb28259376713005d176a6f82951014a;
    flake-utils.url = github:numtide/flake-utils;
    tryp-hs.url = github:tek/tryp-hs;
    # tryp-hs.url = path:/home/tek/code/tek/nix/tryp-hs;
    tryp-hs.inputs.nixpkgs.follows = "nixpkgs";
    chronos = {
      url = github:andrewthad/chronos;
      flake = false;
    };
    polysemy = {
      url = github:polysemy-research/polysemy;
      flake = false;
    };
    polysemy-test = {
      url = github:tek/polysemy-test;
      flake = false;
    };
  };

  outputs = { self, nixpkgs, tryp-hs, flake-utils, ... }@inputs:
  flake-utils.lib.eachSystem ["x86_64-linux"] (system:
    let
      project = tryp-hs.project {
        inherit system;
        base = ./.;
        compiler = "ghc8102";
        packages = {
          polysemy-time = "packages/time";
          polysemy-chronos = "packages/chronos";
        };
        overrides = import ./ops/nix/overrides.nix inputs;
        ghci = {
          basicArgs = ["-Wall" "-Werror"];
        };
        ghcid.prelude = "packages/time/lib/Prelude.hs";
        packageDir = "packages";
      };
    in {
      defaultPackage = project.ghc.polysemy-chronos;
      devShell = project.ghcid-flake.shell;
      legacyPackages = {
        run = project.ghcid-flake.run;
        cabal = project.cabal;
        tags = project.tags.projectTags;
        hpack = project.hpack-script {};
      };
      packages = {
        polysemy-time = project.ghc.polysemy-time;
        polysemy-chronos = project.ghc.polysemy-chronos;
      };
      checks = {
        polysemy-time = project.ghc.polysemy-time;
        polysemy-chronos = project.ghc.polysemy-chronos;
      };
    }
  );
}
