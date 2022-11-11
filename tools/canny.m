function output = canny(img)
    if size(img,3) == 3
        R = img(:,:,1);
        G = img(:,:,2);
        B = img(:,:,3);
        RedEdge = edge(R,"canny");
        GreenEdge = edge(G,"canny");
        BlueEdge = edge(B,"canny");
        output = uint8(cat(3,RedEdge,GreenEdge,BlueEdge)) * 255;
    else
        output = edge(img,"canny") * 255;
    end
   
    output = im2gray(output);
end