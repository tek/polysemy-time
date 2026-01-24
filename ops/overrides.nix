{
dev = {
};
ghc910 = {
};
ghc94 = {
};
ghc96 = {
};
ghc98 = {
};
hix-build-tools = {
};
hls = {
};
latest = {
  async = {
  meta = {
    sha256 = "1731pcifiskq6g1b72p34phx85l65ax7mbjw11310b3zwzk0ldyn";
    url = "https://hackage.haskell.org";
    ver = "2.2.6";
  };
  drv = { mkDerivation, base, hashable, HUnit, lib, stm, test-framework
, test-framework-hunit, unordered-containers
}:
mkDerivation {
  pname = "async";
  version = "2.2.6";
  src = /nix/store/gqjb7z6xhgknsx70z3vqfndrrb5s0igk-source;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base hashable stm unordered-containers ];
  testHaskellDepends = [
    base HUnit stm test-framework test-framework-hunit
  ];
  homepage = "https://github.com/simonmar/async";
  description = "Run IO operations asynchronously and wait for their results";
  license = lib.licenses.bsd3;
}
;
}
;
  bytebuild = {
  meta = {
    sha256 = "130n1pc4pxxsisiz9mfv6cxbykl7gdz2cvdbnvq5jkhdivrm3izf";
    url = "https://hackage.haskell.org";
    ver = "0.3.17.0";
  };
  drv = { mkDerivation, base, byteslice, bytestring, gauge
, haskell-src-meta, integer-logarithms, lib, natural-arithmetic
, primitive, primitive-offset, QuickCheck, quickcheck-instances
, run-st, tasty, tasty-hunit, tasty-quickcheck, template-haskell
, text, text-short, wide-word, zigzag
}:
mkDerivation {
  pname = "bytebuild";
  version = "0.3.17.0";
  src = /nix/store/rmj7a6m492slpiq1wlc8p8mcqx32r6bv-source;
  libraryHaskellDepends = [
    base byteslice bytestring haskell-src-meta integer-logarithms
    natural-arithmetic primitive primitive-offset run-st
    template-haskell text text-short wide-word zigzag
  ];
  testHaskellDepends = [
    base byteslice bytestring natural-arithmetic primitive QuickCheck
    quickcheck-instances tasty tasty-hunit tasty-quickcheck text
    text-short wide-word
  ];
  benchmarkHaskellDepends = [
    base byteslice gauge natural-arithmetic primitive text-short
  ];
  homepage = "https://github.com/byteverse/bytebuild";
  description = "Build byte arrays";
  license = lib.licenses.bsd3;
}
;
}
;
  byteslice = {
  meta = {
    sha256 = "1visf8kggxd305vihzk22wsw0find1x93xwqh544hb2amr9gfkiz";
    url = "https://hackage.haskell.org";
    ver = "0.2.15.0";
  };
  drv = { mkDerivation, base, bytestring, gauge, lib, natural-arithmetic
, primitive, primitive-addr, primitive-unlifted, quickcheck-classes
, run-st, tasty, tasty-hunit, tasty-quickcheck, text, text-short
, transformers, tuples, vector
}:
mkDerivation {
  pname = "byteslice";
  version = "0.2.15.0";
  src = /nix/store/irjsgy3dnmkcsv9p5wbipb4zhsvsa8dd-source;
  libraryHaskellDepends = [
    base bytestring natural-arithmetic primitive primitive-addr
    primitive-unlifted run-st text text-short tuples vector
  ];
  testHaskellDepends = [
    base bytestring primitive quickcheck-classes tasty tasty-hunit
    tasty-quickcheck text transformers
  ];
  benchmarkHaskellDepends = [ base gauge ];
  homepage = "https://github.com/byteverse/byteslice";
  description = "Slicing managed and unmanaged memory";
  license = lib.licenses.bsd3;
}
;
}
;
  bytesmith = {
  meta = {
    sha256 = "1zg4cw9v0mx26zns87yqlk441qaccymy8l5gas9d8mzgdmsl3nsa";
    url = "https://hackage.haskell.org";
    ver = "0.3.14.0";
  };
  drv = { mkDerivation, base, byte-order, byteslice, bytestring, contiguous
, gauge, lib, natural-arithmetic, primitive, tasty, tasty-hunit
, tasty-quickcheck, text, text-short, wide-word
}:
mkDerivation {
  pname = "bytesmith";
  version = "0.3.14.0";
  src = /nix/store/xqr2pdsgkphm0qnbql527s1pffp7cmzq-source;
  libraryHaskellDepends = [
    base byteslice bytestring contiguous natural-arithmetic primitive
    text text-short wide-word
  ];
  testHaskellDepends = [
    base byte-order byteslice primitive tasty tasty-hunit
    tasty-quickcheck text-short wide-word
  ];
  benchmarkHaskellDepends = [ base gauge primitive ];
  homepage = "https://github.com/byteverse/bytesmith";
  description = "Nonresumable byte parser";
  license = lib.licenses.bsd3;
}
;
}
;
  cabal-doctest = {
  meta = {
    sha256 = "094mvqgh9bhx5v9xanzkhcm8pcxzmkaa68lr3bqpjzkdxydx81nk";
    url = "https://hackage.haskell.org";
    ver = "1.0.12";
  };
  drv = { mkDerivation, base, Cabal, directory, filepath, lib }:
mkDerivation {
  pname = "cabal-doctest";
  version = "1.0.12";
  src = /nix/store/dh7hx0wqn5821ds0dfsrahz1vyib9xi9-source;
  libraryHaskellDepends = [ base Cabal directory filepath ];
  homepage = "https://github.com/ulidtko/cabal-doctest";
  description = "A Setup.hs helper for running doctests";
  license = lib.licenses.bsd3;
}
;
}
;
  chronos = {
  meta = {
    sha256 = "1pbfp25py682d17visa4i9rjxmiim8aykrgs7nv2q9anajv88kdx";
    url = "https://hackage.haskell.org";
    ver = "1.1.6.2";
  };
  drv = { mkDerivation, aeson, attoparsec, base, bytebuild, byteslice
, bytesmith, bytestring, criterion, deepseq, hashable, HUnit, lib
, natural-arithmetic, old-locale, primitive, QuickCheck
, test-framework, test-framework-hunit, test-framework-quickcheck2
, text, text-short, thyme, time, torsor, vector
}:
mkDerivation {
  pname = "chronos";
  version = "1.1.6.2";
  src = /nix/store/4lqja84257d3yzxlf1vsz8687hydv3aj-source;
  libraryHaskellDepends = [
    aeson attoparsec base bytebuild byteslice bytesmith bytestring
    deepseq hashable natural-arithmetic primitive text text-short
    torsor vector
  ];
  testHaskellDepends = [
    aeson attoparsec base bytestring HUnit QuickCheck test-framework
    test-framework-hunit test-framework-quickcheck2 text torsor
  ];
  benchmarkHaskellDepends = [
    attoparsec base bytestring criterion deepseq old-locale QuickCheck
    text text-short thyme time
  ];
  homepage = "https://github.com/byteverse/chronos";
  description = "A high-performance time library";
  license = lib.licenses.bsd3;
}
;
}
;
  concurrent-output = {
  meta = {
    sha256 = "1w87rrf337s8wc4z3dkh2mk990003jsk18ry5yawv4465k4yvamw";
    url = "https://hackage.haskell.org";
    ver = "1.10.21";
  };
  drv = { mkDerivation, ansi-terminal, async, base, directory, exceptions
, lib, process, stm, terminal-size, text, transformers, unix
}:
mkDerivation {
  pname = "concurrent-output";
  version = "1.10.21";
  src = /nix/store/kwz3gmjbrzcw4iccsx2d0cyn85klblqy-source;
  libraryHaskellDepends = [
    ansi-terminal async base directory exceptions process stm
    terminal-size text transformers unix
  ];
  description = "Ungarble output from several threads or commands";
  license = lib.licenses.bsd2;
}
;
}
;
  constraints = {
  meta = {
    sha256 = "19wjba08k68qz7bylc2h5f22vxw4bfk9jpzkdji6zqp87ps82phm";
    url = "https://hackage.haskell.org";
    ver = "0.14.3";
  };
  drv = { mkDerivation, base, binary, boring, deepseq, hashable, hspec
, hspec-discover, lib, mtl, transformers
}:
mkDerivation {
  pname = "constraints";
  version = "0.14.3";
  src = /nix/store/andahaz2n8mx2b6vv8gqdc2na2cyjw2n-source;
  libraryHaskellDepends = [
    base binary boring deepseq hashable mtl transformers
  ];
  testHaskellDepends = [ base hspec ];
  testToolDepends = [ hspec-discover ];
  homepage = "http://github.com/ekmett/constraints/";
  description = "Constraint manipulation";
  license = lib.licenses.bsd2;
}
;
}
;
  contiguous = {
  meta = {
    sha256 = "10s92va44wsyxpczxdrbki7a14xsmfxxgv5s71k0b1fa5ng58hf4";
    url = "https://hackage.haskell.org";
    ver = "0.6.5.0";
  };
  drv = { mkDerivation, base, deepseq, lib, primitive, primitive-unlifted
, QuickCheck, quickcheck-classes, quickcheck-instances, random
, random-shuffle, run-st, vector, weigh
}:
mkDerivation {
  pname = "contiguous";
  version = "0.6.5.0";
  src = /nix/store/ns87zrndr4dp9vv3dmsk4185x4g33f10-source;
  libraryHaskellDepends = [
    base deepseq primitive primitive-unlifted run-st
  ];
  testHaskellDepends = [
    base primitive QuickCheck quickcheck-classes quickcheck-instances
    vector
  ];
  benchmarkHaskellDepends = [ base random random-shuffle weigh ];
  homepage = "https://github.com/byteverse/contiguous";
  description = "Unified interface for primitive arrays";
  license = lib.licenses.bsd3;
}
;
}
;
  happy = {
  meta = {
    sha256 = "11xfm7y0dxb676635xqcfgqr0syq9j3hy1157f3kxpb3ljsyg85a";
    url = "https://hackage.haskell.org";
    ver = "2.2";
  };
  drv = { mkDerivation, base, happy-lib, lib, process }:
mkDerivation {
  pname = "happy";
  version = "2.2";
  src = /nix/store/23x6rn3schxs2r5y1b1235vm9ifg3s11-source;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base happy-lib ];
  testHaskellDepends = [ base process ];
  homepage = "https://www.haskell.org/happy/";
  description = "Happy is a parser generator for Haskell";
  license = lib.licenses.bsd2;
  mainProgram = "happy";
}
;
}
;
  happy-lib = {
  meta = {
    sha256 = "1j83gcfi1w11p9yb87b543lmkbf3xajyfbid7y2mv0s75jsvqgym";
    url = "https://hackage.haskell.org";
    ver = "2.2";
  };
  drv = { mkDerivation, array, base, containers, lib, mtl, transformers }:
mkDerivation {
  pname = "happy-lib";
  version = "2.2";
  src = /nix/store/iwsm64iir2xxinc2lk2sxfhm1j3kq1fc-source;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [ array base containers mtl transformers ];
  doHaddock = false;
  homepage = "https://www.haskell.org/happy/";
  description = "Happy is a parser generator for Haskell implemented using this library";
  license = lib.licenses.bsd2;
}
;
}
;
  hedgehog = {
  meta = {
    sha256 = "04cjnz4i1qs3v9bza8a3ry1czapwqgxazhywkjzq2rg1544gjmby";
    url = "https://hackage.haskell.org";
    ver = "1.7";
  };
  drv = { mkDerivation, ansi-terminal, async, barbies, base, bytestring
, concurrent-output, containers, deepseq, directory, erf
, exceptions, lib, lifted-async, mmorph, monad-control, mtl
, pretty-show, primitive, random, resourcet, safe-exceptions, stm
, template-haskell, text, time, transformers, transformers-base
, wl-pprint-annotated
}:
mkDerivation {
  pname = "hedgehog";
  version = "1.7";
  src = /nix/store/piimk6ymh2yg2m74npn5p2znh3wvard4-source;
  libraryHaskellDepends = [
    ansi-terminal async barbies base bytestring concurrent-output
    containers deepseq directory erf exceptions lifted-async mmorph
    monad-control mtl pretty-show primitive random resourcet
    safe-exceptions stm template-haskell text time transformers
    transformers-base wl-pprint-annotated
  ];
  testHaskellDepends = [
    base containers mmorph mtl pretty-show text transformers
  ];
  homepage = "http://github.com/hedgehogqa/haskell-hedgehog";
  description = "Release with confidence";
  license = lib.licenses.bsd3;
}
;
}
;
  incipit-base = {
  meta = {
    sha256 = "08ybv7j94yyznrxnrh744bi3i1a00sz8bf5ddfs9vfgfhhkrg8fn";
    url = "https://hackage.haskell.org";
    ver = "0.6.1.1";
  };
  drv = { mkDerivation, base, bytestring, containers, data-default, lib
, stm, text
}:
mkDerivation {
  pname = "incipit-base";
  version = "0.6.1.1";
  src = /nix/store/z2v8hbdbz6fvdnnqfdr713164wc7n3jj-source;
  libraryHaskellDepends = [
    base bytestring containers data-default stm text
  ];
  homepage = "https://github.com/tek/incipit-core#readme";
  description = "A Prelude for Polysemy – Base Reexports";
  license = "BSD-2-Clause-Patent";
}
;
}
;
  incipit-core = {
  meta = {
    sha256 = "0qpw07f8ip6h7srqkbzfxyz1z36n75irhc6465s9xvrii1840b2k";
    url = "https://hackage.haskell.org";
    ver = "0.6.1.1";
  };
  drv = { mkDerivation, base, incipit-base, lib, polysemy }:
mkDerivation {
  pname = "incipit-core";
  version = "0.6.1.1";
  src = /nix/store/hhmdm0brw0bh41z3lggk75mj5765flmg-source;
  libraryHaskellDepends = [ base incipit-base polysemy ];
  homepage = "https://github.com/tek/incipit-core#readme";
  description = "A Prelude for Polysemy";
  license = "BSD-2-Clause-Patent";
}
;
}
;
  lifted-async = {
  meta = {
    sha256 = "0c0njy8k70swqnp16wyrrkd1bxjsf3pxi34hxka1y1ifp3haccap";
    url = "https://hackage.haskell.org";
    ver = "0.11.0";
  };
  drv = { mkDerivation, async, base, constraints, lib, lifted-base
, monad-control, mtl, tasty, tasty-bench, tasty-expected-failure
, tasty-hunit, tasty-th, transformers-base
}:
mkDerivation {
  pname = "lifted-async";
  version = "0.11.0";
  src = /nix/store/ygfc0qbnk7zcjk3fd6i8q4kd6wb9cc6y-source;
  libraryHaskellDepends = [
    async base constraints lifted-base monad-control transformers-base
  ];
  testHaskellDepends = [
    base lifted-base mtl tasty tasty-expected-failure tasty-hunit
    tasty-th
  ];
  benchmarkHaskellDepends = [ async base tasty-bench ];
  homepage = "https://github.com/maoe/lifted-async";
  description = "Run lifted IO operations asynchronously and wait for their results";
  license = lib.licenses.bsd3;
}
;
}
;
  optparse-applicative = {
  meta = {
    sha256 = "0cs8fqipakad38lvm75nz98hmvf881mgjhnc7icblxfzh92ay6kn";
    url = "https://hackage.haskell.org";
    ver = "0.19.0.0";
  };
  drv = { mkDerivation, base, lib, prettyprinter
, prettyprinter-ansi-terminal, process, QuickCheck, text
, transformers
}:
mkDerivation {
  pname = "optparse-applicative";
  version = "0.19.0.0";
  src = /nix/store/l5z3gyf61qdyda9hmv5fqdq6svb2g7wh-source;
  libraryHaskellDepends = [
    base prettyprinter prettyprinter-ansi-terminal process text
    transformers
  ];
  testHaskellDepends = [ base QuickCheck ];
  homepage = "https://github.com/pcapriotti/optparse-applicative";
  description = "Utilities and combinators for parsing command line options";
  license = lib.licenses.bsd3;
}
;
}
;
  path = {
  meta = {
    sha256 = "16hgrkvd27c9vp5447d1dv3b3fi0fv0jfig10h2j37mzk4850wg8";
    url = "https://hackage.haskell.org";
    ver = "0.9.6";
  };
  drv = { mkDerivation, aeson, base, bytestring, deepseq, exceptions
, filepath, genvalidity, genvalidity-hspec, hashable, hspec, lib
, QuickCheck, template-haskell, text, validity-bytestring
}:
mkDerivation {
  pname = "path";
  version = "0.9.6";
  src = /nix/store/17x0d7bdy3wg6nq9zw20ndi417gy13ck-source;
  libraryHaskellDepends = [
    aeson base deepseq exceptions filepath hashable template-haskell
    text
  ];
  testHaskellDepends = [
    aeson base bytestring exceptions filepath genvalidity
    genvalidity-hspec hspec QuickCheck template-haskell
    validity-bytestring
  ];
  doHaddock = false;
  description = "Support for well-typed paths";
  license = lib.licenses.bsd3;
}
;
}
;
  path-io = {
  meta = {
    sha256 = "063ma7gzqr5c6s8a1yv72jgll3xdajvgclbc8w0ddmqgcrb62x2k";
    url = "https://hackage.haskell.org";
    ver = "1.8.2";
  };
  drv = { mkDerivation, base, containers, directory, dlist, exceptions
, filepath, hspec, lib, path, temporary, time, transformers
, unix-compat
}:
mkDerivation {
  pname = "path-io";
  version = "1.8.2";
  src = /nix/store/y2n6qszdsqdfhhbw4fl146qzyj1sa7zb-source;
  libraryHaskellDepends = [
    base containers directory dlist exceptions filepath path temporary
    time transformers unix-compat
  ];
  testHaskellDepends = [ base exceptions hspec path unix-compat ];
  homepage = "https://github.com/mrkkrp/path-io";
  description = "Interface to ‘directory’ package for users of ‘path’";
  license = lib.licenses.bsd3;
}
;
}
;
  polysemy = {
  meta = {
    sha256 = "00dq1ffsd9bld5zag4l2qssbmm4yb234cirsn5f19fmx43cdgngl";
    url = "https://hackage.haskell.org";
    ver = "1.9.2.0";
  };
  drv = { mkDerivation, async, base, Cabal, cabal-doctest, containers
, doctest, first-class-families, hspec, hspec-discover
, inspection-testing, lib, mtl, stm, syb, template-haskell
, th-abstraction, transformers, type-errors, unagi-chan
}:
mkDerivation {
  pname = "polysemy";
  version = "1.9.2.0";
  src = /nix/store/rrd35xyn2gzkvqid5k43dsqw5z0yb21d-source;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    async base containers first-class-families mtl stm syb
    template-haskell th-abstraction transformers type-errors unagi-chan
  ];
  testHaskellDepends = [
    async base containers doctest first-class-families hspec
    hspec-discover inspection-testing mtl stm syb template-haskell
    th-abstraction transformers type-errors unagi-chan
  ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/polysemy-research/polysemy#readme";
  description = "Higher-order, low-boilerplate free monads";
  license = lib.licenses.bsd3;
}
;
}
;
  polysemy-test = {
  meta = {
    sha256 = "1sp9iag1brknmdy0qvmgnmynwc4gbg1jy21w584x1m2hpqi25p6j";
    url = "https://hackage.haskell.org";
    ver = "0.10.0.1";
  };
  drv = { mkDerivation, base, hedgehog, incipit-core, lib, path, path-io
, polysemy, tasty, tasty-hedgehog, transformers
}:
mkDerivation {
  pname = "polysemy-test";
  version = "0.10.0.1";
  src = /nix/store/lxl8vyrvmkpdf7j78dcxapzlzvk9vbwk-source;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base hedgehog incipit-core path path-io polysemy tasty
    tasty-hedgehog transformers
  ];
  testHaskellDepends = [
    base hedgehog incipit-core path polysemy tasty
  ];
  homepage = "https://github.com/tek/polysemy-test#readme";
  description = "Polysemy effects for testing";
  license = "BSD-2-Clause-Patent";
}
;
}
;
  primitive-unlifted = {
  meta = {
    sha256 = "1z4nh2pv9ylbc9mw9dfmjschyn6ci0rqhz5nn9mld3wz45a15aq5";
    url = "https://hackage.haskell.org";
    ver = "2.2.0.0";
  };
  drv = { mkDerivation, array, base, bytestring, lib, primitive, QuickCheck
, quickcheck-classes-base, stm, tasty, tasty-quickcheck, text-short
}:
mkDerivation {
  pname = "primitive-unlifted";
  version = "2.2.0.0";
  src = /nix/store/rxfl3i22fj2dqpm1dal0wwnxjrrwkhr7-source;
  libraryHaskellDepends = [
    array base bytestring primitive text-short
  ];
  testHaskellDepends = [
    base primitive QuickCheck quickcheck-classes-base stm tasty
    tasty-quickcheck
  ];
  homepage = "https://github.com/haskell-primitive/primitive-unlifted";
  description = "Primitive GHC types with unlifted types inside";
  license = lib.licenses.bsd3;
}
;
}
;
  run-st = {
  meta = {
    sha256 = "1x5brxdbncfgzvdl8k6h00zpzzv319j7iw3k5lgrimhdm0jz2vz7";
    url = "https://hackage.haskell.org";
    ver = "0.1.3.3";
  };
  drv = { mkDerivation, base, lib, primitive, primitive-unlifted }:
mkDerivation {
  pname = "run-st";
  version = "0.1.3.3";
  src = /nix/store/0xndaj5smcqn7flbc881sckjw1zvf9ax-source;
  libraryHaskellDepends = [ base primitive primitive-unlifted ];
  homepage = "https://github.com/byteverse/run-st";
  description = "runST without boxing penalty";
  license = lib.licenses.bsd3;
}
;
}
;
  tasty = {
  meta = {
    sha256 = "1xjlmgsww34asjl9rcwbziw5l4qqbvi5l4b7qvzf4dc7hqkpq1rs";
    url = "https://hackage.haskell.org";
    ver = "1.5.3";
  };
  drv = { mkDerivation, ansi-terminal, base, containers, lib
, optparse-applicative, stm, tagged, transformers, unix
}:
mkDerivation {
  pname = "tasty";
  version = "1.5.3";
  src = /nix/store/9028fgac7afc6vw6is37lvq4p8gqpa7m-source;
  libraryHaskellDepends = [
    ansi-terminal base containers optparse-applicative stm tagged
    transformers unix
  ];
  homepage = "https://github.com/UnkindPartition/tasty";
  description = "Modern and extensible testing framework";
  license = lib.licenses.mit;
}
;
}
;
  tasty-hedgehog = {
  meta = {
    sha256 = "04kg2qdnsqzzmj3xggy2jcgidlp21lsjkz4sfnbq7b1yhrv2vbbc";
    url = "https://hackage.haskell.org";
    ver = "1.4.0.2";
  };
  drv = { mkDerivation, base, hedgehog, lib, tagged, tasty
, tasty-expected-failure
}:
mkDerivation {
  pname = "tasty-hedgehog";
  version = "1.4.0.2";
  src = /nix/store/b9mxq4fh65sif22q9a4g041jvp847cyc-source;
  libraryHaskellDepends = [ base hedgehog tagged tasty ];
  testHaskellDepends = [
    base hedgehog tasty tasty-expected-failure
  ];
  homepage = "https://github.com/qfpl/tasty-hedgehog";
  description = "Integration for tasty and hedgehog";
  license = lib.licenses.bsd3;
}
;
}
;
  wide-word = {
  meta = {
    sha256 = "0ip6yc90asfdwqwmr2lv7z6d9awfw0jnmwp68clr28d7ja98lxp5";
    url = "https://hackage.haskell.org";
    ver = "0.1.8.1";
  };
  drv = { mkDerivation, base, binary, deepseq, hashable, hedgehog, lib
, primitive, QuickCheck, quickcheck-classes, semirings
}:
mkDerivation {
  pname = "wide-word";
  version = "0.1.8.1";
  src = /nix/store/qnxnm7q8nd8kd8ww5ja5q1ajbwjr2kda-source;
  libraryHaskellDepends = [ base binary deepseq hashable primitive ];
  testHaskellDepends = [
    base binary hedgehog primitive QuickCheck quickcheck-classes
    semirings
  ];
  homepage = "https://github.com/erikd/wide-word";
  description = "Data types for large but fixed width signed and unsigned integers";
  license = lib.licenses.bsd2;
}
;
}
;
};
lower = {
  base16-bytestring = {
  meta = {
    sha256 = "0r3p5q5zxcrk5cbnwdcm435pgx3yjv3slidpjxdsvigdxizq4fyv";
    url = "https://hackage.haskell.org";
    ver = "1.0.2.0";
  };
  drv = { mkDerivation, base, bytestring, criterion, deepseq, HUnit, lib
, QuickCheck, test-framework, test-framework-hunit
, test-framework-quickcheck2
}:
mkDerivation {
  pname = "base16-bytestring";
  version = "1.0.2.0";
  src = /nix/store/shvmdimg1b58p4i0zja0x71lq0yn8w13-source;
  libraryHaskellDepends = [ base bytestring ];
  testHaskellDepends = [
    base bytestring HUnit QuickCheck test-framework
    test-framework-hunit test-framework-quickcheck2
  ];
  benchmarkHaskellDepends = [ base bytestring criterion deepseq ];
  homepage = "http://github.com/haskell/base16-bytestring";
  description = "RFC 4648-compliant Base16 encodings for ByteStrings";
  license = lib.licenses.bsd3;
}
;
}
;
  base64-bytestring = {
  meta = {
    sha256 = "10gyx24hmlqlvyn7z3kr37w36fkfb6lm4v27sxi233gcfvssxv9r";
    url = "https://hackage.haskell.org";
    ver = "1.2.1.0";
  };
  drv = { mkDerivation, base, bytestring, criterion, deepseq, HUnit, lib
, QuickCheck, test-framework, test-framework-hunit
, test-framework-quickcheck2
}:
mkDerivation {
  pname = "base64-bytestring";
  version = "1.2.1.0";
  src = /nix/store/7xl51c661970j6vsajh1y97y9i063nl9-source;
  libraryHaskellDepends = [ base bytestring ];
  testHaskellDepends = [
    base bytestring HUnit QuickCheck test-framework
    test-framework-hunit test-framework-quickcheck2
  ];
  benchmarkHaskellDepends = [ base bytestring criterion deepseq ];
  homepage = "https://github.com/haskell/base64-bytestring";
  description = "Fast base64 encoding and decoding for ByteStrings";
  license = lib.licenses.bsd3;
}
;
}
;
  cabal-doctest = {
  meta = {
    sha256 = "152rqpicqpvigjpy4rf1kjlwny1c7ys1r0r123wdjafvv1igflii";
    url = "https://hackage.haskell.org";
    ver = "1.0.11";
  };
  drv = { mkDerivation, base, Cabal, directory, filepath, lib }:
mkDerivation {
  pname = "cabal-doctest";
  version = "1.0.11";
  src = /nix/store/jq5gnm6hwmylv7wndgd4v11z6hv30y0g-source;
  libraryHaskellDepends = [ base Cabal directory filepath ];
  homepage = "https://github.com/ulidtko/cabal-doctest";
  description = "A Setup.hs helper for running doctests";
  license = lib.licenses.bsd3;
}
;
}
;
  chronos = {
  meta = {
    sha256 = "1rja3hsf7s4gfm1xq5s2gydx9d0jckcjpza9rqvhbpv1h0qsh3f3";
    url = "https://hackage.haskell.org";
    ver = "1.1.5";
  };
  drv = { mkDerivation, aeson, attoparsec, base, bytebuild, byteslice
, bytesmith, bytestring, criterion, deepseq, hashable, HUnit, lib
, natural-arithmetic, old-locale, primitive, QuickCheck, semigroups
, test-framework, test-framework-hunit, test-framework-quickcheck2
, text, text-short, thyme, time, torsor, vector
}:
mkDerivation {
  pname = "chronos";
  version = "1.1.5";
  src = /nix/store/siki35315x8lmjvd0wmrsavbygh4p6f0-source;
  libraryHaskellDepends = [
    aeson attoparsec base bytebuild byteslice bytesmith bytestring
    deepseq hashable natural-arithmetic primitive semigroups text
    text-short torsor vector
  ];
  testHaskellDepends = [
    aeson attoparsec base bytestring deepseq HUnit QuickCheck
    test-framework test-framework-hunit test-framework-quickcheck2 text
    torsor
  ];
  benchmarkHaskellDepends = [
    attoparsec base bytestring criterion deepseq old-locale QuickCheck
    text text-short thyme time vector
  ];
  homepage = "https://github.com/andrewthad/chronos";
  description = "A high-performance time library";
  license = lib.licenses.bsd3;
}
;
}
;
  clock = {
  meta = {
    sha256 = "14gy1a16l5s70pyqlsmylxsiiagas2yflqmjjmrdbzj4g1zxy39r";
    url = "https://hackage.haskell.org";
    ver = "0.8.4";
  };
  drv = { mkDerivation, base, criterion, lib, tasty, tasty-quickcheck }:
mkDerivation {
  pname = "clock";
  version = "0.8.4";
  src = /nix/store/rbsi64yfx248l6pmqqvfviaj5alfpfhw-source;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base tasty tasty-quickcheck ];
  benchmarkHaskellDepends = [ base criterion ];
  homepage = "https://github.com/corsis/clock";
  description = "High-resolution clock functions: monotonic, realtime, cputime";
  license = lib.licenses.bsd3;
}
;
}
;
  either = {
  meta = {
    sha256 = "1dcl2pg45cbjygbxasn0c7qfs4svrmi7fdp9xl0ivxpgg0y648d0";
    url = "https://hackage.haskell.org";
    ver = "5.0.2";
  };
  drv = { mkDerivation, base, bifunctors, lib, mtl, profunctors, QuickCheck
, semigroupoids, test-framework, test-framework-quickcheck2
}:
mkDerivation {
  pname = "either";
  version = "5.0.2";
  src = /nix/store/x3ab6z30yvdny71zxlpy0fqa1k74if1d-source;
  libraryHaskellDepends = [
    base bifunctors mtl profunctors semigroupoids
  ];
  testHaskellDepends = [
    base QuickCheck test-framework test-framework-quickcheck2
  ];
  homepage = "http://github.com/ekmett/either/";
  description = "Combinators for working with sums";
  license = lib.licenses.bsd3;
}
;
}
;
  ghc-tcplugins-extra = {
  meta = {
    sha256 = "03z1ay6ds1v1gqa065ycjmcc4kc56l8gvf4lfpcsbgayqa4xvv4q";
    url = "https://hackage.haskell.org";
    ver = "0.5";
  };
  drv = { mkDerivation, base, ghc, lib }:
mkDerivation {
  pname = "ghc-tcplugins-extra";
  version = "0.5";
  src = /nix/store/1mqzyycq17frwlxbk41592r55iik8lkw-source;
  libraryHaskellDepends = [ base ghc ];
  homepage = "https://github.com/clash-lang/ghc-tcplugins-extra#readme";
  description = "Utilities for writing GHC type-checker plugins";
  license = lib.licenses.bsd2;
}
;
}
;
  incipit-base = {
  meta = {
    sha256 = "17579j3hzsh3ic0272h8ly8k7gz4zm1hv5jqimdam9gcq8alahkl";
    url = "https://hackage.haskell.org";
    ver = "0.4.1.0";
  };
  drv = { mkDerivation, base, bytestring, containers, data-default, lib
, stm, text
}:
mkDerivation {
  pname = "incipit-base";
  version = "0.4.1.0";
  src = /nix/store/9zk69qkk9paqair15m9b1sc2bbb9220a-source;
  libraryHaskellDepends = [
    base bytestring containers data-default stm text
  ];
  homepage = "https://github.com/tek/incipit-core#readme";
  description = "A Prelude for Polysemy – Base Reexports";
  license = "BSD-2-Clause-Patent";
}
;
}
;
  incipit-core = {
  meta = {
    sha256 = "1fm6bf1w8mvpa9qlgxqv3ngf0lyb3057cwv5ajibgbljjaznxpxc";
    url = "https://hackage.haskell.org";
    ver = "0.4.1.0";
  };
  drv = { mkDerivation, base, incipit-base, lib, polysemy }:
mkDerivation {
  pname = "incipit-core";
  version = "0.4.1.0";
  src = /nix/store/cyi2s97p8jcj6mr8ci7mvbfwpfnzii0i-source;
  libraryHaskellDepends = [ base incipit-base polysemy ];
  homepage = "https://github.com/tek/incipit-core#readme";
  description = "A Prelude for Polysemy";
  license = "BSD-2-Clause-Patent";
}
;
}
;
  polysemy-plugin = {
  meta = {
    sha256 = "1c2agk21jj7fwdj6xkagq0prvxknp3zr6q1f480wizssibcvm7y6";
    url = "https://hackage.haskell.org";
    ver = "0.4.5.3";
  };
  drv = { mkDerivation, base, Cabal, cabal-doctest, containers, doctest
, ghc, ghc-tcplugins-extra, hspec, hspec-discover
, inspection-testing, lib, polysemy, should-not-typecheck, syb
, transformers
}:
mkDerivation {
  pname = "polysemy-plugin";
  version = "0.4.5.3";
  src = /nix/store/vhdv7p7lqiarmgai5l0n44yqgczljkb5-source;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    base containers ghc ghc-tcplugins-extra polysemy syb transformers
  ];
  testHaskellDepends = [
    base containers doctest ghc ghc-tcplugins-extra hspec
    hspec-discover inspection-testing polysemy should-not-typecheck syb
    transformers
  ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/polysemy-research/polysemy#readme";
  description = "Disambiguate obvious uses of effects";
  license = lib.licenses.bsd3;
}
;
}
;
  polysemy-test = {
  meta = {
    sha256 = "0bfh37l68a5chhjfr7gqcffsmvdgg5hqclxi0fc5xnqni2mg81ak";
    url = "https://hackage.haskell.org";
    ver = "0.3.1.6";
  };
  drv = { mkDerivation, base, containers, either, hedgehog, lib, path
, path-io, polysemy, polysemy-plugin, relude, string-interpolate
, tasty, tasty-hedgehog, template-haskell, text, transformers
}:
mkDerivation {
  pname = "polysemy-test";
  version = "0.3.1.6";
  src = /nix/store/w39a7g4c71xqi0n2h0szy720vmjcigwj-source;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base containers either hedgehog path path-io polysemy
    polysemy-plugin relude string-interpolate tasty tasty-hedgehog
    template-haskell text transformers
  ];
  testHaskellDepends = [
    base containers either hedgehog path path-io polysemy
    polysemy-plugin relude string-interpolate tasty tasty-hedgehog
    template-haskell text transformers
  ];
  description = "Polysemy effects for testing";
  license = "BSD-2-Clause-Patent";
}
;
}
;
  profunctors = {
  meta = {
    sha256 = "19gnn2br16x52lmvfjj06xblsks0wz3081z0jf0jydncbgm6kfan";
    url = "https://hackage.haskell.org";
    ver = "5.6.2";
  };
  drv = { mkDerivation, base, base-orphans, bifunctors, comonad
, contravariant, distributive, lib, tagged, transformers
}:
mkDerivation {
  pname = "profunctors";
  version = "5.6.2";
  src = /nix/store/d5lsaarmw7n5v0y6kd896z4sd9nnx7b3-source;
  libraryHaskellDepends = [
    base base-orphans bifunctors comonad contravariant distributive
    tagged transformers
  ];
  homepage = "http://github.com/ekmett/profunctors/";
  description = "Profunctors";
  license = lib.licenses.bsd3;
}
;
}
;
  relude = {
  meta = {
    sha256 = "0gmcdwci7r0cb2zjry9ycq0kn7x8bfq40ngjd6xdc0pbh7cz6v8i";
    url = "https://hackage.haskell.org";
    ver = "1.2.2.0";
  };
  drv = { mkDerivation, base, bytestring, containers, deepseq, doctest
, ghc-prim, Glob, hashable, hedgehog, lib, mtl, stm, tasty-bench
, text, transformers, unordered-containers
}:
mkDerivation {
  pname = "relude";
  version = "1.2.2.0";
  src = /nix/store/cmp50jrhkbg65bh89ci8i7jg5kw20rpz-source;
  libraryHaskellDepends = [
    base bytestring containers deepseq ghc-prim hashable mtl stm text
    transformers unordered-containers
  ];
  testHaskellDepends = [
    base bytestring containers doctest Glob hedgehog text
  ];
  benchmarkHaskellDepends = [
    base tasty-bench unordered-containers
  ];
  homepage = "https://github.com/kowainik/relude";
  description = "Safe, performant, user-friendly and lightweight Haskell Standard Library";
  license = lib.licenses.mit;
}
;
}
;
  scientific = {
  meta = {
    sha256 = "09iwj0snmx7vj7x03l4vdcn76zylcgxd9pyz0yxkydgfnn3lvc08";
    url = "https://hackage.haskell.org";
    ver = "0.3.7.0";
  };
  drv = { mkDerivation, base, binary, bytestring, containers, criterion
, deepseq, hashable, integer-logarithms, lib, primitive, QuickCheck
, smallcheck, tasty, tasty-hunit, tasty-quickcheck
, tasty-smallcheck, template-haskell, text
}:
mkDerivation {
  pname = "scientific";
  version = "0.3.7.0";
  src = /nix/store/w1dja7k810rw0zjrx9r91il6im2gq4iv-source;
  libraryHaskellDepends = [
    base binary bytestring containers deepseq hashable
    integer-logarithms primitive template-haskell text
  ];
  testHaskellDepends = [
    base binary bytestring QuickCheck smallcheck tasty tasty-hunit
    tasty-quickcheck tasty-smallcheck text
  ];
  benchmarkHaskellDepends = [ base criterion ];
  homepage = "https://github.com/basvandijk/scientific";
  description = "Numbers represented using scientific notation";
  license = lib.licenses.bsd3;
}
;
}
;
  semigroups = {
  meta = {
    sha256 = "03llc5y6zpzfn9hy71fg2kj7pipip4fphmns9yx47xmryn111d4g";
    url = "https://hackage.haskell.org";
    ver = "0.20";
  };
  drv = { mkDerivation, base, lib }:
mkDerivation {
  pname = "semigroups";
  version = "0.20";
  src = /nix/store/d66bw65cxzc4q2yv87pa8shqbwvh87ny-source;
  libraryHaskellDepends = [ base ];
  homepage = "http://github.com/ekmett/semigroups/";
  description = "Anything that associates";
  license = lib.licenses.bsd3;
}
;
}
;
  split = {
  meta = {
    sha256 = "0l9rhscr8rj968qhqhwzf18mddp5d5c22cwwhzb72q646wxmwnh8";
    url = "https://hackage.haskell.org";
    ver = "0.2.5";
  };
  drv = { mkDerivation, base, lib, QuickCheck }:
mkDerivation {
  pname = "split";
  version = "0.2.5";
  src = /nix/store/kfc5qwwxki2b6gnk4ka7fyavf1ahcfjc-source;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base QuickCheck ];
  description = "Combinator library for splitting lists";
  license = lib.licenses.bsd3;
}
;
}
;
  string-interpolate = {
  meta = {
    sha256 = "0vvcdd9m7z6rxqcf39xdjaz7hv0hbkkxvcpnyxcvldrsqzlhy3r8";
    url = "https://hackage.haskell.org";
    ver = "0.3.4.0";
  };
  drv = { mkDerivation, base, bytestring, criterion, deepseq, formatting
, haskell-src-exts, haskell-src-meta, hspec, hspec-core
, interpolate, lib, neat-interpolation, QuickCheck
, quickcheck-instances, quickcheck-text, quickcheck-unicode, split
, template-haskell, text, text-conversions, unordered-containers
, utf8-string
}:
mkDerivation {
  pname = "string-interpolate";
  version = "0.3.4.0";
  src = /nix/store/igp843v0k826h11znzsjqlig3sbk4as6-source;
  libraryHaskellDepends = [
    base bytestring haskell-src-exts haskell-src-meta split
    template-haskell text text-conversions utf8-string
  ];
  testHaskellDepends = [
    base bytestring hspec hspec-core QuickCheck quickcheck-instances
    quickcheck-text quickcheck-unicode template-haskell text
    unordered-containers
  ];
  benchmarkHaskellDepends = [
    base bytestring criterion deepseq formatting interpolate
    neat-interpolation QuickCheck text
  ];
  homepage = "https://gitlab.com/williamyaoh/string-interpolate/blob/master/README.md";
  description = "Haskell string/text/bytestring interpolation that just works";
  license = lib.licenses.bsd3;
}
;
}
;
  tasty = {
  meta = {
    sha256 = "0zyrixqr29469mar883clxbif1gpnag1sc988y5l11gbzbim1ibc";
    url = "https://hackage.haskell.org";
    ver = "1.3";
  };
  drv = { mkDerivation, ansi-terminal, async, base, clock, containers, lib
, mtl, optparse-applicative, stm, tagged, unbounded-delays, unix
, wcwidth
}:
mkDerivation {
  pname = "tasty";
  version = "1.3";
  src = /nix/store/fvfpwaqmapv518bhqkwj1prmg5h6n0ni-source;
  libraryHaskellDepends = [
    ansi-terminal async base clock containers mtl optparse-applicative
    stm tagged unbounded-delays unix wcwidth
  ];
  homepage = "https://github.com/feuerbach/tasty";
  description = "Modern and extensible testing framework";
  license = lib.licenses.mit;
}
;
}
;
  tasty-hedgehog = {
  meta = {
    sha256 = "04kg2qdnsqzzmj3xggy2jcgidlp21lsjkz4sfnbq7b1yhrv2vbbc";
    url = "https://hackage.haskell.org";
    ver = "1.4.0.2";
  };
  drv = { mkDerivation, base, hedgehog, lib, tagged, tasty
, tasty-expected-failure
}:
mkDerivation {
  pname = "tasty-hedgehog";
  version = "1.4.0.2";
  src = /nix/store/b9mxq4fh65sif22q9a4g041jvp847cyc-source;
  libraryHaskellDepends = [ base hedgehog tagged tasty ];
  testHaskellDepends = [
    base hedgehog tasty tasty-expected-failure
  ];
  homepage = "https://github.com/qfpl/tasty-hedgehog";
  description = "Integration for tasty and hedgehog";
  license = lib.licenses.bsd3;
}
;
}
;
  text-conversions = {
  meta = {
    sha256 = "0lfcp2f8ld46cry5wm2afcn362mb7fp28ii3afji7bns1fvhh6lf";
    url = "https://hackage.haskell.org";
    ver = "0.3.1.1";
  };
  drv = { mkDerivation, base, base16-bytestring, base64-bytestring
, bytestring, hspec, hspec-discover, lib, text
}:
mkDerivation {
  pname = "text-conversions";
  version = "0.3.1.1";
  src = /nix/store/jwh6vj5a4l3kbhlvicra77pg738sskrv-source;
  libraryHaskellDepends = [
    base base16-bytestring base64-bytestring bytestring text
  ];
  testHaskellDepends = [ base bytestring hspec text ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/cjdev/text-conversions";
  description = "Safe conversions between textual types";
  license = lib.licenses.isc;
}
;
}
;
  text-short = {
  meta = {
    sha256 = "08rwbc2zcvbvswvy0kp14jg2wq08ls6m6grywp0srjipavzx11s3";
    url = "https://hackage.haskell.org";
    ver = "0.1.6";
  };
  drv = { mkDerivation, base, binary, bytestring, deepseq, ghc-prim
, hashable, lib, tasty, tasty-hunit, tasty-quickcheck
, template-haskell, text
}:
mkDerivation {
  pname = "text-short";
  version = "0.1.6";
  src = /nix/store/szwhvms3jqw03gz4ydrwilgah3vshhh1-source;
  libraryHaskellDepends = [
    base binary bytestring deepseq ghc-prim hashable template-haskell
    text
  ];
  testHaskellDepends = [
    base binary bytestring tasty tasty-hunit tasty-quickcheck
    template-haskell text
  ];
  description = "Memory-efficient representation of Unicode text strings";
  license = lib.licenses.bsd3;
}
;
}
;
  torsor = {
  meta = {
    sha256 = "07p05f7j6h99pxx1v4j0ya5py4nc93gnbj09pdhl23i2zc75064f";
    url = "https://hackage.haskell.org";
    ver = "0.1";
  };
  drv = { mkDerivation, base, lib }:
mkDerivation {
  pname = "torsor";
  version = "0.1";
  src = /nix/store/320q6gfv9fnpxnxcrckmsblkqvirm8bp-source;
  libraryHaskellDepends = [ base ];
  homepage = "https://github.com/andrewthad/torsor#readme";
  description = "Torsor Typeclass";
  license = lib.licenses.bsd3;
}
;
}
;
  unbounded-delays = {
  meta = {
    sha256 = "1kbh2yr7lwzrhjniyfllsix2zn8bmz9yrkhnq5lxv9ic9bbxnls7";
    url = "https://hackage.haskell.org";
    ver = "0.1.1.1";
  };
  drv = { mkDerivation, base, lib }:
mkDerivation {
  pname = "unbounded-delays";
  version = "0.1.1.1";
  src = /nix/store/hp6mlfj9kg8r7l4gjcak2i7zbxwjzl4s-source;
  libraryHaskellDepends = [ base ];
  homepage = "https://github.com/basvandijk/unbounded-delays";
  description = "Unbounded thread delays and timeouts";
  license = lib.licenses.bsd3;
}
;
}
;
  unordered-containers = {
  meta = {
    sha256 = "0dvlf9by7mkwaxg2x26m6bf5bnqr1l07j6adksavvziiq0x3p135";
    url = "https://hackage.haskell.org";
    ver = "0.2.20";
  };
  drv = { mkDerivation, base, bytestring, ChasingBottoms, containers
, deepseq, hashable, hashmap, HUnit, lib, mtl, nothunks, QuickCheck
, random, tasty, tasty-bench, tasty-hunit, tasty-quickcheck
, template-haskell
}:
mkDerivation {
  pname = "unordered-containers";
  version = "0.2.20";
  src = /nix/store/mp0402hnkp6kfz16skphsdjfxaz088wh-source;
  libraryHaskellDepends = [ base deepseq hashable template-haskell ];
  testHaskellDepends = [
    base ChasingBottoms containers hashable HUnit nothunks QuickCheck
    random tasty tasty-hunit tasty-quickcheck
  ];
  benchmarkHaskellDepends = [
    base bytestring containers deepseq hashable hashmap mtl random
    tasty-bench
  ];
  homepage = "https://github.com/haskell-unordered-containers/unordered-containers";
  description = "Efficient hashing-based container types";
  license = lib.licenses.bsd3;
}
;
}
;
  utf8-string = {
  meta = {
    sha256 = "09i87djx45cinql3mg222m3li08wn8hgmdcp2vqrqc8pn437azrh";
    url = "https://hackage.haskell.org";
    ver = "1.0.2";
  };
  drv = { mkDerivation, base, bytestring, HUnit, lib }:
mkDerivation {
  pname = "utf8-string";
  version = "1.0.2";
  src = /nix/store/q2k5852xjw7pmz417sv4s9fjlddh2ami-source;
  libraryHaskellDepends = [ base bytestring ];
  testHaskellDepends = [ base HUnit ];
  homepage = "https://github.com/glguy/utf8-string/";
  description = "Support for reading and writing UTF8 Strings";
  license = lib.licenses.bsd3;
}
;
}
;
  uuid-types = {
  meta = {
    sha256 = "0kf0877vz9zd9vb9ljab2vx010s6rqq5jskbdlw3nc5b25ycsj3f";
    url = "https://hackage.haskell.org";
    ver = "1.0.5.1";
  };
  drv = { mkDerivation, base, binary, bytestring, deepseq, hashable, lib
, QuickCheck, random, tasty, tasty-hunit, tasty-quickcheck
, template-haskell, text
}:
mkDerivation {
  pname = "uuid-types";
  version = "1.0.5.1";
  src = /nix/store/inkwp5x1qqlzkr0cmk5a3syakdzpifps-source;
  libraryHaskellDepends = [
    base binary bytestring deepseq hashable random template-haskell
    text
  ];
  testHaskellDepends = [
    base binary bytestring QuickCheck tasty tasty-hunit
    tasty-quickcheck template-haskell
  ];
  homepage = "https://github.com/haskell-hvr/uuid";
  description = "Type definitions for Universally Unique Identifiers";
  license = lib.licenses.bsd3;
}
;
}
;
  wcwidth = {
  meta = {
    sha256 = "0131h9vg8dvrqcc2sn0k8y6cb08fazlfhr4922hwv2vbx3cnyy3z";
    url = "https://hackage.haskell.org";
    ver = "0.0.2";
  };
  drv = { mkDerivation, base, containers, lib }:
mkDerivation {
  pname = "wcwidth";
  version = "0.0.2";
  src = /nix/store/n4f5lcschfan070bj3i6fa8pwjx1p94s-source;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base containers ];
  homepage = "http://github.com/solidsnack/wcwidth/";
  description = "Native wcwidth";
  license = lib.licenses.bsd3;
}
;
}
;
};
min = {
};
profiled = {
};
}