const navBar = () => {
  const navBar = document.querySelector('.navbar');
  if (navBar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= navBar.offsetHeight) {
        navBar.classList.add('bg-white');
      } else {
        navBar.classList.remove('bg-white');
      }
    });
  }
}

export default navBar;
