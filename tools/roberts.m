function output = roberts(img)
    Rx = [1 0; 0 -1];
    Ry = [0 1; -1 0];
    Ix = conv2(double(img), double(Rx), 'same');
    Iy = conv2(double(img), double(Ry), 'same');
    output = uint8(sqrt(Ix.^2 + Iy.^2));
end

