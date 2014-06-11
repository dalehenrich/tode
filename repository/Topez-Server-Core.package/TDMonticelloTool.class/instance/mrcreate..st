as yet unclassified
mrcreate: description
  | repo |
  repo := self repositoryFromDescription: description.
  repo isValid
    ifFalse: [ 
      (self
        confirm:
          'The directory used in this description ' , description printString
            ,
              ' does not exist. Press OK if you want to attempt to create the directory.')
        ifFalse: [ ^ nil ].
      repo directory assureExistence ].
  MCRepositoryGroup default addRepository: repo.
  ^ repo