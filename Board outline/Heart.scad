$fn = 64;

module RoundedCornerTriangle(size, cornerRadius)
{
    x1 =           cornerRadius;
    x2 = size[0] - cornerRadius;
    y1 =           cornerRadius;
    y2 = size[1] - cornerRadius;

    hull()
    {
        translate([x1, y1]) circle(r=cornerRadius);
        translate([x2, y1]) circle(r=cornerRadius);
        translate([x1, y2]) circle(r=cornerRadius);
        //translate([x2, y2]) circle(r=cornerRadius); // This one would make it a rectangle
    }
}


module Heart(size)
{
    RoundedCornerTriangle([size/4*3, size/4*3], size / 10);

    translate([size/3*1, size/3*2]) circle(size / 3);
    translate([size/3*2, size/3*1]) circle(size / 3);
}

// TODO: Decide what size I want (probably determined by battery holder size)
Heart(30);
