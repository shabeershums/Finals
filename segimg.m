function heIbin=segimg(enh)
elevel=graythresh(enh);
eIbin=im2bw(enh,elevel);
eIbin=imcomplement(eIbin);
heIbin=imfill(eIbin,'holes');
end