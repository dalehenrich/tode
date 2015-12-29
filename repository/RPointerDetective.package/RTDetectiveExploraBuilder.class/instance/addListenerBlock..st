action
addListenerBlock: listenerBlock
	"The block is executed at each node created"
	nodes do: listenerBlock.
	nodeListeners add: listenerBlock