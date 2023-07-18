{
  description = "A Polysemy effect for time";

  inputs.hix.url = "git+https://git.tryp.io/tek/hix";

  outputs = { hix, ...}:
  let

  in hix.lib.pro {
    ghcVersions = ["ghc810" "ghc90" "ghc92" "ghc94"];
    hackage.versionFile = "ops/version.nix";
    main = "polysemy-chronos";
    gen-overrides.enable = true;

    overrides = { hackage, ... }: {
      incipit-base = hackage "0.4.0.0" "0g04mw1si70g5kkgz9gnk460d4pvm65i30hd9abrg6g0ryizixqf";
      incipit-core = hackage "0.4.0.0" "168m94c1480y8lhin1sbrwzr14dq13ixkgkcl7ikq78vcq267521";
    };

    envs.dev.overrides = { hackage, ... }: {
      incipit-base = hackage "0.5.1.0" "0hkqnqpdw8rvg4xzslw9sp3684ggyk9n4hr0lczwm8b0pzakzs0l";
      incipit-core = hackage "0.5.1.0" "04lyzycvqxyjqcd703cd33lnlk5va9wj3czpsybah0ybydnrwabd";
      polysemy-test = hackage "0.7.0.0" "1m6ncbihr742765rshz6w7dn450f3d2ip6ci3qah27lnz7yrwmp6";
      polysemy = hackage "1.9.1.0" "05mhzjz6hz0dnxsn3cc0l6yyj5ch35gn8xfnx0a1gn3q8yljfg2a";
      polysemy-plugin = hackage "0.4.5.0" "0v2k0l42zaangwv050xfv5jdqfrbvdxfr533291ndsxalv8n3xi8";
    };

    envs.ghc94.overrides = { hackage, source, ... }: {
      bytesmith = hackage "0.3.9.1" "026p9mzdjl7yjs4lm5p0i2i1pkbz2m75cz0vkyvyw6k93qbcz9v4";
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

  };
}
