import numpy as np

R = 8
r = 1
a = 4
x0 = R + r - a
y0 = 0
sgmX = -118.289141
sgmY = 34.021193
factor = 0.01
n = 16

t = 0.0
while t < np.pi*n:
    x = (R + r) * np.cos((r / R) * t) - a * np.cos((1.0 + r / R) * t)
    y = (R + r) * np.sin((r / R) * t) - a * np.sin((1.0 + r / R) * t)
    print((sgmX + factor * x),",",(sgmY + factor * y),",100",sep='')
    t += 0.01