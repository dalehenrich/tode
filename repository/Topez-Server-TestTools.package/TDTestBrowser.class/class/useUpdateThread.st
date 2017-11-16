accessing
useUpdateThread
  UseUpdateThread ifNil: [ UseUpdateThread := false ].
  ^ UseUpdateThread