const navBar = () => {
  const navBar = document.querySelector('.navbar');
  if (navBar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= navBar.offsetHeight) {
        navBar.classList.add('white');
      } else {
        navBar.classList.remove('white');
      }
    });
  }
}

export default navBar;
