adding - edges
edgeFromAssociation: association

	^ self edges: (Array with: association) from: #key to: #value
