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
      polysemy-test = {
        lower = "0.3.1.6";
        upper = "0.11";
      };
      tasty = {
        lower = "1.4.2";
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
      tasty = {
        lower = "1.4.2";
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
      tasty = "1.4.2";
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
      cabal-doctest = {
        version = "1.0.9";
        hash = "0irxfxy1qw7sif4408xdhqycddb4hs3hcf6xfxm65glsnmnmwl2i";
      };
      chronos = {
        version = "1.1.5";
        hash = "1rja3hsf7s4gfm1xq5s2gydx9d0jckcjpza9rqvhbpv1h0qsh3f3";
      };
      clock = {
        version = "0.8.4";
        hash = "14gy1a16l5s70pyqlsmylxsiiagas2yflqmjjmrdbzj4g1zxy39r";
      };
      either = {
        version = "5.0.2";
        hash = "1dcl2pg45cbjygbxasn0c7qfs4svrmi7fdp9xl0ivxpgg0y648d0";
      };
      ghc-tcplugins-extra = {
        version = "0.4.6";
        hash = "0d0b6h23yq4jccv00wgikxr7hqprkf8afzxcy1mrlgwa9158sl3l";
      };
      incipit-base = {
        version = "0.4.1.0";
        hash = "17579j3hzsh3ic0272h8ly8k7gz4zm1hv5jqimdam9gcq8alahkl";
      };
      incipit-core = {
        version = "0.4.1.0";
        hash = "1fm6bf1w8mvpa9qlgxqv3ngf0lyb3057cwv5ajibgbljjaznxpxc";
      };
      polysemy-plugin = {
        version = "0.4.5.2";
        hash = "18y0nfx7x7am7cvj9wwhzal9bqv6sj7ckvmkd16blx4c2nqyikp9";
      };
      polysemy-test = {
        version = "0.3.1.6";
        hash = "0bfh37l68a5chhjfr7gqcffsmvdgg5hqclxi0fc5xnqni2mg81ak";
      };
      profunctors = {
        version = "5.6.2";
        hash = "19gnn2br16x52lmvfjj06xblsks0wz3081z0jf0jydncbgm6kfan";
      };
      relude = {
        version = "1.2.1.0";
        hash = "0scfivrq6p3hlqkj49kh9m9l8nkwbq339bcpc4rrsd0fq9b8ripc";
      };
      semigroups = {
        version = "0.20";
        hash = "03llc5y6zpzfn9hy71fg2kj7pipip4fphmns9yx47xmryn111d4g";
      };
      split = {
        version = "0.2.5";
        hash = "0l9rhscr8rj968qhqhwzf18mddp5d5c22cwwhzb72q646wxmwnh8";
      };
      string-interpolate = {
        version = "0.3.3.0";
        hash = "01hwj10v0xdhxacrlnbaan9dplrp60axfg4z5ny2czx2psigfc0n";
      };
      tasty = {
        version = "1.4.2";
        hash = "0jdr0r9x1apxfma0p5rvyai7sd9wsg22hblzcrxmw7lq34j1606f";
      };
      tasty-hedgehog = {
        version = "1.4.0.2";
        hash = "04kg2qdnsqzzmj3xggy2jcgidlp21lsjkz4sfnbq7b1yhrv2vbbc";
      };
      text-conversions = {
        version = "0.3.1.1";
        hash = "0lfcp2f8ld46cry5wm2afcn362mb7fp28ii3afji7bns1fvhh6lf";
      };
      torsor = {
        version = "0.1";
        hash = "07p05f7j6h99pxx1v4j0ya5py4nc93gnbj09pdhl23i2zc75064f";
      };
      unbounded-delays = {
        version = "0.1.1.1";
        hash = "1kbh2yr7lwzrhjniyfllsix2zn8bmz9yrkhnq5lxv9ic9bbxnls7";
      };
      utf8-string = {
        version = "1.0.2";
        hash = "09i87djx45cinql3mg222m3li08wn8hgmdcp2vqrqc8pn437azrh";
      };
      wcwidth = {
        version = "0.0.2";
        hash = "0131h9vg8dvrqcc2sn0k8y6cb08fazlfhr4922hwv2vbx3cnyy3z";
      };
    };
  };
  resolving = false;
}
