settings.outformat = "pdf";
settings.prc = false;
settings.render = 16;
// Font settings
defaultpen(fontsize(10pt));
import graph3;
size(8cm, 0);
currentprojection = orthographic(2, 2.1, 1);

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
nmesh = 24;
var sub_mesh = gray + extraThin;

draw(scale3(3.4) * rotate(180, X) * shift(-Z) * unitcone, 5, 5, surfacepen=nullpen, meshpen=sub_mesh);
