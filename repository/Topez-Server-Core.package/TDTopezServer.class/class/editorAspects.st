accessing
editorAspects
  | aspects |
  aspects := Set new.
  self concreteClass nodeEditors values
    do: [ :classMap | aspects addAll: classMap keys ].
  ^ aspects asArray