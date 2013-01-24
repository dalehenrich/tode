as yet unclassified
testCat
  "tokens command expected"

  self
    executeCommandSpecs:
      {{{'cat'.
      '/home/topez'}.
      #'cat'.
      'cat /home/.window/model'}}