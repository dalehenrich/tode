updating
removeColumn: aNumber

	values := values collect: [ :v | v copyWithoutIndex: aNumber ]