%1
Im=zeros(800,800);
%mkdir LAB5;
%cd LAB5;
imwrite(Im,gray(256),'out_img_1.bmp');


%2
R=imnoise(Im,'gaussian');
R=255*R;
imwrite(R,gray(256),'out_img.bmp');
Im=R;


%3
saveas(histogram(R),'Histo.bmp','bmp');


%4
imshow(Im);
p=rectangle('Position',[360 380 80 40],'Curvature',[1 1], 'EdgeColor', 'w','FaceColor','w');


%5
Im2=imresize(Im,2,'nearest');
imwrite(Im2,gray(256),'out_img_x2.bmp')
imshow(Im2);


%6
Im2=imresize(Im,0.5,'bicubic');
imwrite(Im2,gray(256),'out_img_x05.bmp');
imshow(Im2);
%Im= insertShape(Im,p);
imwrite(Im2,gray(256),'pic_1.bmp');


%7
Im3=R;
%Im3=insertShape(Im3,'Polygon',[80 10, 10 50, 10 130, 80 170, 150 130, 150 50],'LineWidth', 5,'Color','w');
Im3=insertShape(Im3,'Polygon',[10 80, 50 10, 130 10, 170 80, 130 150, 50 150],'LineWidth', 5,'Color','w');
Im3=insertShape(Im3,'FilledPolygon',[50 40, 130 40, 130 120, 50 120 ],'Opacity',1,'Color','w');
Im3=insertShape(Im3,'Polygon',[790 720, 750 790, 710 720],'LineWidth', 5,'Color','w');
imwrite(Im3,gray(256),'pic_2.bmp');

%8
Im4=flip(Im3,1);
imshow(Im4);
imwrite(Im4,gray(256),'out_image_zer_gor.bmp');


%9
Im4=flip(Im3,2);
imshow(Im4);
imwrite(Im4,gray(256),'out_image_zer_vert.bmp');


%10
Im4=imrotate(Im3,-45);
imshow(Im4);
imwrite(Im4,gray(256),'out_image_pov_45.bmp');


%11
Im4=imrotate(Im3,45);
imshow(Im4);
imwrite(Im4,gray(256),'out_image_pov_-45.bmp');


%12
I=imread('med.jpg');
I=imcrop(I,[100 100 900 900]);


%13
I1=I/4;
imwrite(I,'fon_o.jpg');
imwrite(I1,'fon_1.jpg');


%14
I2=rgb2gray(I1);
I2=imnoise(I2,'gaussian')*255;
I2=insertShape(I2,'Polygon',[10 80, 50 10, 130 10, 170 80, 130 150, 50 150],'LineWidth', 5,'Color','w');
I2=insertShape(I2,'FilledPolygon',[50 40, 130 40, 130 120, 50 120 ],'Opacity',1,'Color','w');
I2=insertShape(I2,'Polygon',[790 720, 750 790, 710 720],'LineWidth', 5,'Color','w');
imwrite(I2,'Anton.bmp');


%15
I4=255-I2;
imwrite(I4,'Negative_anton.bmp');


%16
I3=rgb2gray(I1);
I3=imnoise(I3,'gaussian')*255;
I3=insertShape(I3,'FilledRectangle',[ 450 450 150 150 ],'Opacity',1,'Color','w');
imwrite(I3,'Klizma.bmp');


%17
imwrite(I3-I2,'Gey.bmp')