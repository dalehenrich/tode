rsync
rsyncChildNamed: childName ifAbsent: absentBlock
  "receiver is a destination node"

  ^ self childNamed: childName ifAbsent: absentBlock