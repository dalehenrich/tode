as yet unclassified
pkgs
  "pkgs"

  TDPackageList reset.
  TDPackageList current
    editUsing: (TDEditorSpec topez: topez editorAspect: #'definitionList').
  ^ TDPackageList current