as yet unclassified
testBackSlashNewLineEscape
  self
    assert:
      'ls
cd \
   /home'
    parsesInto:
      {(TDCommandLine new
        tokens: #('ls');
        yourself).
      (TDCommandLine new
        tokens: #('cd' '/home');
        yourself)}.
  self
    assert:
      './gemServer \
--register=seaside --type=zinc \
--port=1750 --log=all \
              --logTo=transcript'
    parsesInto:
      {(TDCommandLine new
        tokens:
            #('./gemServer' '--register=seaside'  '--type=zinc'  '--port=1750' '--log=all'  '--logTo=transcript');
        yourself)}