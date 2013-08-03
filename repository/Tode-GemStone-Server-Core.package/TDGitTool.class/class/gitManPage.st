as yet unclassified
gitManPage
  ^ 'NAME
  git - execute git commands

SYNOPSIS
  git add [ `git-command-args` [ <git-repo-path> ]]
      add [ `git-command-args` [ @<git-repo-directory> ]]
  git checkout `git-command-args` [ <git-repo-path> ]
      checkout `git-command-args` [ @<git-repo-directory> ]
  git commit `git-command-args` [ <git-repo-path> ]
      commit `git-command-args` [ @<git-repo-directory> ]
  git help [ `git-command-args` [ <git-repo-path> ]]
      help [ `git-command-args` [ @<git-repo-directory> ]]
  git log [ `git-command-args` [ <git-repo-path> ]]
      log [ `git-command-args` [ @<git-repo-directory> ]]
  git merge `git-command-args` [ <git-repo-path> ]
      merge `git-command-args` [ @<git-repo-directory> ]
  git pull `git-command-args` [ <git-repo-path> ]
      pull `git-command-args` [ @<git-repo-directory> ]
  git push `git-command-args` [ <git-repo-path> ]
      push `git-command-args` [ @<git-repo-directory> ]
  git status [ `git-command-args` [ <git-repo-path> ]]
      status [ `git-command-args` [ @<git-repo-directory> ]]

DESCRIPTION

  Default <git-command-args>:

    git add    :: `git add .`
    git log    :: `git log -10`
    git status :: `git status`
'