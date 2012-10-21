*topez-pharo-common
tzListRenderOn: aCanvas atRow: aRow bounds: bounds color: color from: aMorph
    | paragraph |
    paragraph := Paragraph new textOwner: aMorph owner.
    paragraph
        compose: self
        style: TextStyle default copy
        from: 1
        in: bounds.
    Transcript
        cr;
        show: 'xxx' , self asString.
    aCanvas paragraph: paragraph bounds: bounds color: Color black.
    Transcript
        cr;
        show: 'yyy' , bounds printString