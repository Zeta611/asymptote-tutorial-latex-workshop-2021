settings.outformat="pdf";
unitsize(1cm);

import graph;

// Global constant representing an infinitesimal.
real EPSILON = .0001;

// Returns the derivative f'(t) of a parametrized function f: R -> R^2.
pair derivative(pair f(real), real t, real dx=EPSILON) {
    return (f(t + dx) - f(t - dx)) / 2dx;
}

pair f(real t) {
    return (sin(2t), sin(3t));
}

pair df(real t) {
    return derivative(f, t);
}

draw(graph(f, 0, 2pi, operator..));
draw(graph(df, 0, 2pi, n=500, operator..));
