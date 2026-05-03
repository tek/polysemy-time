{
  description = "A Polysemy effect for time";

  inputs.hix.url = "git+https://git.tryp.io/tek/hix";

  outputs = {hix, ...}: hix.lib.pro ({config, ...}: {
    ghcVersions = ["ghc98" "ghc910" "ghc912"];
    main = "polysemy-chronos";
    gen-overrides.enable = true;

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

    cabal = {
      license = "BSD-2-Clause-Patent";
      license-file = "LICENSE";
      author = "Torsten Schmits";
      language = "GHC2021";
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

    managed = {
      enable = true;
      lower.enable = true;
      latest.compiler = "ghc912";
      lower.compiler = "ghc94";
      envs.solverOverrides = {hackage, jailbreak, unbreak, ...}: {
        bytesmith = hackage "0.3.11.0" "1z083sx6gbrsnlwfhiwcpym1kwyxmjhwrngsi3axa7bmg5c5za5c";
      };
    };

    package-sets.ghc98.overrides = {jailbreak, ...}: {
      chronos = jailbreak;
    };

    package-sets.ghc912.overrides = {jailbreak, ...}: {
      polysemy-test = jailbreak;
    };

    hackage.repos."hackage.haskell.org".user = "tek";

    internal.hixCli.dev = true;

  });
}
