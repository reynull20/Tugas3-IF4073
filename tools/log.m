function output = log(img)
    kernel = [0 0 -1 0 0;
              0 -1 -2 -1 0;
              -1 -2 16 -2 -1;
              0 -1 -2 -1 0;
              0 0 -1 0 0];
    output = uint8(conv2(double(img),double(kernel)));
end

