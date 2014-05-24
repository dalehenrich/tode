as yet unclassified
commitManPage
  ^ 'NAME
  commit - commit active projects

SYNOPSIS
  commit

DESCRIPTION
  Commit dirty packages for active projects. 

  `./active` defines list of active projects used to create the `STATUS` report.

  `./commitMessage` defines commit message.

  Each active project node should contain a `project` node and a `repo` node.

  The `project` node defines the MCProjectSpec for the project using something 
  like the following[1]:

    Metacello image
      baseline: ''Tode'';
      list.

  The `repo` node defines the primary MCRepository for the project where all 
  package commits will be routed. Use something like the following to define
  the repository: 

    (TDMonticelloRepository 
      fromDescription: ''filetree:///opt/git/tode/repository'')
        repository.

[1] https://github.com/dalehenrich/metacello-work/blob/master/docs/MetacelloScriptingAPI.md#listing
'