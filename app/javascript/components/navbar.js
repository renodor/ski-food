const navBar = () => {
  const navBar = document.querySelector('.navbar');

  const toggleNavbarTransparent = () => {
    if (window.scrollY >= navBar.offsetHeight) {
      navBar.classList.remove('navbar-transparent');
    } else {
      navBar.classList.add('navbar-transparent');
    }
  };

  if (navBar) {
    if (navBar.classList.contains('navbar-homepage')) {
      window.addEventListener('load', () => {
        toggleNavbarTransparent();
      });

      window.addEventListener('scroll', () => {
        toggleNavbarTransparent();
      });
    }

    const menuToggle = document.getElementById('menu-toggle');
    menuToggle.addEventListener('click', (event) => {
      event.currentTarget.classList.toggle('active');
    });
  }
};

export default navBar;
