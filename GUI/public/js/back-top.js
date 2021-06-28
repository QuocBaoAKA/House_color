const totop = document.querySelector(".back-to-top");
window.addEventListener("scroll", () => {
    if (window.pageYOffset > 100) {
        totop.classList.add("active");
    } else {
        totop.classList.remove("active");
    }
})