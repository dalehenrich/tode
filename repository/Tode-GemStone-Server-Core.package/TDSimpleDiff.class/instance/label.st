accessing
label
  "Return the value of the instance variable 'label'."

  label ifNil: [ ^ self labelString ].
  ^ label