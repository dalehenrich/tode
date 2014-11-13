private
scanForProjects: projectBlock
  (self topez lookup: '/projects' ifAbsent: [  ])
    ifNotNil: [ :projectNode | self scanProjectDir: projectNode forProjects: projectBlock ]
    ifNil: [ self scanHomeDirForProjects: projectBlock ]