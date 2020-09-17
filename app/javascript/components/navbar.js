const navBar = () => {
  const navBar = document.querySelector('.navbar');
  if (navBar) {
    if (navBar.classList.contains('navbar-transparent')) {
      window.addEventListener('scroll', () => {
        if (window.scrollY >= navBar.offsetHeight) {
          navBar.classList.remove('navbar-transparent');
        } else {
          navBar.classList.add('navbar-transparent');
        }
      });
    }

    const menuToggle = document.getElementById('menu-toggle');
    menuToggle.addEventListener('click', event => {
      event.currentTarget.classList.toggle('active');
    })
  }
}

export default navBar;
