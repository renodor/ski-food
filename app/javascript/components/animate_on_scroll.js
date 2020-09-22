const animateOnScroll = () => {
  // get all elements that need to be animated on scroll
  const animatedElements = document.querySelectorAll('[data-animation-on-scroll]');

  if (animatedElements.length > 0) {
    // listen the scroll on the main window
    window.addEventListener('scroll', (event) => {
      animatedElements.forEach((element) => {
        // get the name of the animation
        const animation = element.dataset.animationOnScroll;
        // as soon as an element get fully visible apply the animation
        if ((element.getBoundingClientRect().top + element.offsetHeight) < window.innerHeight) {
          element.classList.add(animation);
        }
      });
    });
  };
};

export default animateOnScroll;
