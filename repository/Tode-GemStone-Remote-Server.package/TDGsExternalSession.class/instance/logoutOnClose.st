accessing
logoutOnClose
  ^ logoutOnClose ifNil: [ logoutOnClose := false ]