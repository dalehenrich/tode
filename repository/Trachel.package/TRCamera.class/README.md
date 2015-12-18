I am main tool which helps to move across Trachel's canvas.

My two main properties are position and scale.

- position 
  is a point representing coordinates of the canvas on which the "viewing window" will be centered.
  position can be changes with:
  * #translateBy:
  * #translateTo:
  both methods accept canvas based coordinates

- scale
  defines a magnitude of zooming applied to the canvas and it's elements.

I provide two methods that allow conversion between coanvas (space) coordinate system and real window(pixel)'s coordinates.
* #fromPixelToSpace:
* #fromSpaceToPixel:

Also I provide handy methods for centering camera on current elements and zoomeing to fit everuthing in the square with desired size (default 500pnt).
* #focusOnCenter
* #focusOnCenterScaled
* #focusOnCenterScaled: