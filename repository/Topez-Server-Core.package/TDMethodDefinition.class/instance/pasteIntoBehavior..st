as yet unclassified
pasteIntoBehavior: aBehavior
  "add method to aBehavior"

  | method source category |
  method := self method.
  source := method sourceString.
  category := self methodCategory.
  self compile: source withGemstoneLineEndings classified: category.
  ^ true