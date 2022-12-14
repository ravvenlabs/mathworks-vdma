setup

sim('sobel.slx',2)

t = tiledlayout(1,2, 'Padding', 'none', 'TileSpacing', 'compact'); 
t.TileSpacing = 'compact';
t.Padding = 'compact';
 
nexttile    
imagesc(inputImage)
axis off
nexttile
imagesc(outputImage);
colormap gray
axis off