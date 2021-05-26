const galleryThumbnail = document.querySelectorAll(".thumbnails-list li");
const galleryFeatured = document.querySelector(".product-gallery-featured img");

galleryThumbnail.forEach((item) => {
  item.addEventListener("mouseover", function () {
    let image = item.children[0].src;
    galleryFeatured.src = image;
  });
});
