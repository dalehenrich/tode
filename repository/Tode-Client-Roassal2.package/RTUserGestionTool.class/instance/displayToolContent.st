as yet unclassified
displayToolContent
	| kiv n b nameMenus groupMenus privilegeMenus |
	
	kiv := RTKiviatBuilder new view: self view.
	n := RTMultiLinearColorForIdentity new objects: (kiv objects).
	kiv shape circle color: [ :value | n rtValue: value kiviatNode named]; size: 10.
	
	kiv addMetric: [ :v | v second size] max: 5 title: 'groups'.
    kiv addMetric: [ :v | v third size] max: 16 title: 'privileges'.
    kiv addMetric: [ :v | v first size] max: 12 title: 'name'.


	kiv activatePolygons.
	kiv activateAxisTitle.
	kiv build.

	b := RTMenuBuilder new view: self view.
	
	nameMenus := Array with: ('Henri'->[:m |]) with: ('Bob'->[:m |]) with: ('Robert'->[:m |]).
    groupMenus := Array with: ('Subscribers'->[:m |]) with:('Publishers'->[:m |]).
    privilegeMenus := Array with: ('ObsoleteStatistics'->[:m |]) with:('UserPassword'->[:m |]) with:('SessionAccess'->[:m |]).

	nameMenus := b menu: 'user' subcheckmenus: nameMenus background: (Color lightGray alpha: 0).
    RTMenuGroup on: nameMenus.
    nameMenus first selected: true.


    groupMenus := b menu: 'groups' subcheckmenus: groupMenus background: (Color lightGray alpha: 0).
    groupMenus first selected: true.
   

    privilegeMenus := b menu: 'privileges' subcheckmenus: privilegeMenus background: (Color lightGray alpha: 0).
    privilegeMenus first selected: true.   

    b menu: 'add user' callback: [
        |name groups privileges |
       
        name := (nameMenus detect: [ :m | m selected ]) name.
        groups := (groupMenus select: [:m | m selected]) collect: [:g | g name].
        privileges := (privilegeMenus select: [:m | m selected])  collect: [:p | p name].
        self workspace tdShell onServerDo: [
            AllUsers addNewUserWithId: name password: '' defaultObjectSecurityPolicy: nil privileges: privileges inGroups: groups .
            System commitTransaction.].
        kiv addDynamicObject: (Array with: (name) with: (groups) with: (privileges))
	].

	b menu: 'delete user' callback: [
        |name |
        name := (nameMenus detect: [ :m | m selected ]) name.
        self workspace tdShell onServerDo: [
   			  AllUsers removeAndCleanupUserWithId: name ifAbsent: [self inform: 'user absent']     
			].
	].

	b menu: 'all users' callback: [
       | allUsrs |
      	allUsrs := self workspace tdShell onServerDo: [
			AllUsers asArray collect: [:u |
				Array with: (u userId) with: (u groups) with: (u privileges)] 
		].
        allUsrs do: [:u | kiv addDynamicObject: (Array with: (u first) with: (u second) with: (u third))]
	].
	
	  b menu: 'clean' callback: [
        kiv clean.
	].