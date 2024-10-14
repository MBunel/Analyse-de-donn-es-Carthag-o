{ pkgs ? import <nixpkgs> { }, pythonPackages ? pkgs.python3Packages, rPackages ?  kgs.rPackages}:

pkgs.mkShell {
  buildInputs = [
     pythonPackages.numpy
     pythonPackages.scipy
     pythonPackages.jupyterlab
     rPackages.irkernel
     rPackages.ggplot2
  ];

}
