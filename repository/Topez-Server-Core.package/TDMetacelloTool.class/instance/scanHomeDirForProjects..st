private
scanHomeDirForProjects: projectBlock
  | homeNode tutorialNode |
  homeNode := self topez lookup: '/home' ifAbsent: [ ^ self ].
  self scanNode: homeNode forProjects: projectBlock.
  tutorialNode := self topez lookup: '/home/tutorials' ifAbsent: [ ^ self ].
  self scanNode: tutorialNode forProjects: projectBlock