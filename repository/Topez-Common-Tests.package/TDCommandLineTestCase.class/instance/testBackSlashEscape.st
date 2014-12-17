as yet unclassified
testBackSlashEscape
  self
    assert: 'ls
cd \
   /home'
    parsesInto:
      {(TDCommandLine new
        tokens: #('ls');
        yourself).
      (TDCommandLine new
        tokens: #('cd' '/home');
        yourself)}