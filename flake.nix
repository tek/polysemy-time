{
  description = "Polysemy Effect for Time";

  inputs.hix.url = github:tek/hix;

  outputs = { hix, ...}@inputs:
  let
    ghc901 = { hackage, source, jailbreak, minimal, noHpack, ... }: {
      path = hackage "0.9.0" "14symzl1rszvk5zivv85k79anz7xyl5gaxy0sm4vhhzsgxc59msv";
      path-io = jailbreak (hackage "1.6.3" "05hcxgyf6kkz36mazd0fqwb6mjy2049gx3vh8qq9h93gfjkpp2vc");
      relude = hackage "1.0.0.1" "164p21334c3pyfzs839cv90438naxq9pmpyvy87113mwy51gm6xn";
      type-errors-pretty = jailbreak;
    };

    all = { hackage, ... }: {
      polysemy = hackage "1.6.0.0" "15k51ysrfcbkww1562g8zvrlzymlk2rxhcsz9ipsb0q6h571qgvf";
      polysemy-test = hackage "0.3.1.7" "0j33f5zh6gyhl86w8kqh6nm02915b4n32xikxc4hwcy7p5l7cl34";
    };
  in
  hix.flake {
    base = ./.;
    main = "polysemy-chronos";
    overrides = { inherit all ghc901; };
    packages = {
      polysemy-time = ./packages/time;
      polysemy-chronos = ./packages/chronos;
    };
    versionFile = "ops/hpack/shared/meta.yaml";
  };
}
