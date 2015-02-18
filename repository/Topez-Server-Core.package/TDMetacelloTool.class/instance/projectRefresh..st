project api
projectRefresh: refreshSpec
  "return list of registrations unregistered"

  ^ self projectRegistrationDefinitionMap values
    select: [ :registration | registration refreshProjectEntryUsing: refreshSpec ]