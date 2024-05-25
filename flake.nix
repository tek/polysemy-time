{
  description = "A Polysemy effect for time";

  inputs.hix.url = "git+https://git.tryp.io/tek/hix";

  outputs = {hix, ...}: hix.lib.pro ({config, ...}: let
    overrides = {jailbreak, unbreak, ...}: {
      polysemy-test = jailbreak unbreak;
    };
  in {
    ghcVersions = ["ghc94" "ghc96" "ghc98"];
    compat.versions = ["ghc96"];
    hackage.versionFile = "ops/version.nix";
    main = "polysemy-chronos";
    gen-overrides.enable = true;
    managed = {
      enable = true;
      sets = "each";
      lower.enable = true;
      envs.solverOverrides = overrides;
      latest.compiler = "ghc98";
    };

    inherit overrides;
    envs.latest.overrides = overrides;
    envs.lower.overrides = overrides;

    cabal = {
      license = "BSD-2-Clause-Patent";
      license-file = "LICENSE";
      author = "Torsten Schmits";
      prelude = {
        enable = true;
        package = {
          name = "incipit-core";
          version = ">= 0.4 && < 0.6";
        };
        module = "IncipitCore";
      };
      meta = {
        maintainer = "hackage@tryp.io";
        category = "Time";
        github = "tek/polysemy-time";
        extra-source-files = ["readme.md" "changelog.md"];
      };
    };

    packages.polysemy-time = {
      src = ./packages/time;

      cabal.meta.synopsis = "A Polysemy effect for time";

      library = {
        enable = true;
        dependencies = [
          "aeson >= 1.4"
          "template-haskell"
          "time"
          "torsor >= 0.1"
        ];
      };

      test = {
        enable = true;
        dependencies = [
          "polysemy-test >= 0.6"
          "polysemy-time"
          "tasty >= 1.1"
          "time"
        ];
      };

    };

    packages.polysemy-chronos = {
      src = ./packages/chronos;

      cabal.meta.synopsis = "A Polysemy effect for Chronos";

      library = {
        enable = true;
        dependencies = [
          "chronos ^>= 1.1.1"
          config.packages.polysemy-time.dep.minor
          "polysemy-time ^>= ${import ./ops/version.nix}"
        ];
      };

      test = {
        enable = true;
        dependencies = [
          "chronos ^>= 1.1.1"
          "polysemy-chronos"
          "polysemy-test >= 0.6"
          "polysemy-time ^>= ${import ./ops/version.nix}"
          "tasty >= 1.1"
        ];
      };

    };

  });
}
