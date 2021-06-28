
const carouselSlide = document.querySelector('.carousel_slide');
const carouselImages = document.querySelector('.carousel_slide img');
const prevBtn = document.querySelector('#prevBtn');
const nextBtn = document.querySelector('#nextBtn');
let counter = 1;
const size = carouselImages[0].clientWidth;
carouselSlide.style.tranform = 'translateX(' + (-size * counter) + 'px)';
nextBtn.addEventListener('click', () => {
    carouselSlide.style.transition = "transform 0.4s ease-in-out";
    counter++;
    carouselSlide.style.tranform = 'translateX(' + (-size * counter) + 'px)';
});
prevBtn.addEventListener('click', () => {
    carouselSlide.style.transition = "transform 0.4s ease-in-out";
    counter++;
    carouselSlide.style.tranform = 'translateX(' + (-size * counter) + 'px)';
});