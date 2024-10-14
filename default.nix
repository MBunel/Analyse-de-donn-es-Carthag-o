{ pkgs ? import <nixpkgs> { }, pythonPackages ? pkgs.python3Packages, rPackages ?  pkgs.rPackages}:

pkgs.mkShell {
  buildInputs = [
     pythonPackages.numpy
     pythonPackages.scipy
     pythonPackages.jupyterlab
     rPackages.irkernel
     rPackages.ggplot2
  ];

}
