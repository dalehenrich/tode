accessing
baseWidth
  | font string |
  font := TextStyle defaultFont.
  string := String new: 80 withAll: $M.
  ^ (font widthOfString: string) @ font height