*topez-pharo-common
drawTopezAdornmentFor: aTZMorph color: aColor on: aCanvas
    "Indicate edit status for the given morph."

    | bounds size fillStyle |
    bounds := aTZMorph innerBounds.
    size := 50.
    fillStyle := (GradientFillStyle
        ramp:
            {(0.0 -> (Color white alpha: 0.01)).
            (0.8 -> aColor).
            (1.0 -> aColor)})
        origin: bounds bottomLeft - (0 @ size);
        direction: size negated @ size // 4;
        radial: false.
    aCanvas
        drawPolygon:
            {(bounds bottomLeft).
            (bounds bottomLeft + (size @ 0)).
            (bounds bottomLeft - (0 @ size))}
        fillStyle: fillStyle