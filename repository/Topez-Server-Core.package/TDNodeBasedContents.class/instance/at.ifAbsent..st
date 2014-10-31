dictionary compat
at: aNodeName ifAbsent: absentBlock
  ^ self node childNamed: aNodeName ifAbsent: absentBlock