function [enh rows columns]=his_en(gim)
enh=histeq(gim);
[rows columns]=size(enh);
end