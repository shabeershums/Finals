function I=loadimage
[filename,pathname]=uigetfile({'*.png';'*.bmp';'*.tif';'*.jpg'});
I=imread([pathname,filename]);
I=imresize(I,[256 256]);
end