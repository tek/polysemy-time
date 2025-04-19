{
  bounds = {
    polysemy-chronos = {
      base = {
        lower = "4.17.2.1";
        upper = "4.21";
      };
      chronos = {
        lower = "1.1.5";
        upper = "1.2";
      };
      incipit-core = {
        lower = "0.4.1.0";
        upper = "0.7";
      };
      polysemy-chronos = {
        lower = null;
        upper = null;
      };
      polysemy-test = {
        lower = "0.3.1.6";
        upper = "0.11";
      };
      polysemy-time = {
        lower = null;
        upper = null;
      };
      tasty = {
        lower = "1.3";
        upper = "1.6";
      };
    };
    polysemy-time = {
      aeson = {
        lower = "2.1.2.1";
        upper = "2.3";
      };
      base = {
        lower = "4.17.2.1";
        upper = "4.21";
      };
      incipit-core = {
        lower = "0.4.1.0";
        upper = "0.7";
      };
      polysemy-test = {
        lower = "0.3.1.6";
        upper = "0.11";
      };
      polysemy-time = {
        lower = null;
        upper = null;
      };
      tasty = {
        lower = "1.3";
        upper = "1.6";
      };
      template-haskell = {
        lower = "2.19.0.0";
        upper = "2.23";
      };
      time = {
        lower = "1.12.2";
        upper = "1.13";
      };
      torsor = {
        lower = "0.1";
        upper = "0.2";
      };
    };
  };
  versions = {
    latest = {
      aeson = "2.2.3.0";
      base = "4.20.0.0";
      chronos = "1.1.6.2";
      incipit-core = "0.6.1.1";
      polysemy-test = "0.10.0.1";
      tasty = "1.5.3";
      template-haskell = "2.22.0.0";
      time = "1.12.2";
      torsor = "0.1.0.1";
    };
    lower = {
      aeson = "2.1.2.1";
      base = "4.17.2.1";
      chronos = "1.1.5";
      incipit-core = "0.4.1.0";
      polysemy-test = "0.3.1.6";
      tasty = "1.3";
      template-haskell = "2.19.0.0";
      time = "1.12.2";
      torsor = "0.1";
    };
  };
  initial = {
    latest = {};
    lower = {
      aeson = "2.1.2.1";
      chronos = "1.1.5";
      incipit-core = "0.6.0.0";
      polysemy-test = "0.7.0.0";
      tasty = "1.4.2";
      time = "1.12.2";
      torsor = "0.1";
    };
  };
  overrides = {
    latest = {
      chronos = {
        version = "1.1.6.2";
        hash = "1pbfp25py682d17visa4i9rjxmiim8aykrgs7nv2q9anajv88kdx";
      };
      incipit-base = {
        version = "0.6.1.1";
        hash = "08ybv7j94yyznrxnrh744bi3i1a00sz8bf5ddfs9vfgfhhkrg8fn";
      };
      incipit-core = {
        version = "0.6.1.1";
        hash = "0qpw07f8ip6h7srqkbzfxyz1z36n75irhc6465s9xvrii1840b2k";
      };
      polysemy-test = {
        version = "0.10.0.1";
        hash = "1sp9iag1brknmdy0qvmgnmynwc4gbg1jy21w584x1m2hpqi25p6j";
      };
      tasty = {
        version = "1.5.3";
        hash = "1xjlmgsww34asjl9rcwbziw5l4qqbvi5l4b7qvzf4dc7hqkpq1rs";
      };
      tasty-hedgehog = {
        version = "1.4.0.2";
        hash = "04kg2qdnsqzzmj3xggy2jcgidlp21lsjkz4sfnbq7b1yhrv2vbbc";
      };
    };
    lower = {
      base16-bytestring = {
        version = "1.0.2.0";
        hash = "0r3p5q5zxcrk5cbnwdcm435pgx3yjv3slidpjxdsvigdxizq4fyv";
        repo = "hackage.haskell.org";
      };
      base64-bytestring = {
        version = "1.2.1.0";
        hash = "10gyx24hmlqlvyn7z3kr37w36fkfb6lm4v27sxi233gcfvssxv9r";
        repo = "hackage.haskell.org";
      };
      cabal-doctest = {
        version = "1.0.11";
        hash = "152rqpicqpvigjpy4rf1kjlwny1c7ys1r0r123wdjafvv1igflii";
        repo = "hackage.haskell.org";
      };
      chronos = {
        version = "1.1.5";
        hash = "1rja3hsf7s4gfm1xq5s2gydx9d0jckcjpza9rqvhbpv1h0qsh3f3";
        repo = "hackage.haskell.org";
      };
      clock = {
        version = "0.8.4";
        hash = "14gy1a16l5s70pyqlsmylxsiiagas2yflqmjjmrdbzj4g1zxy39r";
        repo = "hackage.haskell.org";
      };
      either = {
        version = "5.0.2";
        hash = "1dcl2pg45cbjygbxasn0c7qfs4svrmi7fdp9xl0ivxpgg0y648d0";
        repo = "hackage.haskell.org";
      };
      ghc-tcplugins-extra = {
        version = "0.5";
        hash = "03z1ay6ds1v1gqa065ycjmcc4kc56l8gvf4lfpcsbgayqa4xvv4q";
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
      polysemy-plugin = {
        version = "0.4.5.3";
        hash = "1c2agk21jj7fwdj6xkagq0prvxknp3zr6q1f480wizssibcvm7y6";
        repo = "hackage.haskell.org";
      };
      polysemy-test = {
        version = "0.3.1.6";
        hash = "0bfh37l68a5chhjfr7gqcffsmvdgg5hqclxi0fc5xnqni2mg81ak";
        repo = "hackage.haskell.org";
      };
      profunctors = {
        version = "5.6.2";
        hash = "19gnn2br16x52lmvfjj06xblsks0wz3081z0jf0jydncbgm6kfan";
        repo = "hackage.haskell.org";
      };
      relude = {
        version = "1.2.2.0";
        hash = "0gmcdwci7r0cb2zjry9ycq0kn7x8bfq40ngjd6xdc0pbh7cz6v8i";
        repo = "hackage.haskell.org";
      };
      scientific = {
        version = "0.3.7.0";
        hash = "09iwj0snmx7vj7x03l4vdcn76zylcgxd9pyz0yxkydgfnn3lvc08";
        repo = "hackage.haskell.org";
        revision = true;
      };
      semigroups = {
        version = "0.20";
        hash = "03llc5y6zpzfn9hy71fg2kj7pipip4fphmns9yx47xmryn111d4g";
        repo = "hackage.haskell.org";
      };
      split = {
        version = "0.2.5";
        hash = "0l9rhscr8rj968qhqhwzf18mddp5d5c22cwwhzb72q646wxmwnh8";
        repo = "hackage.haskell.org";
      };
      string-interpolate = {
        version = "0.3.4.0";
        hash = "0vvcdd9m7z6rxqcf39xdjaz7hv0hbkkxvcpnyxcvldrsqzlhy3r8";
        repo = "hackage.haskell.org";
      };
      tasty = {
        version = "1.3";
        hash = "0zyrixqr29469mar883clxbif1gpnag1sc988y5l11gbzbim1ibc";
        repo = "hackage.haskell.org";
      };
      tasty-hedgehog = {
        version = "1.4.0.2";
        hash = "04kg2qdnsqzzmj3xggy2jcgidlp21lsjkz4sfnbq7b1yhrv2vbbc";
        repo = "hackage.haskell.org";
      };
      text-conversions = {
        version = "0.3.1.1";
        hash = "0lfcp2f8ld46cry5wm2afcn362mb7fp28ii3afji7bns1fvhh6lf";
        repo = "hackage.haskell.org";
      };
      text-short = {
        version = "0.1.6";
        hash = "08rwbc2zcvbvswvy0kp14jg2wq08ls6m6grywp0srjipavzx11s3";
        repo = "hackage.haskell.org";
        revision = true;
      };
      torsor = {
        version = "0.1";
        hash = "07p05f7j6h99pxx1v4j0ya5py4nc93gnbj09pdhl23i2zc75064f";
        repo = "hackage.haskell.org";
      };
      unbounded-delays = {
        version = "0.1.1.1";
        hash = "1kbh2yr7lwzrhjniyfllsix2zn8bmz9yrkhnq5lxv9ic9bbxnls7";
        repo = "hackage.haskell.org";
      };
      unordered-containers = {
        version = "0.2.20";
        hash = "0dvlf9by7mkwaxg2x26m6bf5bnqr1l07j6adksavvziiq0x3p135";
        repo = "hackage.haskell.org";
        revision = true;
      };
      utf8-string = {
        version = "1.0.2";
        hash = "09i87djx45cinql3mg222m3li08wn8hgmdcp2vqrqc8pn437azrh";
        repo = "hackage.haskell.org";
      };
      uuid-types = {
        version = "1.0.5.1";
        hash = "0kf0877vz9zd9vb9ljab2vx010s6rqq5jskbdlw3nc5b25ycsj3f";
        repo = "hackage.haskell.org";
        revision = true;
      };
      wcwidth = {
        version = "0.0.2";
        hash = "0131h9vg8dvrqcc2sn0k8y6cb08fazlfhr4922hwv2vbx3cnyy3z";
        repo = "hackage.haskell.org";
      };
    };
  };
  solver = {
    lower = {};
  };
  resolving = false;
}
