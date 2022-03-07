x = linspace(0, 2*pi);
for theta = 0:pi/16:4*pi
  plot(x, sin(x+theta) );
  gifwriter
end

for theta = 4*pi:-pi/16:0
plot(x, sin(x+theta) );
  gifwriter
end