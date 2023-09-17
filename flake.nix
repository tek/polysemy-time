{
  description = "A Polysemy effect for time";

  inputs = {
    hix.url = "git+https://git.tryp.io/tek/hix";
    polysemy-test.url = "git+https://git.tryp.io/tek/polysemy-test";
  };

  outputs = {hix, polysemy-test, ...}: hix.lib.pro ({config, ...}: {
    ghcVersions = ["ghc92" "ghc94" "ghc96"];
    hackage.versionFile = "ops/version.nix";
    main = "polysemy-chronos";
    deps = [polysemy-test];
    compiler = "ghc94";
    gen-overrides.enable = true;

    envs.dev.overrides = { hackage, ... }: {
      polysemy-test = hackage "0.8.0.1" "0fcaxq7l9dl3ha9m90fjzsf0vdbf478x17249s7x1k7qh3jz9s7a";
      polysemy = hackage "1.9.1.2" "01vkiqxcjvvihgg8dvws76sfg0d98z8xyvpnj3g3nz02i078xf8j";
      polysemy-plugin = hackage "0.4.5.1" "0afmx1vdgmvggk4sb4av91qnm8b3hr2kb4adcj9fhzq2w50393bc";
    };

    envs.ghc96.overrides = {hackage, jailbreak, ...}: {
      chronos = hackage "1.1.5.1" "009z2zmy5gba3h6r638r7g45bx1ylibhl28bf1crfl17j17kp3d1";
      zigzag = jailbreak;
      bytebuild = hackage "0.3.14.0" "1wmhsb8si083gi4zh58vk1l13ixs4p4lhjdcra5zv4amxr4drf0m";
    };

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
