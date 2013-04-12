accessing
editorAspects
  | aspects |
  aspects := Set new.
  self nodeEditors values do: [ :classMap | aspects addAll: classMap keys ].
  ^ aspects asArray