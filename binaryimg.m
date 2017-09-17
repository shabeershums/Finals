function bin=binaryimg(gim)
level=graythresh(gim);
bin=im2bw(gim,level);
bin=imcomplement(bin);
end