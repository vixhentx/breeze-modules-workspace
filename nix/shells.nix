{ ... }:
{
  perSystem = { inputs', pkgs, ... }:
  let
    inherit (inputs') breeze;
  in {
    devShells.default = pkgs.mkShell {
      name = "breeze-modules-dev-shell";
      inputsFrom = [ breeze.devShells.workspace ];
      buildInputs = (with pkgs; [
        gcc-arm-embedded
      ]);
      CLANGD_FLAGS="--query-driver=${pkgs.gcc-arm-embedded}/bin/gcc-arm-embedded-gcc";
    };
  };
}
