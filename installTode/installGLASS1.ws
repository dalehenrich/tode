Transcript
  cr;
  show: '-----Upgrading GLASS1 to most recent master version'.
Metacello new
  baseline: 'GLASS1';
  repository: 'github://glassdb/glass:master/repository';
  get.
Metacello new
  baseline: 'GLASS1';
  repository: 'github://glassdb/glass:master/repository';
  onConflict: [ :ex | ex allow ];
  onWarning: [ :ex | 
        Transcript
          cr;
          show: ex description.
        ex resume ];
  load: 'default'.
System commit.
