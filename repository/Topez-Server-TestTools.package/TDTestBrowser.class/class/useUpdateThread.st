accessing
useUpdateThread
  UseUpdateThread ifNil: [ UseUpdateThread := true ].
  ^ UseUpdateThread