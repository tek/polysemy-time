{
dev = {
  polysemy = {
  meta = {
    sha256 = "01vkiqxcjvvihgg8dvws76sfg0d98z8xyvpnj3g3nz02i078xf8j";
    ver = "1.9.1.2";
  };
  drv = { mkDerivation, async, base, Cabal, cabal-doctest, containers
, doctest, first-class-families, hspec, hspec-discover
, inspection-testing, lib, mtl, stm, syb, template-haskell
, th-abstraction, transformers, type-errors, unagi-chan
}:
mkDerivation {
  pname = "polysemy";
  version = "1.9.1.2";
  src = /nix/store/anfwczj25hh5zcm9y70vb1221wayi1v0-source;
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
  polysemy-plugin = {
  meta = {
    sha256 = "0afmx1vdgmvggk4sb4av91qnm8b3hr2kb4adcj9fhzq2w50393bc";
    ver = "0.4.5.1";
  };
  drv = { mkDerivation, base, Cabal, cabal-doctest, containers, doctest
, ghc, ghc-tcplugins-extra, hspec, hspec-discover
, inspection-testing, lib, polysemy, should-not-typecheck, syb
, transformers
}:
mkDerivation {
  pname = "polysemy-plugin";
  version = "0.4.5.1";
  src = /nix/store/02adx7h7zmis7gay1h0irskrkp7hbql5-source;
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
    sha256 = "1adkp48v04klsjyv8846w7ryf1fiqxb4ga69mps9vg2bp9fj5i7j";
    ver = "0.9.0.0";
  };
  drv = { mkDerivation, base, hedgehog, incipit-core, lib, path, path-io
, polysemy, tasty, tasty-hedgehog, transformers
}:
mkDerivation {
  pname = "polysemy-test";
  version = "0.9.0.0";
  src = /nix/store/jjk10ix28006wr8ljfv4pj6k76xckpsn-source;
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
};
ghc92 = {
  polysemy = {
  meta = {
    sha256 = "01vkiqxcjvvihgg8dvws76sfg0d98z8xyvpnj3g3nz02i078xf8j";
    ver = "1.9.1.2";
  };
  drv = { mkDerivation, async, base, Cabal, cabal-doctest, containers
, doctest, first-class-families, hspec, hspec-discover
, inspection-testing, lib, mtl, stm, syb, template-haskell
, th-abstraction, transformers, type-errors, unagi-chan
}:
mkDerivation {
  pname = "polysemy";
  version = "1.9.1.2";
  src = /nix/store/anfwczj25hh5zcm9y70vb1221wayi1v0-source;
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
  polysemy-plugin = {
  meta = {
    sha256 = "0afmx1vdgmvggk4sb4av91qnm8b3hr2kb4adcj9fhzq2w50393bc";
    ver = "0.4.5.1";
  };
  drv = { mkDerivation, base, Cabal, cabal-doctest, containers, doctest
, ghc, ghc-tcplugins-extra, hspec, hspec-discover
, inspection-testing, lib, polysemy, should-not-typecheck, syb
, transformers
}:
mkDerivation {
  pname = "polysemy-plugin";
  version = "0.4.5.1";
  src = /nix/store/02adx7h7zmis7gay1h0irskrkp7hbql5-source;
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
};
ghc94 = {
  polysemy = {
  meta = {
    sha256 = "01vkiqxcjvvihgg8dvws76sfg0d98z8xyvpnj3g3nz02i078xf8j";
    ver = "1.9.1.2";
  };
  drv = { mkDerivation, async, base, Cabal, cabal-doctest, containers
, doctest, first-class-families, hspec, hspec-discover
, inspection-testing, lib, mtl, stm, syb, template-haskell
, th-abstraction, transformers, type-errors, unagi-chan
}:
mkDerivation {
  pname = "polysemy";
  version = "1.9.1.2";
  src = /nix/store/anfwczj25hh5zcm9y70vb1221wayi1v0-source;
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
  polysemy-plugin = {
  meta = {
    sha256 = "0afmx1vdgmvggk4sb4av91qnm8b3hr2kb4adcj9fhzq2w50393bc";
    ver = "0.4.5.1";
  };
  drv = { mkDerivation, base, Cabal, cabal-doctest, containers, doctest
, ghc, ghc-tcplugins-extra, hspec, hspec-discover
, inspection-testing, lib, polysemy, should-not-typecheck, syb
, transformers
}:
mkDerivation {
  pname = "polysemy-plugin";
  version = "0.4.5.1";
  src = /nix/store/02adx7h7zmis7gay1h0irskrkp7hbql5-source;
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
};
ghc96 = {
  bytebuild = {
  meta = {
    sha256 = "1wmhsb8si083gi4zh58vk1l13ixs4p4lhjdcra5zv4amxr4drf0m";
    ver = "0.3.14.0";
  };
  drv = { mkDerivation, base, byteslice, bytestring, gauge
, haskell-src-meta, integer-logarithms, lib, natural-arithmetic
, primitive, primitive-offset, primitive-unlifted, QuickCheck
, quickcheck-classes, quickcheck-instances, run-st, tasty
, tasty-hunit, tasty-quickcheck, template-haskell, text, text-short
, vector, wide-word, zigzag
}:
mkDerivation {
  pname = "bytebuild";
  version = "0.3.14.0";
  src = /nix/store/3i1aki7i9xcrpsy76ihwcyfgbha43dp6-source;
  libraryHaskellDepends = [
    base byteslice bytestring haskell-src-meta integer-logarithms
    natural-arithmetic primitive primitive-offset run-st
    template-haskell text text-short wide-word zigzag
  ];
  testHaskellDepends = [
    base byteslice bytestring natural-arithmetic primitive
    primitive-unlifted QuickCheck quickcheck-classes
    quickcheck-instances tasty tasty-hunit tasty-quickcheck text
    text-short vector wide-word
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
  chronos = {
  meta = {
    sha256 = "009z2zmy5gba3h6r638r7g45bx1ylibhl28bf1crfl17j17kp3d1";
    ver = "1.1.5.1";
  };
  drv = { mkDerivation, aeson, attoparsec, base, bytebuild, byteslice
, bytesmith, bytestring, criterion, deepseq, hashable, HUnit, lib
, natural-arithmetic, old-locale, primitive, QuickCheck, semigroups
, test-framework, test-framework-hunit, test-framework-quickcheck2
, text, text-short, thyme, time, torsor, vector
}:
mkDerivation {
  pname = "chronos";
  version = "1.1.5.1";
  src = /nix/store/zlfagwlcm6ypbmnwfvizf7d7qv7dspzp-source;
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
  polysemy = {
  meta = {
    sha256 = "01vkiqxcjvvihgg8dvws76sfg0d98z8xyvpnj3g3nz02i078xf8j";
    ver = "1.9.1.2";
  };
  drv = { mkDerivation, async, base, Cabal, cabal-doctest, containers
, doctest, first-class-families, hspec, hspec-discover
, inspection-testing, lib, mtl, stm, syb, template-haskell
, th-abstraction, transformers, type-errors, unagi-chan
}:
mkDerivation {
  pname = "polysemy";
  version = "1.9.1.2";
  src = /nix/store/anfwczj25hh5zcm9y70vb1221wayi1v0-source;
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
  polysemy-plugin = {
  meta = {
    sha256 = "0afmx1vdgmvggk4sb4av91qnm8b3hr2kb4adcj9fhzq2w50393bc";
    ver = "0.4.5.1";
  };
  drv = { mkDerivation, base, Cabal, cabal-doctest, containers, doctest
, ghc, ghc-tcplugins-extra, hspec, hspec-discover
, inspection-testing, lib, polysemy, should-not-typecheck, syb
, transformers
}:
mkDerivation {
  pname = "polysemy-plugin";
  version = "0.4.5.1";
  src = /nix/store/02adx7h7zmis7gay1h0irskrkp7hbql5-source;
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
};
hls = {
};
min = {
  polysemy = {
  meta = {
    sha256 = "01vkiqxcjvvihgg8dvws76sfg0d98z8xyvpnj3g3nz02i078xf8j";
    ver = "1.9.1.2";
  };
  drv = { mkDerivation, async, base, Cabal, cabal-doctest, containers
, doctest, first-class-families, hspec, hspec-discover
, inspection-testing, lib, mtl, stm, syb, template-haskell
, th-abstraction, transformers, type-errors, unagi-chan
}:
mkDerivation {
  pname = "polysemy";
  version = "1.9.1.2";
  src = /nix/store/anfwczj25hh5zcm9y70vb1221wayi1v0-source;
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
  polysemy-plugin = {
  meta = {
    sha256 = "0afmx1vdgmvggk4sb4av91qnm8b3hr2kb4adcj9fhzq2w50393bc";
    ver = "0.4.5.1";
  };
  drv = { mkDerivation, base, Cabal, cabal-doctest, containers, doctest
, ghc, ghc-tcplugins-extra, hspec, hspec-discover
, inspection-testing, lib, polysemy, should-not-typecheck, syb
, transformers
}:
mkDerivation {
  pname = "polysemy-plugin";
  version = "0.4.5.1";
  src = /nix/store/02adx7h7zmis7gay1h0irskrkp7hbql5-source;
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
    sha256 = "1adkp48v04klsjyv8846w7ryf1fiqxb4ga69mps9vg2bp9fj5i7j";
    ver = "0.9.0.0";
  };
  drv = { mkDerivation, base, hedgehog, incipit-core, lib, path, path-io
, polysemy, tasty, tasty-hedgehog, transformers
}:
mkDerivation {
  pname = "polysemy-test";
  version = "0.9.0.0";
  src = /nix/store/jjk10ix28006wr8ljfv4pj6k76xckpsn-source;
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
};
}