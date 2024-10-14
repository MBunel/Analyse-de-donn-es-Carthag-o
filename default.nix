{ pkgs ? import <nixpkgs> { }, pythonPackages ? pkgs.python3Packages, rPackages ?  pkgs.rPackages}:

pkgs.mkShell {
  buildInputs = [
     pkgs.R
     pythonPackages.numpy
     pythonPackages.scipy
     pythonPackages.jupyterlab
     rPackages.IRkernel
     rPackages.ggplot2
  ];

}
