as yet unclassified
deploy
  "deploy <configuration> <version> <source-repository> <target-repository-list>"

  | project version versions constructor packageNames methodSections gofer baseName versionString repoList configurationClass sourceRepo |
  baseName := tokens at: 2.
  versionString := tokens at: 3.
  sourceRepo := TDMonticelloTool new repositoryFromDescription: (tokens at: 4).
  repoList := tokens copyFrom: 5 to: tokens size.
  configurationClass := Smalltalk at: ('ConfigurationOf' , baseName) asSymbol.
  versions := Array new.
  project := configurationClass project.
  version := project version: versionString.
  versions add: version.
  packageNames := Set new.
  methodSections := #().
  versions
    do: [ :sourceVersion | 
      constructor := MetacelloToolBoxConstructor new.
      constructor configuration: configurationClass new.
      constructor extractMethodSectionsFor: sourceVersion versionString.
      methodSections := methodSections , constructor methodSections ].
  methodSections
    do: [ :methodSection | 
      | versionSpec |
      versionSpec := methodSection versionSpec.
      versionSpec packages
        specListDo: [ :packageSpec | packageSpec getFile ifNotNil: [ :file | packageNames add: file ] ] ].
  packageNames := packageNames asArray sorted.
  gofer := Gofer new.
  gofer repository: sourceRepo.
  packageNames do: [ :packageName | gofer version: packageName ].
  gofer fetch.
  gofer := Gofer new.
  packageNames do: [ :packageName | gofer version: packageName ].
  repoList
    do: [ :description | 
      | repos |
      repos := TDMonticelloTool new repositoryFromDescription: description.
      (repos respondsTo: #'user')
        ifTrue: [ 
          (repos user isEmpty or: [ repos password isEmpty ])
            ifTrue: [ repos error: 'need to set user/pass for: ' , description printString ] ].
      gofer repository: repos ].
  gofer push.
  ^ packageNames