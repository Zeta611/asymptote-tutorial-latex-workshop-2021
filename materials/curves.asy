settings.outformat="pdf";
unitsize(1cm);
import graph;
real f(real x) {
    return sin(x) * cos(60x);
}
path s = graph(f, 0, 2pi, n=500, Hermite); // better than operator..
draw(s);
