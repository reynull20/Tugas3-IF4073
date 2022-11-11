function output = laplace(img)
    kernel = [1 1 1; 1 -8 1; 1 1 1];
    output = uint8(conv2(double(img),double(kernel)));
end

