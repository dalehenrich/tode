as yet unclassified
deployManPage
  ^ 'NAME
  deploy - deploy FileTree to http://ss3.gemstone.com/ss/FileTree repository

SYNOPSIS
  deploy [<update-repo>]

DESCRIPTION

  The `deploy` command is used to deploy the packages for a bootstrap release of 
  FileTree. 

  To start things off the `ConfigurationOfFileTree` is checked out of the `config`
  repository (i.e., `filetree:///opt/git/config/filetree/repository`). Typically 
  the `config` repository is a clone of the `configuration` branch of 
  `https://github.com/dalehenrich/filetree`.

  Then for each platform of interest:

    1. Check out the git branch for a platform using the `tmpGitRepo` repository. 
       If <update-repo> is `true` a `git fetch` and a `git pull` are performed 
       after the checkout.
    2. Save new versions into the `target` repository for each of the package that 
       has changed in the ConfigurationOfFileTree for the platform with an 
       appropriate Monticello branch name. 
    3. Save a new version into the `tmpGitRepo` repository, so the branched 
       Monticello package in the package ancestry.
    4. Perform a git `commit` and `push` to github.
    5. Modify the ConfigurationOfFileTree to reflect the new package versions 
       saved to the `target` repository (from step #2).

  When the deploy process completes a sumary Array with 3 slots is returned. 
  The first two slots contain intermediate information. The last slot contains 
  a map recording the list of new package versions created in step #2 by 
  branch name.

  The `./tmpGitRepo` object specifies the directory path to the git repository 
  (i.e., `/opt/git/tmp/filetree`) that is used as the working repository for all 
  git checkouts/commits. The `./tmpGitRepo` should be cloned from 
  `https://github.com/dalehenrich/filetree`.

  The `./target` object specifies the repository URL (i.e., 
  `http://ss3.gemstone.com/ss/FileTree` or `filetree:///opt/git/tmp/filetree`) 
  to be used as a target of the Monticello commits. For deployment the URL should 
  be `http://ss3.gemstone.com/ss/FileTree`.
'