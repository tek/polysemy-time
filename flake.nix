{
  description = "Polysemy Effect for Time";

  inputs.hix.url = github:tek/hix;

  outputs = { hix, ...}:
  let
    ghc921 = { hackage, jailbreak, notest, ... }: {
      chronos = jailbreak;
      type-errors = notest;
    };

    all = { hackage, ... }: {
      incipit-base = hackage "0.2.0.0" "12979prkjk1kr1556mwsgf1v04rzd67xg68x6q9pnvm41pxbvk5w";
      incipit-core = hackage "0.2.0.0" "1v4xrqwcylbk32b6hzl6i7k0964varw2iy73s7mkjxpxpdg432ci";
      polysemy-test = hackage "0.5.0.0" "0lzbf7bfmcima8ib4hv68bjciy2n5s4x493g0a5cmdjj6pcg2d2k";
      polysemy = hackage "1.6.0.0" "15k51ysrfcbkww1562g8zvrlzymlk2rxhcsz9ipsb0q6h571qgvf";
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
