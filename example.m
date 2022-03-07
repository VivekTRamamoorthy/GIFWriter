x = linspace(0, 2*pi);
for theta = 0:pi/16:pi
  plot(x, sin(x-theta),'b' );
  gifwriter
end

for theta = pi:-pi/16:0
plot(x, sin(x-theta), 'r' );
  gifwriter
end