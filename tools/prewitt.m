function output = prewitt(img)
    Px = [-1 0 1; -1 0 1; -1 0 1];
    Py = [-1 -1 -1; 0 0 0; 1 1 1];
    Ix = conv2(double(img),double(Px),"same");
    Iy = conv2(double(img),double(Py),"same");
    output = uint8(sqrt(Ix.^2+Iy.^2));
end

