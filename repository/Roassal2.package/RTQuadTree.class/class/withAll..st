public
withAll: aNodeCollection

	^ self withAll: aNodeCollection origin: (aNodeCollection collect: [:e | e position x]) min @ (aNodeCollection collect: [:e | e position y]) min corner: (aNodeCollection collect: [:e | e position x]) max @ (aNodeCollection collect: [:e | e position y]) max