{
  description = "Polysemy Effect for Time";

  inputs.hix.url = git+https://git.tryp.io/tek/hix;
  inputs.bytesmith = {
    url = github:byteverse/bytesmith/release-0-3-9-1;
    flake = false;
  };

  outputs = { hix, bytesmith, ...}:
  let

    ghc943 = { hackage, source, ... }: {
      bytesmith = source.root bytesmith;
    };

    all = { hackage, ... }: {
      incipit-base = hackage "0.4.0.0" "0g04mw1si70g5kkgz9gnk460d4pvm65i30hd9abrg6g0ryizixqf";
      incipit-core = hackage "0.4.0.0" "168m94c1480y8lhin1sbrwzr14dq13ixkgkcl7ikq78vcq267521";
    };

    dev = { hackage, ... }: {
      polysemy-test = hackage "0.7.0.0" "1m6ncbihr742765rshz6w7dn450f3d2ip6ci3qah27lnz7yrwmp6";
      polysemy = hackage "1.8.0.0" "0jgaqmcf4l8h58g1y576rrr74sii60mymqxh3ii3clnxcllp3p01";
      polysemy-plugin = hackage "0.4.3.1" "0kjwxal9m3lvri35vliwfwcgcj9fkp50ybv4kbgvsjj8srh0pyfj";
    };

  in
  hix.lib.pro ({ config, lib, ... }: {
    packages = {
      polysemy-time = ./packages/time;
      polysemy-chronos = ./packages/chronos;
    };
    main = "polysemy-chronos";
    overrides = { inherit dev all ghc943; };
    hpack.packages = import ./ops/hpack.nix { inherit config lib; };
    hackage.versionFile = "ops/version.nix";
    ghci = {
      preludePackage = "incipit-core";
      preludeModule = "IncipitCore";
    };
  });
}
