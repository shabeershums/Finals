function [localBinaryPatternImage]=lbp(enh)
[rows columns]=size(enh);
localBinaryPatternImage = zeros(size(enh));
for row = 2 : rows - 1   
	for col = 2 : columns - 1    
		centerPixel = enh(row, col);
		pixel7=enh(row-1, col-1) > centerPixel;  
		pixel6=enh(row-1, col) > centerPixel;   
		pixel5=enh(row-1, col+1) > centerPixel;  
		pixel4=enh(row, col+1) > centerPixel;     
		pixel3=enh(row+1, col+1) > centerPixel;    
		pixel2=enh(row+1, col) > centerPixel;      
		pixel1=enh(row+1, col-1) > centerPixel;     
		pixel0=enh(row, col-1) > centerPixel;       
		localBinaryPatternImage(row, col) = uint8(...
			pixel7 * 2^7 + pixel6 * 2^6 + ...
			pixel5 * 2^5 + pixel4 * 2^4 + ...
			pixel3 * 2^3 + pixel2 * 2^2 + ...
			pixel1 * 2 + pixel0 * 1);
	end  
end 