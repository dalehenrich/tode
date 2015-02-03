"Third step in tODE installation process: install GLASS1.
 Let GsUpgrader do the installation. Conditionally lock GLASS1 repository
 if you want to use a non-standard installation location."
false
    ifTrue: [ 
      "if you want to use a non-standard repo for GLASS1"
      Transcript
        cr;
        show: 'Locking GLASS1: filetree:///opt/git/glass/repository'.
      GsDeployer
        bulkMigrate: [ 
          Metacello new
            baseline: 'GLASS1';
            repository: 'filetree:///opt/git/glass/repository';
            lock ] ].
  Transcript
    cr;
    show: '-----Upgrading GLASS1 using gsUpgrader'.
  Gofer new
    package: 'GsUpgrader-Core';
    url: 'http://ss3.gemtalksystems.com/ss/gsUpgrader';
    load.
  (Smalltalk at: #'GsUpgrader') upgradeGLASS1.
