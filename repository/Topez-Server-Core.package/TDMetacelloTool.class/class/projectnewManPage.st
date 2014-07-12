project
projectnewManPage
  | manPage |
  manPage := TDManPage
    commandName: 'new'
    fromString:
      'NAME
  project new - Create a new project entry

SYNOPSIS
  project new --config=<project-name> [--version=<project-version>] 
              [--repo=<project-repo>] <project-path>
          new --baseline=<project-name> [--repo=<project-repo>] <project-path>

DESCRIPTION

OPTIONS

EXAMPLES
  project new --config=External --version=1.0.0 --repo=http://ss3.gemstone.com/ss/external /home/external

  project new --baseline=External --repo=github://dalehenrich/external:master/repository /home/external

'.
  ^ manPage