{
  description = "Polysemy effect for time";

  inputs = {
    hix.url = github:tek/hix;
    chronos = { url = github:andrewthad/chronos; flake = false; };
    polysemy.url = github:polysemy-research/polysemy;
    path = {
      url = github:commercialhaskell/path;
      flake = false;
    };
  };

  outputs = { hix, chronos, polysemy, path, ...}@inputs:
  let
    compat = { hackage, only, source, noHpack, minimal, jailbreak, ... }: {
      chronos = minimal;
      path = only "9.0.1" (source.root path);
      polysemy = only "9.0.1" (noHpack (minimal (source.root polysemy)));
      polysemy-plugin = only "9.0.1" (noHpack (minimal (source.sub polysemy "polysemy-plugin")));
      polysemy-test = hackage "0.3.1.3" "0mgcr54jvs8lf3snm709kpfd38jbf4ycf7f90px4cmf7wz5adqf7";
      relude = only "9.0.1" (hackage "1.0.0.1" "164p21334c3pyfzs839cv90438naxq9pmpyvy87113mwy51gm6xn");
      type-errors-pretty = only "9.0.1" jailbreak;
    };

    main = { hackage, source, minimal, ... }: {
      path = hackage "0.8.0" "0isldidz2gypw2pz399g6rn77x9mppd1mvj5h6ify4pj4mpla0pb";
      tasty-hedgehog = hackage "1.1.0.0" "0cs96s7z5csrlwj334v8zl459j5s4ws6gmjh59cv01wwvvrrjwd9";
      polysemy = hackage "1.5.0.0" "1xl472xqdxnp4ysyqnackpfn6wbx03rlgwmy9907bklrh557il6d";
      polysemy-plugin = hackage "0.3.0.0" "1frz0iksmg8bpm7ybnpz9h75hp6hajd20vpdvmi04aspklmr6hj0";
      polysemy-test = hackage "0.3.1.3" "0mgcr54jvs8lf3snm709kpfd38jbf4ycf7f90px4cmf7wz5adqf7";
      relude = hackage "1.0.0.1" "164p21334c3pyfzs839cv90438naxq9pmpyvy87113mwy51gm6xn";
      chronos = minimal (source.root chronos);
    };
  in
  hix.flake {
    base = ./.;
    main = "polysemy-chronos";
    overrides = main;
    compatOverrides = compat;
    packages = {
      polysemy-time = "packages/time";
      polysemy-chronos = "packages/chronos";
    };
    ghci.extraArgs = ["-fplugin=Polysemy.Plugin"];
    versionFile = "ops/hpack/shared/meta.yaml";
  };
}
