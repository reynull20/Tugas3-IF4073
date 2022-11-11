function output = sobel(img)
    Hx = [-1 0 1; -2 0 2; -1 0 1];
    Hy = [1 2 1; 0 0 0; -1 -2 -1];
    Ix = conv2(double(img),double(Hx),"same");
    Iy = conv2(double(img),double(Hy),"same");
    output = uint8(sqrt(Ix.^2+Iy.^2));
end

