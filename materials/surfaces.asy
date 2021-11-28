///////////////////////////////////
//////////// Preamble /////////////
///////////////////////////////////

// Output settings
settings.outformat = "pdf";
settings.prc = false;
settings.render = 16;

// Font settings
defaultpen(fontsize(10pt));

// Use 3D graphs
import graph3;

// Figure settings
size(8cm, 0);
currentprojection = orthographic(2, 2.1, 1);


///////////////////////////////////
////////// Start drawing //////////
///////////////////////////////////

pen extraThin = linewidth(.25pt);
pen thin = linewidth(.4pt);
pen medium = linewidth(.6pt);
pen thick = linewidth(1pt);
pen extraThick = linewidth(2pt);

// Axes
draw(O -- 4X, medium, L=Label("$x$", position=EndPoint), arrow=Arrow3(TeXHead2));
draw(O -- 4Y, medium, L=Label("$y$", position=EndPoint), arrow=Arrow3(TeXHead2));
draw(O -- 4Z, medium, L=Label("$z$", position=EndPoint), arrow=Arrow3(TeXHead2));

// Pens
nmesh = 24;//512;
var surfacepen = material(
    white + opacity(.8),
    emissivepen=gray(.5)
);
var main_mesh = black + extraThin;
var sub_mesh = gray + extraThin;

// 1: z^2 - x^2 - y^2 = 1 (hyperboloid)
triple hyperboloid(pair t)
{
    return (cos(t.y) * tan(t.x), sin(t.y) * tan(t.x), 1 / cos(t.x));
}
surface s_hyperboloid = surface(
    hyperboloid, (0, 0), (pi / 2 - .3, 2 * pi), 16, 16,
    usplinetype=new splinetype[] {notaknot, notaknot, monotonic},
    vsplinetype=Spline);
draw(s_hyperboloid, surfacepen=surfacepen, meshpen=main_mesh);

// 2: z^2 - x^2 - y^2 = 0 (cone)
draw(scale3(3.4) * rotate(180, X) * shift(-Z) * unitcone, 5, 5, surfacepen=nullpen, meshpen=sub_mesh);

// 3: z = 1 (square)
surface square = surface(new real(pair) { return 1; }, 2(-1, -1), 2(1, 1));
draw(square, white + opacity(.7));
draw(surface(rotate(180) * xscale(.15) * yscale(.045) * "$z = 1$", square, 1, 22, .002), emissive(black));

// 4: x^2 + y^2 + z^2 = 1
draw(unitsphere, 3, 3, surfacepen=material(white + opacity(.8), emissivepen=gray(.1)));
