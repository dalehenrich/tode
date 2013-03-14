as yet unclassified
pkgs
  "pkgs"

  TDPackageList reset.
  TDPackageList current edit: topez.
  ^ TDCommandResult new
    resultObject: TDPackageList current;
    yourself