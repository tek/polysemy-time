{
  bounds = {
    polysemy-chronos = {
      base = {
        lower = "4.17.2.1";
        upper = "4.22";
      };
      chronos = {
        lower = "1.1.5";
        upper = "1.2";
      };
      incipit-core = {
        lower = "0.4.1.0";
        upper = "0.8";
      };
      polysemy-chronos = {
        lower = null;
        upper = "0.8";
      };
      polysemy-test = {
        lower = "0.10.0.1";
        upper = "0.12";
      };
      polysemy-time = {
        lower = null;
        upper = "0.8";
      };
      tasty = {
        lower = "1.5.2";
        upper = "1.6";
      };
    };
    polysemy-time = {
      aeson = {
        lower = "2.1.0.0";
        upper = "2.3";
      };
      base = {
        lower = "4.17.2.1";
        upper = "4.22";
      };
      incipit-core = {
        lower = "0.4.1.0";
        upper = "0.8";
      };
      polysemy-test = {
        lower = "0.10.0.1";
        upper = "0.12";
      };
      polysemy-time = {
        lower = null;
        upper = "0.8";
      };
      tasty = {
        lower = "1.5.2";
        upper = "1.6";
      };
      template-haskell = {
        lower = "2.19.0.0";
        upper = "2.24";
      };
      time = {
        lower = "1.9.2";
        upper = "1.15";
      };
      torsor = {
        lower = "0.1";
        upper = "0.2";
      };
    };
  };
  versions = {
    latest = {
      aeson = "2.2.4.1";
      base = "4.21.0.0";
      chronos = "1.1.7.0";
      incipit-core = "0.7.0.1";
      polysemy-test = "0.11.0.1";
      tasty = "1.5.4";
      template-haskell = "2.23.0.0";
      time = "1.14";
      torsor = "0.1.0.1";
    };
    lower = {
      aeson = "2.1.0.0";
      base = "4.17.2.1";
      chronos = "1.1.5";
      incipit-core = "0.4.1.0";
      polysemy-test = "0.10.0.1";
      tasty = "1.5.2";
      template-haskell = "2.19.0.0";
      time = "1.9.2";
      torsor = "0.1";
    };
  };
  initial = {
    latest = {};
    lower = {
      aeson = "2.1.0.0";
      chronos = "1.1.5";
      incipit-core = "0.7.0.1";
      polysemy-test = "0.11.0.1";
      tasty = "1.5.2";
      time = "1.12";
      torsor = "0.1";
    };
  };
  overrides = {
    latest = {
      aeson = {
        version = "2.2.4.1";
        hash = "1hf13pxldfyv49c4518s44zfspg6r54wylimca7kp59lhh5w099j";
        repo = "hackage.haskell.org";
      };
      chronos = {
        version = "1.1.7.0";
        hash = "0kazqi6adm7ph19gm830cm44jy7zqiwib53gk495zghiz0rinhsr";
        repo = "hackage.haskell.org";
      };
      incipit-core = {
        version = "0.7.0.1";
        hash = "1bnaqzdc1vs9vcdlbaljdwv586syam3ahppqq9lwmg2jcvqp2zqr";
        repo = "hackage.haskell.org";
      };
      path = {
        version = "0.9.6";
        hash = "16hgrkvd27c9vp5447d1dv3b3fi0fv0jfig10h2j37mzk4850wg8";
        repo = "hackage.haskell.org";
      };
      path-io = {
        version = "1.8.2";
        hash = "063ma7gzqr5c6s8a1yv72jgll3xdajvgclbc8w0ddmqgcrb62x2k";
        repo = "hackage.haskell.org";
      };
      polysemy-test = {
        version = "0.11.0.1";
        hash = "0faajcwslgkjigakimz5sxvcd92p8vdzafway8js8622jmprjqjb";
        repo = "hackage.haskell.org";
      };
      tasty = {
        version = "1.5.4";
        hash = "0x6khif6n0rzfgkvrbiagg1sj0lwmjfr6qarjnjwmb9ywdk7598b";
        repo = "hackage.haskell.org";
      };
      tasty-hedgehog = {
        version = "1.4.0.2";
        hash = "04kg2qdnsqzzmj3xggy2jcgidlp21lsjkz4sfnbq7b1yhrv2vbbc";
        repo = "hackage.haskell.org";
      };
    };
    lower = {
      Cabal = {
        version = "3.14.1.0";
        hash = "12vhcrkb0rgaskbf2ac87pppr8r961khkxx0zvycd7yzgk9lxaz0";
        repo = "hackage.haskell.org";
      };
      Cabal-syntax = {
        version = "3.14.2.0";
        hash = "1z07jzrxkmh9gqrq64lm594y65y9d4x4i1rmg2cy9x4vwygg3jyn";
        repo = "hackage.haskell.org";
      };
      OneTuple = {
        version = "0.3.1";
        hash = "0mb81j6zhvzq7h9yyhi9cszrq1g5d4lv3a8wpwimcvzbyg9bdd6p";
        repo = "hackage.haskell.org";
      };
      QuickCheck = {
        version = "2.14.3";
        hash = "18451rdmih1jkrsrckdcix71zqihc4h2caic7qzizxjg4hqpapji";
        repo = "hackage.haskell.org";
      };
      aeson = {
        version = "2.1.0.0";
        hash = "08s162yh716aaxd42k1kyv18p9nsyab42ns4340kvs6r0i8riwsi";
        repo = "hackage.haskell.org";
      };
      alex = {
        version = "3.5.4.2";
        hash = "117l3ayha86iw2qld296vmycqj6qld1951ar41sghj3h3jj5b3by";
        repo = "hackage.haskell.org";
      };
      assoc = {
        version = "1.0.2";
        hash = "1sfc21z18sf8rpsbcr77kgw7qjpm5cm1d24n5ifsm2zid88v8fs9";
        repo = "hackage.haskell.org";
      };
      async = {
        version = "2.2.6";
        hash = "1731pcifiskq6g1b72p34phx85l65ax7mbjw11310b3zwzk0ldyn";
        repo = "hackage.haskell.org";
      };
      atomic-primops = {
        version = "0.8.8";
        hash = "1razf9zq71am8x1813rrq8m14z6lnrkaacw4zcr5rii6f1q1l6xh";
        repo = "hackage.haskell.org";
      };
      attoparsec = {
        version = "0.14.4";
        hash = "0y9dph5axyvr1bfcvmz6qh50bjcp50m2ljra14960anc6g74a3c8";
        repo = "hackage.haskell.org";
      };
      base-compat = {
        version = "0.12.3";
        hash = "0vnns2imggv0b9gbbd9k0p8hdwlimka50gqbvknwkwbnv3kil7lb";
        repo = "hackage.haskell.org";
      };
      base-compat-batteries = {
        version = "0.12.3";
        hash = "0jg1wki5qbghjd5ra23ldc69jal9jjwrwp6wz8gg4gcrjlxbwg7m";
        repo = "hackage.haskell.org";
      };
      bifunctors = {
        version = "5.5.15";
        hash = "0qymwahcn7nqw3n9hvgh0nqhpm6p2ci1grmnwwfplvhxsaka91aj";
        repo = "hackage.haskell.org";
      };
      bytebuild = {
        version = "0.3.17.0";
        hash = "130n1pc4pxxsisiz9mfv6cxbykl7gdz2cvdbnvq5jkhdivrm3izf";
        repo = "hackage.haskell.org";
      };
      byteslice = {
        version = "0.2.15.0";
        hash = "1visf8kggxd305vihzk22wsw0find1x93xwqh544hb2amr9gfkiz";
        repo = "hackage.haskell.org";
      };
      bytesmith = {
        version = "0.3.11.1";
        hash = "0pkmxlww2g20lfq22s5n332ff9mh0a5qjmlvvi4bh8mbf6r2jc1m";
        repo = "hackage.haskell.org";
      };
      cabal-doctest = {
        version = "1.0.12";
        hash = "094mvqgh9bhx5v9xanzkhcm8pcxzmkaa68lr3bqpjzkdxydx81nk";
        repo = "hackage.haskell.org";
      };
      chronos = {
        version = "1.1.5";
        hash = "1rja3hsf7s4gfm1xq5s2gydx9d0jckcjpza9rqvhbpv1h0qsh3f3";
        repo = "hackage.haskell.org";
      };
      concurrent-output = {
        version = "1.10.21";
        hash = "1w87rrf337s8wc4z3dkh2mk990003jsk18ry5yawv4465k4yvamw";
        repo = "hackage.haskell.org";
      };
      constraints = {
        version = "0.14.4";
        hash = "00cjd15kn30qgq541s0g3sd2lnvrdswx3bkafk0bmrg9b0kdb6hg";
        repo = "hackage.haskell.org";
      };
      contiguous = {
        version = "0.6.4.2";
        hash = "1vkqnggzniw24241lrmww7bmpprcpn12z5rrskxpq33wmad3wvsz";
        repo = "hackage.haskell.org";
      };
      data-fix = {
        version = "0.3.4";
        hash = "0x8r2r8gmdvsclaszg90zn7gla6s8r6salbvgfsp0rscdjzj01ry";
        repo = "hackage.haskell.org";
      };
      directory = {
        version = "1.3.7.1";
        hash = "1578syli8il7a4hs5c55jjw4vwlsfmn573ggr7cy6c70xsw3pviv";
        repo = "hackage.haskell.org";
      };
      hashable = {
        version = "1.4.4.0";
        hash = "0a8jcfmak3b130x5xim4d6qsqmfp8779wvq5va9irncn6827ihzi";
        repo = "hackage.haskell.org";
      };
      haskell-src-meta = {
        version = "0.8.15";
        hash = "0ccwgfkb1n31wwfysdhc1mqpcnnxnczwmz3d4avm9yn9a5m1nh4s";
        repo = "hackage.haskell.org";
      };
      hedgehog = {
        version = "1.5";
        hash = "1hz8xrg5p6vplvcj8c7pgidqnwqjmqahs9dla50nqpbcbdh932ll";
        repo = "hackage.haskell.org";
      };
      incipit-base = {
        version = "0.4.1.0";
        hash = "17579j3hzsh3ic0272h8ly8k7gz4zm1hv5jqimdam9gcq8alahkl";
        repo = "hackage.haskell.org";
      };
      incipit-core = {
        version = "0.4.1.0";
        hash = "1fm6bf1w8mvpa9qlgxqv3ngf0lyb3057cwv5ajibgbljjaznxpxc";
        repo = "hackage.haskell.org";
      };
      indexed-traversable-instances = {
        version = "0.1.2.1";
        hash = "1issj9yfpxnshm6k7xq3wmmgrhn87cb0jalp0d1ls3zqx0qjrr03";
        repo = "hackage.haskell.org";
      };
      lifted-async = {
        version = "0.10.2.7";
        hash = "0cgzs8sfr3l7ah5nnscpp50v5mmvc4hqf02zdi4h344dbbha10fy";
        repo = "hackage.haskell.org";
      };
      natural-arithmetic = {
        version = "0.1.4.0";
        hash = "1zkin27ngjzfa2gfjn4rp77v6n3vj93kgvmvfpr0782nbhhh5xf6";
        repo = "hackage.haskell.org";
      };
      optparse-applicative = {
        version = "0.18.1.0";
        hash = "0wggvi67lm2amw0igmpfqs75jvy91zv42v33c12vmk9fdqkwalmg";
        repo = "hackage.haskell.org";
      };
      path = {
        version = "0.9.5";
        hash = "05b84rizmrii847pq2fbvlpna796bwxha1vc01c3vxb2rhrknrf7";
        repo = "hackage.haskell.org";
      };
      path-io = {
        version = "1.8.2";
        hash = "063ma7gzqr5c6s8a1yv72jgll3xdajvgclbc8w0ddmqgcrb62x2k";
        repo = "hackage.haskell.org";
      };
      polysemy = {
        version = "1.9.2.0";
        hash = "00dq1ffsd9bld5zag4l2qssbmm4yb234cirsn5f19fmx43cdgngl";
        repo = "hackage.haskell.org";
      };
      polysemy-test = {
        version = "0.10.0.1";
        hash = "1sp9iag1brknmdy0qvmgnmynwc4gbg1jy21w584x1m2hpqi25p6j";
        repo = "hackage.haskell.org";
      };
      primitive = {
        version = "0.7.4.0";
        hash = "0n7r8al9wgz4r7jzizapn1dbnkqxwx2c4lqkgfm5q5bxj8fl7g1c";
        repo = "hackage.haskell.org";
      };
      primitive-addr = {
        version = "0.1.0.3";
        hash = "0b01fgjlh380sax6n20sjlw8lfalirhjxaf1iv2qgifzv2sc0xwk";
        repo = "hackage.haskell.org";
      };
      primitive-offset = {
        version = "0.2.0.1";
        hash = "0c5rvyfbh3ly6p38p5cnikh6a0is7gn7fj0ddn168c8df1cqalw5";
        repo = "hackage.haskell.org";
      };
      primitive-unlifted = {
        version = "2.2.0.0";
        hash = "1z4nh2pv9ylbc9mw9dfmjschyn6ci0rqhz5nn9mld3wz45a15aq5";
        repo = "hackage.haskell.org";
      };
      process = {
        version = "1.6.25.0";
        hash = "0nwp9f853rlbpsw4vfkjj0y2gxcmwawjkmxmr1x4i72nx9wsi740";
        repo = "hackage.haskell.org";
      };
      resourcet = {
        version = "1.3.0";
        hash = "0ffmm850z3n95vyj33gfqk606kfn6d50b9bnylqn8y4zrcv5yjmk";
        repo = "hackage.haskell.org";
      };
      run-st = {
        version = "0.1.3.3";
        hash = "1x5brxdbncfgzvdl8k6h00zpzzv319j7iw3k5lgrimhdm0jz2vz7";
        repo = "hackage.haskell.org";
      };
      scientific = {
        version = "0.3.7.0";
        hash = "09iwj0snmx7vj7x03l4vdcn76zylcgxd9pyz0yxkydgfnn3lvc08";
        repo = "hackage.haskell.org";
      };
      semialign = {
        version = "1.2.0.1";
        hash = "0mpw54c3s0x70k5l52a57yhnmbgrksb3dn0vjq4m37spyzsfl1v2";
        repo = "hackage.haskell.org";
      };
      semigroupoids = {
        version = "5.3.7";
        hash = "0sknyh441xrna6w6d65j189n59najbp8h7g2ndr9qswxh7z2qaf1";
        repo = "hackage.haskell.org";
      };
      semigroups = {
        version = "0.20.1";
        hash = "12z73rd84xdzy7mdppg65hz5fki9sj8gqwhj4128c31dm387ywsl";
        repo = "hackage.haskell.org";
      };
      strict = {
        version = "0.4.0.1";
        hash = "0xhr98m2632k2pic8q9bpnm3mp9098mmg4s66ds052b92494k49f";
        repo = "hackage.haskell.org";
      };
      tasty = {
        version = "1.5.2";
        hash = "1jqrcmibqv03109qc6lhi2jnip4mxygcd0j4j0g1n0q0akcplica";
        repo = "hackage.haskell.org";
      };
      tasty-hedgehog = {
        version = "1.4.0.2";
        hash = "04kg2qdnsqzzmj3xggy2jcgidlp21lsjkz4sfnbq7b1yhrv2vbbc";
        repo = "hackage.haskell.org";
      };
      temporary = {
        version = "1.3";
        hash = "17nb9mzhfg07y1308qv1n018dy7rljs8rrjdkn1c22rahsqg7kk9";
        repo = "hackage.haskell.org";
      };
      text-short = {
        version = "0.1.6.1";
        hash = "1yzyzklry9cdc12283b0zf0kpa8nb7gixmdaf3l8x7388zpxhhay";
        repo = "hackage.haskell.org";
      };
      th-abstraction = {
        version = "0.4.5.0";
        hash = "19nh7a9b4yif6sijp6xns6xlxcr1mcyrqx3cfbp5bdm7mkbda7a9";
        repo = "hackage.haskell.org";
      };
      th-expand-syns = {
        version = "0.4.12.0";
        hash = "05p82h3hb7ayidc98qq2bgj790d7km9ixp5ijgc1qqkksg3php6z";
        repo = "hackage.haskell.org";
      };
      th-lift = {
        version = "0.8.4";
        hash = "0rp32lkvx22alxc7c1mxgf224jyanfy93ry70zwdn6zzj50mnbhc";
        repo = "hackage.haskell.org";
      };
      th-orphans = {
        version = "0.13.17";
        hash = "0xzd58ak287rvdf67v8xjxqvx00crpsaa37n447xl85qrpk43fmk";
        repo = "hackage.haskell.org";
      };
      th-reify-many = {
        version = "0.1.10";
        hash = "0g9axz1iszl02cxvy2zgmzinjvz8pbsfq3lzhspshlw5bgcsld39";
        repo = "hackage.haskell.org";
      };
      these = {
        version = "1.1.1.1";
        hash = "1i1nfh41vflvqxi8w8n2s35ymx2z9119dg5zmd2r23ya7vwvaka1";
        repo = "hackage.haskell.org";
      };
      time = {
        version = "1.9.2";
        hash = "091g1253v0gdvwcidc2mpiiwwp1lxbq9np4sf56vhgjwlhjspqfn";
        repo = "hackage.haskell.org";
      };
      time-compat = {
        version = "1.9.9";
        hash = "02yq6qc9fbawpxkypaf4nm9vidfv5vvgidxyj4r3dxa4lb29jd2p";
        repo = "hackage.haskell.org";
      };
      torsor = {
        version = "0.1";
        hash = "07p05f7j6h99pxx1v4j0ya5py4nc93gnbj09pdhl23i2zc75064f";
        repo = "hackage.haskell.org";
      };
      tuples = {
        version = "0.1.0.0";
        hash = "1cn7cjrsigimwmxnw1jm1fvaw5r9k4dia9jwwbc0yx7wc9rj8gyx";
        repo = "hackage.haskell.org";
      };
      type-errors = {
        version = "0.2.0.2";
        hash = "09rkyqhx8jnzqiq7gpcm5jd1xd435h0ma0b2sff18lk31qv01x6g";
        repo = "hackage.haskell.org";
      };
      unagi-chan = {
        version = "0.4.1.4";
        hash = "1glfzdm732p0zbwq6vg0syw4cg7f72k1982rc6ha8wyr46czdlmm";
        repo = "hackage.haskell.org";
      };
      unix = {
        version = "2.7.3";
        hash = "0z1477vlj9yzd3vv0s0605prfpvki3xablbl6nqs2c2vg6xlip7v";
        repo = "hackage.haskell.org";
      };
      unix-compat = {
        version = "0.7.4.1";
        hash = "0bh54fnsgsvxx62bk4q2h15xgzmww0x2ijg7438slrb1n9ibnhzx";
        repo = "hackage.haskell.org";
      };
      unordered-containers = {
        version = "0.2.21";
        hash = "0na84q5vxxww3pmz72ihpx4j7dhk71z28r55i7j0pq7mj27jasb0";
        repo = "hackage.haskell.org";
      };
      uuid-types = {
        version = "1.0.6.1";
        hash = "1jrid43smmfcchrfwpzkxil16a4c5016y4b49yjka0sildj1lprg";
        repo = "hackage.haskell.org";
      };
      vector = {
        version = "0.13.2.0";
        hash = "0mgc7ikhdgqwsj5skdxsf6v3a1iqkiiysqj94qnbg40ff8nbai4x";
        repo = "hackage.haskell.org";
      };
      wide-word = {
        version = "0.1.9.0";
        hash = "0f7i617wrbjmxx8nqmgd0af4vgsprkg8ng7xh3lpw2d4qnkgdq4i";
        repo = "hackage.haskell.org";
      };
      witherable = {
        version = "0.4.2";
        hash = "1ga4al351kwcfvsdr1ngyzj4aypvl46w357jflmgxacad8iqx4ik";
        repo = "hackage.haskell.org";
      };
    };
  };
  solver = {
    latest = {
      bytesmith = {
        jailbreak = true;
      };
      polysemy-test = {
        jailbreak = true;
      };
    };
    lower = {
      chronos = {
        jailbreak = true;
      };
    };
  };
  packages = {
    polysemy-chronos = {
      version = "0.7.0.2";
    };
    polysemy-time = {
      version = "0.7.0.2";
    };
  };
  resolving = false;
}
