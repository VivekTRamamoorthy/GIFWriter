%% GIF WRITER
% % USAGE:
% % Include this in the beginning of your code:
% %%% GIF WRITER CONTROLS
% giffilename = './my_gif_filename.gif'; % Name of the gif file
% gifdelaytime = 0.3; % delay time between each image
% giftrigger = 1; % Trigger that resets the writing from first image
% writegif = 1; % Whether or not to save gif. Toggle this off to stop writing gif
% %%% END GIF WRITER CONTROLS
% % Include this after each plot frame:
% gifwriter
% % Author: Vivek T Ramamoothy (@VTRamamoorthy)
% % 2022 February
% % MIT License
% % Downloaded from https://www.github.com/VivekTRamamoorthy/GIFWriter


%% CHECKS
% This section performs check 
if ~exist('giffilename','var') || ~exist('gifdelaytime','var') ||...
    ~exist('giftrigger','var') || ~exist('writegif','var')
    %% GIF WRITER CONTROLS
    giffilename = './myanimation.gif'; % Name of the gif file
    gifdelaytime = 0.1; % delay time between each image
    giftrigger = true; % Trigger that resets the writing from first image
    writegif = true; % Whether or not to save gif. Toggle this off to stop writing gif
end

%% WRITING TO GIF

if writegif
    frame = getframe(gcf);
    im = frame2im(frame);
    [imind,cm] = rgb2ind(im,256);
    if giftrigger==1 % initializes the gif file
        imwrite(imind,cm,giffilename,'gif', 'Loopcount',inf,'DelayTime',gifdelaytime);
        giftrigger=0;
    else % appends to existing gif file
        imwrite(imind,cm,giffilename,'gif','WriteMode','append','DelayTime',gifdelaytime);
    end
end
