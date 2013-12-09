builtins
installTodeString
^'Transcript cr; show: ''-----Upgrading tODE to latest master in /opt/git/tode''.
Metacello new
    baseline: ''Tode'';
    repository: ''filetree:///opt/git/tode/repository'';
    get.
Metacello new
    baseline: ''Tode'';
    repository: ''filetree:///opt/git/tode/repository'';
    onConflict: [:ex | ex allow];
    load: ''GemStone Dev''.
System commit.
'