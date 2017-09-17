function enhf=fil_en(gim)
f=fspecial('unsharp');
enhf=imfilter(gim,f);
end