function createImages()
{
    var files = ["image1.jpg","image2.jpg",
                 "image3.jpg","image4.jpg"];
    var i = 0;
    for (i = 0; i < files.length; i++){
        createImage(files[i]);
    }
}

function createImage(name) {
    innerModel.append({"url": name});
}
