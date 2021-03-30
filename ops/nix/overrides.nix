inputs:
{
  pkgs,
  hackage,
}:
self: super:
let
  inherit (hackage) pack thunk cabal2nix cabal2nixNoHpack subPkg subPkgNoHpack github;

  versions = [
  ];
  versionOverrides = builtins.listToAttrs versions;

  custom = {
    chronos = cabal2nix "chronos" inputs.chronos;
    polysemy = cabal2nixNoHpack "polysemy" inputs.polysemy;
    polysemy-plugin = subPkgNoHpack "polysemy-plugin" "polysemy-plugin" inputs.polysemy;
    polysemy-test = subPkg "packages/polysemy-test" "polysemy-test" inputs.polysemy-test;
  };
in
  versionOverrides // custom
