as yet unclassified
deployManPage
  ^ 'NAME
  deploy - deploy FileTree to http://ss3.gemstone.com/ss/FileTree repository

SYNOPSIS
  deploy <version> <configRepo> <ss3Repo> <tmpRepo> `commitMessage` [<update-repo>]

DESCRIPTION

  The `deploy` command is used to deploy the packages for a bootstrap release of 
  FileTree. 

  To start things off the `ConfigurationOfFileTree` is checked out of the 
  <config-repo> repository. If the in-mage ConfigurationOfFileTree is dirty,
  this step is skipped.

  Then, if <update-repo> is `true`, a `git fetch origin` of the <tmpRepo> is 
  performed.

  Then for each platform of interest:

    1. Check out the git branch for a platform using the `tmpRepo` repository. 
        is performed and a `git pull` 
       is performed  in each branch.
    2. Save new versions into the `ss3Repo` repository for each of the package that 
       has changed in the ConfigurationOfFileTree for the platform with an 
       appropriate Monticello branch name. 
    3. Save a new version into the `tmpRepo` repository, so the branched 
       Monticello package commited to the `ss3Repo` in the package ancestry.
    4. Perform a git `commit` and `push` to github.
    5. Modify the ConfigurationOfFileTree to reflect the new package versions 
       saved to the `target` repository (from step #2).
    6. remove all stable version declarations and set the <version> as the 
       #common #stable version.

  When the deploy process completes a sumary Array with 3 slots is returned. 
  The first two slots contain intermediate information. The last slot contains 
  a map recording the list of new package versions created in step #2 by 
  branch name.

  <version>         - new configuration version ... should already exist as 
                      #development in configuration
  <configRepo>      - disk location of FileTree configuration repo (clone of 
                      `https://github.com/dalehenrich/filetree`)
  <ss3Repo>         - location of target repository 
                      (`http://ss3.gemstone.com/ss/FileTree`).
  <tmpRepo>         - disk location of the FileTree repo (clone of 
                      `https://github.com/dalehenrich/filetree`)
  `commitMessage`   - commit message used in Step 3.
  [<update-repo>]   - `true` if you want to make sure that your local disk copy
                      of `https://github.com/dalehenrich/filetree` (<tmpRepo>)
                      is up to date.
'