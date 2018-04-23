## Problem 3.b

x = var('x')

P1 = plot(sinh(x), -5, 5, ymin=-5, ymax=5, color='indigo', thickness=2, legend_label='$y_{1} = \sinh(x)$')
P2 = plot(cosh(x), -5, 5, ymin=-5, ymax=5, color='forestgreen', thickness=2, legend_label='$y_{2} = \cosh(x)$')

show(P1+P2, figsize=7) 

## Problem 3.c

pointList1 = [ (cosh(x), sinh(x)) for x in [-1.57, -1.56, .., 1.57] ]
PL1 = points(pointList1, color='navy', legend_label=('Points $(\cosh(x), \sinh(x))$ for $x \in (-\pi/2, \pi/2)$'))

show(PL1, figsize=7) 

## Problem 4.b

n_red = 1.33
n_orange = 1.333
n_green = 1.336
n_blue = 1.34

f_r(x) = 4*arcsin(sin(x)/n_red) - 2*x
f_o(x) = 4*arcsin(sin(x)/n_orange) - 2*x
f_g(x) = 4*arcsin(sin(x)/n_green) - 2*x
f_b(x) = 4*arcsin(sin(x)/n_blue) - 2*x

RED = plot(f_r(x), -1.57, 1.57, color='red', thickness=1.8, legend_label='$y = E(x), for \ n = 1.33$')
ORANGE = plot(f_o(x), -1.57, 1.57, color='orange', thickness=1.8, legend_label='$y = E(x), for \ n = 1.333$')
GREEN = plot(f_g(x), -1.57, 1.57, color='green', thickness=1.8, legend_label='$y = E(x), for \ n = 1.336$')
BLUE = plot(f_b(x), -1.57, 1.57, color='blue', thickness=1.8, legend_label='$y = E(x), for \ n = 1.34$')

show(RED, aspect_ratio=1, figsize=8) 

max = cos((2+pi)/7)
maxDegrees = (180/pi) * max
print 'Estimated maximum =', N(max, digits=2), '=', N(maxDegrees, digits=4), 'degrees'

g(x) = max
maxLine = plot(g(x), 0.8, 1.2, color='grey', thickness=1.3, legend_label='$y = 0.74$')
maxRED = plot(f_r(x), 0.8, 1.2, color='red', thickness=1.8, legend_label='$y = E(x), for \ n = 1.33$')

show(maxRED+maxLine, aspect_ratio=2.4, figsize=7) 

## Problem 4.c

RED2 = plot(f_r(x), 0.5, 1.57, color='red', thickness=1.8, legend_label='$y = E(x), for \ n = 1.33$')
ORANGE2 = plot(f_o(x), 0.5, 1.57, color='orange', thickness=1.8, legend_label='$y = E(x), for \ n = 1.333$')
GREEN2 = plot(f_g(x), 0.5, 1.57, color='green', thickness=1.8, legend_label='$y = E(x), for \ n = 1.336$')
BLUE2 = plot(f_b(x), 0.5, 1.57, color='blue', thickness=1.8, legend_label='$y = E(x), for \ n = 1.34$')

show(RED+ORANGE+GREEN+BLUE, aspect_ratio=1, figsize=8)
show(RED2+ORANGE2+GREEN2+BLUE2, aspect_ratio=1, figsize=8) 