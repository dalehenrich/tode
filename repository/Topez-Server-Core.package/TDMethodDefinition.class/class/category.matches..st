as yet unclassified
category: categoryName matches: packageName
  | methodPackageName |
  methodPackageName := '*' , packageName asLowercase.
  ^ super category: categoryName asLowercase matches: methodPackageName