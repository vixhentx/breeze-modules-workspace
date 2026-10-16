{ ... }:
{
  perSystem = { inputs', ... }:
  let
    inherit (inputs') breeze;
  in {
    devShells.default = breeze.devShells.workspace.overrideAttrs (_: { });
  };
}
