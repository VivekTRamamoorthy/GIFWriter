# GIFWriter for Matlab
Quickly create GIF animations in Matlab

## Usage
- Add `gifwriter.m` to your path
- Insert `gifwriter` after every plot.
- Run your file and your gif animation is saved as `animation.gif`.

## Example
```
x = linspace(0, 2*pi);
for theta = 0:pi/32:4*pi
  plot(x, sin(x+theta) );
  gifwriter
end

for theta = 4*pi:-pi/32:0
plot(x, sin(x+theta) );
  gifwriter
end
```



## Optional controls
Choose filename or delaytime by including the following in your preamble.

```
%%% GIF WRITER CONTROLS
giffilename = './my_gif_filename.gif'; % Name of the gif file
gifdelaytime = 0.3; % delay time between each image
giftrigger = 1; % Trigger that resets the writing from first image
writegif = 1; % Whether or not to save gif. Toggle this off to stop writing gif
%%% END GIF WRITER CONTROLS
```

## License
MIT License
Vivek T Ramamoorthy
February 2022

