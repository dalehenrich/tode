as yet unclassified
parseRawDiffFiles: aString
  "
           in-place edit  :100644 100644 bcd1234... 0123456... M file0
           copy-edit      :100644 100644 abcd123... 1234567... C68 file1 file2
           rename-edit    :100644 100644 abcd123... 1234567... R86 file1 file3
           create         :000000 100644 0000000... 1234567... A file4
           delete         :100644 000000 1234567... 0000000... D file5
           unmerged       :000000 000000 0000000... 0000000... U file6
"

  | records strm line |
  records := OrderedCollection new.
  strm := ReadStream on: aString.
  line := strm nextLine.
  [ line isEmpty ]
    whileFalse: [ 
      | fields subFields record |
      fields := line findTokens: ' '.
      subFields := (fields at: 5) findTokens: String tab.
      record := (fields copyFrom: 1 to: 4) , {subFields}.
      records add: record.
      line := strm nextLine ].
  ^ records