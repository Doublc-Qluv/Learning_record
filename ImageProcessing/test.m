imagesc(1:8)
colormap(gray)


%First
colormap(gray);
dark=zeros(256,256);
dark(64:192,1:256)=0.5;
subplot(1,3,2);imshow(dark);
%Second
middle(1:256,1:256)=0.7;
middle(64:192,64:192)=0.5;
subplot(1,3,2);imshow(middle)
%third
brigtht=ones(256,256);
bright(64:192,64:192)=0.5;
subplot(1,3,3);imshow(bright)

