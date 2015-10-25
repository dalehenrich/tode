project
projectcommitManPage
  | manPage |
  manPage := TDManPage
    commandName: 'commit'
    sourceMethod: self name asString , '>>projectcommit'
    fromString:
      'NAME
  project commit - Commit the Metacello project

SYNOPSIS
  project commit [--git] [--config] --message=<message-ref> <project-name>

DESCRIPTION

OPTIONS
  --config
    Indicates that the ConfigurationOf should be updated and committed as well
    as the packages. Ignored for baseline-based projects - baselines are committed
    along with packages as no updates are requires.

  --git
    After packages have been saved, do a git commit on the repository. Ignored for
    non-git-based repositories.

  --message=<message-ref>
EXAMPLES
  project commit --message=@commitMessage Tode
  project commit --message=`initial commit` Tode
  project commit --git --message=@commitMessage Tode
  project commit --config --message=@commitMessage Tode
'.
  ^ manPage