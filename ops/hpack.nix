{ config, lib, ... }:
with builtins;
with lib;
let

  mergeAttr = a: b:
  if isAttrs a
  then merge a b
  else if isList a
  then a ++ b
  else b;

  merge = l: r:
  let
    f = name:
    if hasAttr name l && hasAttr name r
    then mergeAttr l.${name} r.${name}
    else l.${name} or r.${name};
  in genAttrs (concatMap attrNames [l r]) f;

  paths = name: {
    when = {
      condition = false;
      generated-other-modules = ["Paths_${replaceStrings ["-"] ["_"] name}"];
    };
  };

  meta = {
    version = import ./version.nix;
    license = "BSD-2-Clause-Patent";
    license-file = "LICENSE";
    author = "Torsten Schmits";
    maintainer = "hackage@tryp.io";
    copyright = "2022 Torsten Schmits";
    category = "Time";
    build-type = "Simple";
    github = "tek/polysemy-time";
  };

  options.ghc-options = [
    "-Wall"
    "-Wredundant-constraints"
    "-Wincomplete-uni-patterns"
    "-Wmissing-deriving-strategies"
    "-Widentities"
    "-Wunused-packages"
  ];

  dependencies = [
      { name = "base"; version = ">= 4.12 && < 5"; mixin = "hiding (Prelude)"; }
      { name = "incipit-core"; version = ">= 0.3"; mixin = ["(IncipitCore as Prelude)" "hiding (IncipitCore)"]; }
    ];

  project = name: doc: merge (meta // { library = paths name; } // options) {
    inherit name;
    description = "See https://hackage.haskell.org/package/${name}/docs/${doc}.html";
    library = {
      source-dirs = "lib";
      inherit dependencies;
    };
    default-extensions = config.ghci.extensions;
  };

  exe = name: dir: merge (paths name // {
    main = "Main.hs";
    source-dirs = dir;
    inherit dependencies;
    ghc-options = [
      "-threaded"
      "-rtsopts"
      "-with-rtsopts=-N"
    ];
  });

in {

  polysemy-time = merge (project "polysemy-time" "Polysemy-Time") {
    synopsis = "Polysemy effects for time";
    library.dependencies = [
      "aeson >= 1.4"
      "stm"
      "template-haskell"
      "time"
      "torsor >= 0.1"
    ];
    tests.polysemy-time-unit = exe "polysemy-time" "test" {
      dependencies = [
        "polysemy-test >= 0.6"
        "polysemy-time"
        "tasty"
        "time"
      ];
    };
  };

  polysemy-chronos = merge (project "polysemy-chronos" "Polysemy-Chronos") {
    synopsis = "Polysemy effects for Chronos";
    library.dependencies = [
      "chronos ^>= 1.1.1"
      "polysemy-time"
    ];
    tests.polysemy-chronos-unit = exe "polysemy-chronos" "test" {
      dependencies = [
        "chronos"
        "polysemy-chronos"
        "polysemy-test >= 0.6"
        "polysemy-time"
        "tasty"
      ];
    };
  };

}
