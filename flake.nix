{
  description = "Polysemy Effect for Time";

  inputs.hix.url = github:tek/hix;
  inputs.incipit-core.url = github:tek/incipit-core;

  outputs = { hix, incipit-core, ...}:
  let
    ghc921 = { hackage, jailbreak, notest, ... }: {
      chronos = jailbreak;
      type-errors = notest;
    };

    all = { hackage, ... }: {
      polysemy-test = hackage "0.4.0.1" "038n31xxid72vrckr3afgkvbsvqhf9q4b912agg24ppjzckq2s15";
      polysemy = hackage "1.6.0.0" "15k51ysrfcbkww1562g8zvrlzymlk2rxhcsz9ipsb0q6h571qgvf";
    };

  in
  hix.lib.flake {
    base = ./.;
    main = "polysemy-chronos";
    overrides = { inherit all ghc921; };
    deps = [incipit-core];
    packages = {
      polysemy-time = ./packages/time;
      polysemy-chronos = ./packages/chronos;
    };
    hackage.versionFile = "ops/hpack/shared/meta.yaml";
    ghci.preludePackage = "incipit-core";
  };
}
