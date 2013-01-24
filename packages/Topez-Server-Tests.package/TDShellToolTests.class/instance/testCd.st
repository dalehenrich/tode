as yet unclassified
testCd
  self
    executeCommandSpecs:
      {{{'cd'.
      '/'}.
      #'cd'.
      '/'.
      [ :actual | actual printString ]}.
      {{'cd'}.
      #'cd'.
      '/home/'.
      [ :actual | actual printString ]}}