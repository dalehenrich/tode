Transcript
  cr;
  show: '-----Upgrading Metacello to latest master version'.
[ 
Metacello new
  baseline: 'Metacello';
  repository: 'github://dalehenrich/metacello-work:master/repository';
  get.
Metacello new
  baseline: 'Metacello';
  repository: 'github://dalehenrich/metacello-work:master/repository';
  load: 'ALL' ]
  on: Warning
  do: [ :ex | 
    Transcript
      cr;
      show: ex description.
    ex resume ].
System commit.
