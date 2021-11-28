settings.outformat="pdf";
unitsize(1cm);

import graph;
pair f(real t) {
    return (sin(2t), sin(3t));
}
path s = graph(f, 0, 2pi, operator..);
draw(s);
