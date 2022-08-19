{
  description = "Polysemy Effect for Time";

  inputs.hix.url = git+https://git.tryp.io/tek/hix;

  outputs = { hix, ...}:
  let
    ghc924 = { hackage, jailbreak, notest, ... }: {
      bytesmith = jailbreak (hackage "0.3.9.0" "0ds4dppdf42pm37lr4xm7cglmgyj104nnbm83ldwblixzp3inwc1");
      chronos = jailbreak;
      type-errors = notest;
    };

    all = { hackage, ... }: {
      incipit-base = hackage "0.3.0.0" "1078yyl5k94c9pr16rqd1i1g1fj8zx4iswhk7rcxb8f10fjqzapg";
      incipit-core = hackage "0.3.0.0" "0q11zmxlpdb72p8c8zvr5hd7qca9c37crm70lm16jxlzw1qxk51b";
      polysemy-test = hackage "0.6.0.0" "07pi549ral22sxhja67k5b9v787q0b32ysp0bq9szhwjqgxsab46";
      polysemy = hackage "1.6.0.0" "15k51ysrfcbkww1562g8zvrlzymlk2rxhcsz9ipsb0q6h571qgvf";
    };

  in
  hix.lib.flake ({ config, lib, ... }: {
    base = ./.;
    main = "polysemy-chronos";
    overrides = { inherit all ghc924; };
    packages = {
      polysemy-time = ./packages/time;
      polysemy-chronos = ./packages/chronos;
    };
    hpack.packages = import ./ops/hpack.nix { inherit config lib; };
    hackage.versionFile = "ops/version.nix";
    ghci = {
      preludePackage = "incipit-core";
      preludeModule = "IncipitCore";
    };
  });
}
