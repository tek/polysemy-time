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
  chronos = {
  meta = {
    sha256 = "1pbfp25py682d17visa4i9rjxmiim8aykrgs7nv2q9anajv88kdx";
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
  incipit-base = {
  meta = {
    sha256 = "08ybv7j94yyznrxnrh744bi3i1a00sz8bf5ddfs9vfgfhhkrg8fn";
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
  polysemy-test = {
  meta = {
    sha256 = "1sp9iag1brknmdy0qvmgnmynwc4gbg1jy21w584x1m2hpqi25p6j";
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
  tasty = {
  meta = {
    sha256 = "1xjlmgsww34asjl9rcwbziw5l4qqbvi5l4b7qvzf4dc7hqkpq1rs";
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