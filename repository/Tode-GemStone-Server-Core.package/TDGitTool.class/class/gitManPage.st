as yet unclassified
gitManPage
  ^ 'NAME
  git - execute git commands

SYNOPSIS
  git add [ `git-command-args` [ <git-repo-path> ]]
      add [ `git-command-args` [ @<git-repo-directory> ]]
  git amend*
  git checkout `git-command-args` [ <git-repo-path> ]
      checkout `git-command-args` [ @<git-repo-directory> ]
  git clone `git-command-args`  <git-root-path> 
      clone `git-command-args` @<git-root-directory>
  git commit `git-command-args` [ <git-repo-path> ]
      commit `git-command-args` [ @<git-repo-directory> ]
  git difftool <commitish-1> <commitish-2> [ <git-repo-path> ]
      difftool  <commitish-1> <commitish-2> [ @<git-repo-directory> ]
  git filetreetool <commitish-1> <commitish-2> [ <git-repo-path> ]
      filetreetool  <commitish-1> <commitish-2> [ @<git-repo-directory> ]
  git help [ `git-command-args` [ <git-repo-path> ]]
      help [ `git-command-args` [ @<git-repo-directory> ]]
  git log [ `git-command-args` [ <git-repo-path> ]]
      log [ `git-command-args` [ @<git-repo-directory> ]]
  git merge `git-command-args` [ <git-repo-path> ]
      merge `git-command-args` [ @<git-repo-directory> ]
  git mergetool [ <git-repo-directory> ]
      mergetool [ @<git-repo-path> ]
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

  If no <git-repo-path> or <git-repo-directory> specified, `@gitRepo` is used
  by default.
'