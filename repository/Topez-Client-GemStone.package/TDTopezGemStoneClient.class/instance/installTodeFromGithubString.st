builtins
installTodeFromGithubString
^'Transcript cr; show: ''-----Upgrading tODE to latest master version on github''.
Metacello new
    baseline: ''Tode'';
    repository: ''github://dalehenrich/tode:master/repository'';
    get.
Metacello new
    baseline: ''Tode'';
    repository: ''github://dalehenrich/tode:master/repository'';
    load: ''GemStone Dev''.
System commit.
'