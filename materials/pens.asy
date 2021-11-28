settings.outformat = "pdf";
settings.prc = false;
settings.render = 16;

// Font settings
defaultpen(fontsize(10pt));

import graph3;

size(8cm, 0);

pen extraThin = linewidth(.25pt);
pen thin = linewidth(.4pt);
pen medium = linewidth(.6pt);
pen thick = linewidth(1pt);
pen extraThick = linewidth(2pt);

// Axes
draw(O -- 4X, medium, L=Label("$x$", position=EndPoint), arrow=Arrow3(TeXHead2));
draw(O -- 4Y, medium, L=Label("$y$", position=EndPoint), arrow=Arrow3(TeXHead2));
draw(O -- 4Z, medium, L=Label("$z$", position=EndPoint), arrow=Arrow3(TeXHead2));

draw(unitsphere, 3, 3, surfacepen=material(white + opacity(.8), emissivepen=gray(.1)));
