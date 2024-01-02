/**
 * Handles the scroll event.
 *
 * @returns {undefined} No return value.
 */
const floatingButtonContainer = document.querySelector(".fab-container");
let lastScrollY = window.scrollY;

floatingButtonContainer.style.zIndex = 99999;

/**
 * Handles the scroll event.
 *
 * @returns {undefined} No return value.
 */
function handleScrollEvent() {
  const scrollY = window.scrollY;
  const scrollDelta = scrollY - lastScrollY;

  if (scrollDelta !== 0) {
    requestAnimationFrame(() => {
      floatingButtonContainer.style.transform = `translateY(${scrollY}px)`;
    });

    lastScrollY = scrollY;
  }

  console.log("Scroll event occurred!");

  const imagesToLazyLoad = document.querySelectorAll("img[data-src]");

  imagesToLazyLoad.forEach((img) => {
    const rect = img.getBoundingClientRect();

    if (rect.top < window.innerHeight) {
      img.src = img.dataset.src;
      img.removeAttribute("data-src");
    }
  });
}
