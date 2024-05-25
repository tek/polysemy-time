{
  bounds = {
    polysemy-chronos = {
      base = {
        lower = "4.17.2.1";
        upper = "4.20";
      };
      chronos = {
        lower = "1.1.5";
        upper = null;
      };
      incipit-core = {
        lower = "0.4.1.0";
        upper = "0.7";
      };
      polysemy-test = {
        lower = "0.6.0.0";
        upper = null;
      };
      tasty = {
        lower = "1.4.2";
        upper = "1.5";
      };
    };
    polysemy-time = {
      aeson = {
        lower = "2.1.0.0";
        upper = null;
      };
      base = {
        lower = "4.17.2.1";
        upper = "4.20";
      };
      incipit-core = {
        lower = "0.4.1.0";
        upper = "0.7";
      };
      polysemy-test = {
        lower = "0.6.0.0";
        upper = null;
      };
      tasty = {
        lower = "1.4.2";
        upper = "1.5";
      };
      template-haskell = {
        lower = "2.19.0.0";
        upper = null;
      };
      time = {
        lower = "1.9.2";
        upper = null;
      };
      torsor = {
        lower = "0.1";
        upper = null;
      };
    };
  };
  versions = {
    latest-polysemy-chronos = {
      base = "4.19.1.0";
      incipit-core = "0.6.0.0";
      tasty = "1.4.3";
    };
    latest-polysemy-time = {
      base = "4.19.1.0";
      incipit-core = "0.6.0.0";
      tasty = "1.4.3";
    };
    lower-polysemy-chronos = {
      base = "4.17.2.1";
      chronos = "1.1.5";
      incipit-core = "0.4.1.0";
      polysemy-test = "0.6.0.0";
      tasty = "1.4.2";
    };
    lower-polysemy-time = {
      aeson = "2.1.0.0";
      base = "4.17.2.1";
      incipit-core = "0.4.1.0";
      polysemy-test = "0.6.0.0";
      tasty = "1.4.2";
      template-haskell = "2.19.0.0";
      time = "1.9.2";
      torsor = "0.1";
    };
  };
  initial = {
    latest-polysemy-chronos = {};
    latest-polysemy-time = {};
    lower-polysemy-chronos = {
      chronos = "1.1.5";
      incipit-core = "0.6.0.0";
      polysemy-test = "0.7.0.0";
      tasty = "1.4.2";
    };
    lower-polysemy-time = {
      aeson = "2.2.0.0";
      incipit-core = "0.6.0.0";
      polysemy-test = "0.7.0.0";
      tasty = "1.4.2";
      time = "1.12.2";
      torsor = "0.1";
    };
  };
  overrides = {
    latest-polysemy-chronos = {
      incipit-base = {
        version = "0.6.0.0";
        hash = "1hck35yfy0dcgimgnd90w02zvv7x7k456bljrbx2mwxalnhav9gf";
      };
      incipit-core = {
        version = "0.6.0.0";
        hash = "0gmngb4pinkpbsnclrgs6x016ffnls1g4xzz0hdzg2rpyl63d5ph";
      };
      path-io = {
        version = "1.8.2";
        hash = "063ma7gzqr5c6s8a1yv72jgll3xdajvgclbc8w0ddmqgcrb62x2k";
      };
    };
    latest-polysemy-time = {
      incipit-base = {
        version = "0.6.0.0";
        hash = "1hck35yfy0dcgimgnd90w02zvv7x7k456bljrbx2mwxalnhav9gf";
      };
      incipit-core = {
        version = "0.6.0.0";
        hash = "0gmngb4pinkpbsnclrgs6x016ffnls1g4xzz0hdzg2rpyl63d5ph";
      };
      path-io = {
        version = "1.8.2";
        hash = "063ma7gzqr5c6s8a1yv72jgll3xdajvgclbc8w0ddmqgcrb62x2k";
      };
    };
    lower-polysemy-chronos = {
      chronos = {
        version = "1.1.5";
        hash = "1rja3hsf7s4gfm1xq5s2gydx9d0jckcjpza9rqvhbpv1h0qsh3f3";
      };
      clock = {
        version = "0.8.4";
        hash = "14gy1a16l5s70pyqlsmylxsiiagas2yflqmjjmrdbzj4g1zxy39r";
      };
      incipit-base = {
        version = "0.4.1.0";
        hash = "17579j3hzsh3ic0272h8ly8k7gz4zm1hv5jqimdam9gcq8alahkl";
      };
      incipit-core = {
        version = "0.4.1.0";
        hash = "1fm6bf1w8mvpa9qlgxqv3ngf0lyb3057cwv5ajibgbljjaznxpxc";
      };
      polysemy-test = {
        version = "0.6.0.0";
        hash = "07pi549ral22sxhja67k5b9v787q0b32ysp0bq9szhwjqgxsab46";
      };
      semigroups = {
        version = "0.20";
        hash = "03llc5y6zpzfn9hy71fg2kj7pipip4fphmns9yx47xmryn111d4g";
      };
      tasty = {
        version = "1.4.2";
        hash = "0jdr0r9x1apxfma0p5rvyai7sd9wsg22hblzcrxmw7lq34j1606f";
      };
      tasty-hedgehog = {
        version = "1.4.0.2";
        hash = "04kg2qdnsqzzmj3xggy2jcgidlp21lsjkz4sfnbq7b1yhrv2vbbc";
      };
      unbounded-delays = {
        version = "0.1.1.1";
        hash = "1kbh2yr7lwzrhjniyfllsix2zn8bmz9yrkhnq5lxv9ic9bbxnls7";
      };
      wcwidth = {
        version = "0.0.2";
        hash = "0131h9vg8dvrqcc2sn0k8y6cb08fazlfhr4922hwv2vbx3cnyy3z";
      };
    };
    lower-polysemy-time = {
      Cabal = {
        version = "3.10.3.0";
        hash = "1zz55xinqhg40zyfdvfzbianbdr7542ypq9ib5sj215ach6afpr8";
      };
      Cabal-syntax = {
        version = "3.10.3.0";
        hash = "1lsharrf1nv7zk17r6cm9z3jglyany3hpyqqf6r5a9myp1mn6v1n";
      };
      OneTuple = {
        version = "0.3.1";
        hash = "0mb81j6zhvzq7h9yyhi9cszrq1g5d4lv3a8wpwimcvzbyg9bdd6p";
      };
      aeson = {
        version = "2.1.0.0";
        hash = "08s162yh716aaxd42k1kyv18p9nsyab42ns4340kvs6r0i8riwsi";
      };
      assoc = {
        version = "1.0.2";
        hash = "1sfc21z18sf8rpsbcr77kgw7qjpm5cm1d24n5ifsm2zid88v8fs9";
      };
      atomic-primops = {
        version = "0.8.7";
        hash = "1hrzcqg0xg37xg1ihw0r106l5n9vmcr0i9zp3qbdk5v5nnrbvjd6";
      };
      attoparsec = {
        version = "0.14.4";
        hash = "0y9dph5axyvr1bfcvmz6qh50bjcp50m2ljra14960anc6g74a3c8";
      };
      base-compat = {
        version = "0.12.3";
        hash = "0vnns2imggv0b9gbbd9k0p8hdwlimka50gqbvknwkwbnv3kil7lb";
      };
      base-compat-batteries = {
        version = "0.12.3";
        hash = "0jg1wki5qbghjd5ra23ldc69jal9jjwrwp6wz8gg4gcrjlxbwg7m";
      };
      bifunctors = {
        version = "5.5.15";
        hash = "0qymwahcn7nqw3n9hvgh0nqhpm6p2ci1grmnwwfplvhxsaka91aj";
      };
      cabal-doctest = {
        version = "1.0.9";
        hash = "0irxfxy1qw7sif4408xdhqycddb4hs3hcf6xfxm65glsnmnmwl2i";
      };
      clock = {
        version = "0.8.4";
        hash = "14gy1a16l5s70pyqlsmylxsiiagas2yflqmjjmrdbzj4g1zxy39r";
      };
      comonad = {
        version = "5.0.8";
        hash = "1wwn8z9f3flqlka2k51wqw8wsjcxbp8mwg6yp3vbn6akyjrn36gc";
      };
      concurrent-output = {
        version = "1.10.21";
        hash = "1w87rrf337s8wc4z3dkh2mk990003jsk18ry5yawv4465k4yvamw";
      };
      directory = {
        version = "1.3.7.1";
        hash = "1578syli8il7a4hs5c55jjw4vwlsfmn573ggr7cy6c70xsw3pviv";
      };
      hedgehog = {
        version = "1.4";
        hash = "1qxxhs720im0wpa5lsca0l8qsfmhbyphd1aq01nv96v29lgv795b";
      };
      incipit-base = {
        version = "0.4.1.0";
        hash = "17579j3hzsh3ic0272h8ly8k7gz4zm1hv5jqimdam9gcq8alahkl";
      };
      incipit-core = {
        version = "0.4.1.0";
        hash = "1fm6bf1w8mvpa9qlgxqv3ngf0lyb3057cwv5ajibgbljjaznxpxc";
      };
      indexed-traversable = {
        version = "0.1.4";
        hash = "061xzz9m77rs6bk5vv2hd7givyq7ln0xffc6m1cxyyhyyr6lw3k0";
      };
      indexed-traversable-instances = {
        version = "0.1.2";
        hash = "05vpkasz70yjf09hsmbw7nap70sr8p5b7hrsdbmij8k8xqf3qg8r";
      };
      optparse-applicative = {
        version = "0.18.1.0";
        hash = "0wggvi67lm2amw0igmpfqs75jvy91zv42v33c12vmk9fdqkwalmg";
      };
      path = {
        version = "0.9.5";
        hash = "05b84rizmrii847pq2fbvlpna796bwxha1vc01c3vxb2rhrknrf7";
      };
      path-io = {
        version = "1.8.2";
        hash = "063ma7gzqr5c6s8a1yv72jgll3xdajvgclbc8w0ddmqgcrb62x2k";
      };
      polysemy = {
        version = "1.9.1.3";
        hash = "0y339fh1jvjdjmw6xkwizd3m9bqsgnhaj56xgkz1pcmv00pmj275";
      };
      polysemy-test = {
        version = "0.6.0.0";
        hash = "07pi549ral22sxhja67k5b9v787q0b32ysp0bq9szhwjqgxsab46";
      };
      primitive = {
        version = "0.7.4.0";
        hash = "0n7r8al9wgz4r7jzizapn1dbnkqxwx2c4lqkgfm5q5bxj8fl7g1c";
      };
      process = {
        version = "1.6.20.0";
        hash = "1cy2yn7ag10zrrv4l2vcswmljcgl1hv493v13fsvpc8y8m1qb4qa";
      };
      resourcet = {
        version = "1.3.0";
        hash = "0ffmm850z3n95vyj33gfqk606kfn6d50b9bnylqn8y4zrcv5yjmk";
      };
      scientific = {
        version = "0.3.7.0";
        hash = "09iwj0snmx7vj7x03l4vdcn76zylcgxd9pyz0yxkydgfnn3lvc08";
      };
      semialign = {
        version = "1.2.0.1";
        hash = "0mpw54c3s0x70k5l52a57yhnmbgrksb3dn0vjq4m37spyzsfl1v2";
      };
      semigroupoids = {
        version = "5.3.7";
        hash = "0sknyh441xrna6w6d65j189n59najbp8h7g2ndr9qswxh7z2qaf1";
      };
      strict = {
        version = "0.4.0.1";
        hash = "0xhr98m2632k2pic8q9bpnm3mp9098mmg4s66ds052b92494k49f";
      };
      tasty = {
        version = "1.4.2";
        hash = "0jdr0r9x1apxfma0p5rvyai7sd9wsg22hblzcrxmw7lq34j1606f";
      };
      tasty-hedgehog = {
        version = "1.4.0.2";
        hash = "04kg2qdnsqzzmj3xggy2jcgidlp21lsjkz4sfnbq7b1yhrv2vbbc";
      };
      temporary = {
        version = "1.3";
        hash = "17nb9mzhfg07y1308qv1n018dy7rljs8rrjdkn1c22rahsqg7kk9";
      };
      th-abstraction = {
        version = "0.4.5.0";
        hash = "19nh7a9b4yif6sijp6xns6xlxcr1mcyrqx3cfbp5bdm7mkbda7a9";
      };
      these = {
        version = "1.1.1.1";
        hash = "1i1nfh41vflvqxi8w8n2s35ymx2z9119dg5zmd2r23ya7vwvaka1";
      };
      time = {
        version = "1.9.2";
        hash = "091g1253v0gdvwcidc2mpiiwwp1lxbq9np4sf56vhgjwlhjspqfn";
      };
      time-compat = {
        version = "1.9.6.1";
        hash = "0ika8xx9zff8rwaabs17q5c30c1b9ii89jhbvahi5nk7rs0cd5fs";
      };
      torsor = {
        version = "0.1";
        hash = "07p05f7j6h99pxx1v4j0ya5py4nc93gnbj09pdhl23i2zc75064f";
      };
      type-errors = {
        version = "0.2.0.2";
        hash = "09rkyqhx8jnzqiq7gpcm5jd1xd435h0ma0b2sff18lk31qv01x6g";
      };
      unagi-chan = {
        version = "0.4.1.4";
        hash = "1glfzdm732p0zbwq6vg0syw4cg7f72k1982rc6ha8wyr46czdlmm";
      };
      unbounded-delays = {
        version = "0.1.1.1";
        hash = "1kbh2yr7lwzrhjniyfllsix2zn8bmz9yrkhnq5lxv9ic9bbxnls7";
      };
      unix = {
        version = "2.7.3";
        hash = "0z1477vlj9yzd3vv0s0605prfpvki3xablbl6nqs2c2vg6xlip7v";
      };
      unix-compat = {
        version = "0.7.1";
        hash = "0zs2x3mrfn0piavs8pf0zs6c4cadij2bkwd9gkd7qhb7jnqqhhp7";
      };
      vector = {
        version = "0.13.1.0";
        hash = "0c1nw2sx14y29afdbwl40sk9vznx71rja5jcg14b8986778kl32d";
      };
      wcwidth = {
        version = "0.0.2";
        hash = "0131h9vg8dvrqcc2sn0k8y6cb08fazlfhr4922hwv2vbx3cnyy3z";
      };
      witherable = {
        version = "0.4.2";
        hash = "1ga4al351kwcfvsdr1ngyzj4aypvl46w357jflmgxacad8iqx4ik";
      };
    };
  };
  resolving = false;
}
