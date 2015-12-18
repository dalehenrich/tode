A RTSVGInteraction represents ay interaction present on a SVG export. It translates itself as javascript functions applied to SVG elements using its "id" or "class" attributes as anchor.

The type field represents both the interaction type and how it will be translated to javascript, it is used to set the actual interactions to exactly the right elements.

The target refers to the Roassal elements (as members of a class) affected by this interaction.

Both contained and external are booleans used to determine where to insert the code in javascript. This position WIDELY varies, depending on the intended interaction.