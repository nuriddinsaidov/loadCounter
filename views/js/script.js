document.addEventListener("DOMContentLoaded", (event) => {
    edit()
});
function edit()
{
    let imgs = document.getElementsByTagName("img");
    for(let i = 0; i < imgs.length; i++) {
        imgs[i].src = imgs[i].src + '?url=' + window.location.href;
    }

}