function output = segmentation(edge, type, n_largest, n_open, clear)
    bw = imbinarize(edge,type);

    if n_largest > 0
        bw = bwareafilt(bw,n_largest,"largest");
    elseif n_largest == 0
        bw = bwareaopen(bw,n_open);
    end

    if clear
        bw = imclearborder(bw);
    end

    bw = imclose(bw,strel('disk',15));
    output = imfill(bw,"holes");
end