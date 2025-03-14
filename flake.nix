{
  description = "A Polysemy effect for time";

  inputs.hix.url = "git+https://git.tryp.io/tek/hix";

  outputs = {hix, ...}: hix.lib.pro ({config, ...}: let

    overrides = {jailbreak, unbreak, hackage, ...}: {
      polysemy-test = unbreak;
    };

  in {
    ghcVersions = ["ghc94" "ghc96" "ghc98" "ghc910"];
    hackage.versionFile = "ops/version.nix";
    main = "polysemy-chronos";
    gen-overrides.enable = true;
    managed = {
      enable = true;
      lower.enable = true;
      latest.compiler = "ghc910";
      envs.solverOverrides = {hackage, jailbreak, unbreak, ...}: {
        bytebuild = jailbreak;
        chronos = jailbreak;
        polysemy-test = jailbreak unbreak;
        incipit-base = jailbreak;
        incipit-core = jailbreak;
      };
    };

    envs.latest.overrides = {hackage, jailbreak, unbreak, ...}: {
      bytebuild = jailbreak;
      polysemy-test = unbreak;
    };

    inherit overrides;

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
          "polysemy-test"
          config.packages.polysemy-time.dep.minor
          "tasty"
        ];
      };

    };

    envs.ghc910.overrides = {hackage, jailbreak, ...}: {
      bytebuild = jailbreak;
      chronos = jailbreak;
      incipit-base = hackage "0.6.1.0" "0iyyvxpyyybn5ygr875pav6g5hbs00wa9jbr7qslszqpkfpy5x33";
      incipit-core = hackage "0.6.1.0" "144c239nxl8zi2ik3ycic3901gxn8rccij3g609n2zgnn3b6zilj";
      polysemy-test = jailbreak;
    };

  });
}
