function [mAR mMIN mMAJ]= featuree(Im)

rm=regionprops(Im,'all');

rm1=extractfield(rm,'Area');
[rm11 index1]=max(rm1);
mAR=round(rm11);
            
rm2=extractfield(rm,'MinorAxisLength');
[rm22 index2]=max(rm2);
mMIN=round(rm22);

rm3=extractfield(rm,'MajorAxisLength');
[rm33 index3]=max(rm3);
mMAJ=round(rm33);
end