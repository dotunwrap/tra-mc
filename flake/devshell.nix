{ inputs, ... }:
{
  perSystem =
    { system, ... }:
    let
      pkgs = import inputs.nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
    in
    {
      devShells.default = pkgs.mkShell {
        packages = builtins.attrValues {
          inherit (pkgs)
            # general deps
            gh
            just
            jq
            b3sum

            # infra deps
            terraform
            terraform-ls
            terraform-docs
            ;
        };
      };
    };
}
