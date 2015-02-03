"Fourth and final step in tODE installation process: install tODE."
Transcript
  cr;
  show: '-----Upgrading tODE to latest master version'.
GsDeployer bulkMigrate: [ 
  Metacello new
    baseline: 'Tode';
    repository: 'github://dalehenrich/tode:master/repository';
    get.
  Metacello new
    baseline: 'Tode';
    repository: 'github://dalehenrich/tode:master/repository';
    onConflict: [ :ex | ex allow ];
    load: 'GemStone Dev' ].
