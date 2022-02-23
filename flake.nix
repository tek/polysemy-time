{
  description = "Polysemy Effect for Time";

  inputs.hix.url = github:tek/hix;

  outputs = { hix, ...}@inputs:
  let
    ghc921 = { hackage, jailbreak, notest, ... }: {
      chronos = jailbreak;
      type-errors = notest;
    };

    all = { hackage, ... }: {
      polysemy-test = hackage "0.4.0.1" "038n31xxid72vrckr3afgkvbsvqhf9q4b912agg24ppjzckq2s15";
      polysemy = hackage "1.6.0.0" "15k51ysrfcbkww1562g8zvrlzymlk2rxhcsz9ipsb0q6h571qgvf";
      incipit-base = hackage "0.1.0.0" "0pw3wr3yjwg4zphndnzazb7ycmjmrfqn57sjlkiqlb4hnwxk1xmk";
      incipit-core = hackage "0.1.0.0" "1sx3zqqa95w9zqgmm7jxq9b9slqyysixbi7wz4fyldcx6iidz0pc";
    };

  in
  hix.lib.flake {
    base = ./.;
    main = "polysemy-chronos";
    overrides = { inherit all ghc921; };
    packages = {
      polysemy-time = ./packages/time;
      polysemy-chronos = ./packages/chronos;
    };
    hackage.versionFile = "ops/hpack/shared/meta.yaml";
    ghci.preludePackage = "incipit-core";
  };
}
