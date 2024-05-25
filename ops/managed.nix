{
  bounds = {
    polysemy-time = {
      base = {
        lower = "4.16.4.0";
        upper = "4.20";
      };
      hedgehog = {
        lower = "1.2";
        upper = "1.5";
      };
      incipit-core = {
        lower = "0.3.0.0";
        upper = "0.7";
      };
      path = {
        lower = "0.9.1";
        upper = "0.10";
      };
      path-io = {
        lower = "1.8.0";
        upper = "1.9";
      };
      polysemy = {
        lower = "1.9.1.3";
        upper = "1.10";
      };
      tasty = {
        lower = "1.4.3";
        upper = "1.5";
      };
      tasty-hedgehog = {
        lower = "1.4.0.0";
        upper = "1.5";
      };
      transformers = {
        lower = "0.5.6.2";
        upper = "0.7";
      };
    };
    polysemy-chronos = {
      base = {
        lower = "4.16.4.0";
        upper = "4.20";
      };
      hedgehog = {
        lower = "1.2";
        upper = "1.5";
      };
      incipit-core = {
        lower = "0.3.0.0";
        upper = "0.7";
      };
      path = {
        lower = "0.9.1";
        upper = "0.10";
      };
      path-io = {
        lower = "1.8.0";
        upper = "1.9";
      };
      polysemy = {
        lower = "1.9.1.3";
        upper = "1.10";
      };
      tasty = {
        lower = "1.4.3";
        upper = "1.5";
      };
      tasty-hedgehog = {
        lower = "1.4.0.0";
        upper = "1.5";
      };
      transformers = {
        lower = "0.5.6.2";
        upper = "0.7";
      };
    };
  };
  versions = {
    latest-polysemy-time = {
      base = "4.19.1.0";
      hedgehog = "1.4";
      incipit-core = "0.6.0.0";
      path = "0.9.5";
      path-io = "1.8.2";
      polysemy = "1.9.1.3";
      tasty = "1.4.3";
      tasty-hedgehog = "1.4.0.2";
      transformers = "0.6.1.0";
    };
    lower-polysemy-time = {
      base = "4.16.4.0";
      hedgehog = "1.2";
      incipit-core = "0.3.0.0";
      path = "0.9.1";
      path-io = "1.8.0";
      polysemy = "1.9.1.3";
      tasty = "1.4.3";
      tasty-hedgehog = "1.4.0.0";
      transformers = "0.5.6.2";
    };
    latest-polysemy-chronos = {
      base = "4.19.1.0";
      hedgehog = "1.4";
      incipit-core = "0.6.0.0";
      path = "0.9.5";
      path-io = "1.8.2";
      polysemy = "1.9.1.3";
      tasty = "1.4.3";
      tasty-hedgehog = "1.4.0.2";
      transformers = "0.6.1.0";
    };
    lower-polysemy-chronos = {
      base = "4.16.4.0";
      hedgehog = "1.2";
      incipit-core = "0.3.0.0";
      path = "0.9.1";
      path-io = "1.8.0";
      polysemy = "1.9.1.3";
      tasty = "1.4.3";
      tasty-hedgehog = "1.4.0.0";
      transformers = "0.5.6.2";
    };
  };
  initial = {
    latest-polysemy-time = {};
    lower-polysemy-time = {
      hedgehog = "1.3";
      incipit-core = "0.6.0.0";
      path = "0.9.0";
      path-io = "1.8.0";
      tasty-hedgehog = "1.4.0.0";
      transformers = "0.5.6.2";
    };
    lower-polysemy-chronos = {
      hedgehog = "1.3";
      incipit-core = "0.6.0.0";
      path = "0.9.0";
      path-io = "1.8.0";
      tasty-hedgehog = "1.4.0.0";
      transformers = "0.5.6.2";
    };
  };
  overrides = {
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
    lower-polysemy-time = {
      ansi-terminal = {
        version = "0.11.5";
        hash = "0g7ycc2b67z8plqp7hva914yhwzjmvvhhf9mszlhj3kqxh6i732b";
      };
      concurrent-output = {
        version = "1.10.21";
        hash = "1w87rrf337s8wc4z3dkh2mk990003jsk18ry5yawv4465k4yvamw";
      };
      hedgehog = {
        version = "1.2";
        hash = "1jak5p9qhnv8zq761wxbdygpj107llpi66m6d7hiaywymqq47giw";
      };
      incipit-base = {
        version = "0.3.0.0";
        hash = "1078yyl5k94c9pr16rqd1i1g1fj8zx4iswhk7rcxb8f10fjqzapg";
      };
      incipit-core = {
        version = "0.3.0.0";
        hash = "0q11zmxlpdb72p8c8zvr5hd7qca9c37crm70lm16jxlzw1qxk51b";
      };
      optparse-applicative = {
        version = "0.18.1.0";
        hash = "0wggvi67lm2amw0igmpfqs75jvy91zv42v33c12vmk9fdqkwalmg";
      };
      path = {
        version = "0.9.1";
        hash = "0nk3rp5fk97m4y163dyd1y488062djzj071xdd90yyghi5pgvrb5";
      };
      path-io = {
        version = "1.8.0";
        hash = "134nc4dnslvad6vsmlyjvp1l4y9qsnq7wnnlm79s8c27nwajj8dm";
      };
      prettyprinter-ansi-terminal = {
        version = "1.1.3";
        hash = "09m8knzfvms12576pp2nrdn7j0wikylwjfr9r3z4swgipz1r3nki";
      };
      tasty = {
        version = "1.4.3";
        hash = "1vnwvsngrvh1swlnmv3hzj1srj5yc6hf3k2gccqs732fl1y9wj2c";
      };
      tasty-hedgehog = {
        version = "1.4.0.0";
        hash = "131zswqfl4azl6ylxlqpr5ilr0l6qvjs2va21mf0246pgf9dvpdx";
      };
      temporary = {
        version = "1.3";
        hash = "17nb9mzhfg07y1308qv1n018dy7rljs8rrjdkn1c22rahsqg7kk9";
      };
    };
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
    lower-polysemy-chronos = {
      ansi-terminal = {
        version = "0.11.5";
        hash = "0g7ycc2b67z8plqp7hva914yhwzjmvvhhf9mszlhj3kqxh6i732b";
      };
      concurrent-output = {
        version = "1.10.21";
        hash = "1w87rrf337s8wc4z3dkh2mk990003jsk18ry5yawv4465k4yvamw";
      };
      hedgehog = {
        version = "1.2";
        hash = "1jak5p9qhnv8zq761wxbdygpj107llpi66m6d7hiaywymqq47giw";
      };
      incipit-base = {
        version = "0.3.0.0";
        hash = "1078yyl5k94c9pr16rqd1i1g1fj8zx4iswhk7rcxb8f10fjqzapg";
      };
      incipit-core = {
        version = "0.3.0.0";
        hash = "0q11zmxlpdb72p8c8zvr5hd7qca9c37crm70lm16jxlzw1qxk51b";
      };
      optparse-applicative = {
        version = "0.18.1.0";
        hash = "0wggvi67lm2amw0igmpfqs75jvy91zv42v33c12vmk9fdqkwalmg";
      };
      path = {
        version = "0.9.1";
        hash = "0nk3rp5fk97m4y163dyd1y488062djzj071xdd90yyghi5pgvrb5";
      };
      path-io = {
        version = "1.8.0";
        hash = "134nc4dnslvad6vsmlyjvp1l4y9qsnq7wnnlm79s8c27nwajj8dm";
      };
      prettyprinter-ansi-terminal = {
        version = "1.1.3";
        hash = "09m8knzfvms12576pp2nrdn7j0wikylwjfr9r3z4swgipz1r3nki";
      };
      tasty = {
        version = "1.4.3";
        hash = "1vnwvsngrvh1swlnmv3hzj1srj5yc6hf3k2gccqs732fl1y9wj2c";
      };
      tasty-hedgehog = {
        version = "1.4.0.0";
        hash = "131zswqfl4azl6ylxlqpr5ilr0l6qvjs2va21mf0246pgf9dvpdx";
      };
      temporary = {
        version = "1.3";
        hash = "17nb9mzhfg07y1308qv1n018dy7rljs8rrjdkn1c22rahsqg7kk9";
      };
    };
  };
  resolving = false;
}
