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
    envs.latest-polysemy-time.overrides = overrides;
    envs.lower-polysemy-time.overrides = overrides;
    envs.latest-polysemy-chronos.overrides = overrides;
    envs.lower-polysemy-chronos.overrides = overrides;

    cabal = {
      license = "BSD-2-Clause-Patent";
      license-file = "LICENSE";
      author = "Torsten Schmits";
      prelude = {
        enable = true;
        package = "incipit-core";
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
          "aeson"
          "template-haskell"
          "time"
          "torsor"
        ];
      };

      test = {
        enable = true;
        dependencies = [
          "polysemy-test"
          "polysemy-time"
          "tasty"
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
          "chronos"
          config.packages.polysemy-time.dep.minor
        ];
      };

      test = {
        enable = true;
        dependencies = [
          "chronos"
          "polysemy-chronos"
          "polysemy-test"
          config.packages.polysemy-time.dep.minor
          "tasty"
        ];
      };

    };

  });
}
