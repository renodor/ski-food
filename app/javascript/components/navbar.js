const navBar = () => {
  const navBar = document.querySelector('.navbar');
  const menuToggle = document.getElementById('menu-toggle')
  if (navBar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= navBar.offsetHeight) {
        navBar.classList.add('white');
      } else {
        navBar.classList.remove('white');
      }
    });

    menuToggle.addEventListener('click', event => {
      event.currentTarget.classList.toggle('active')
    })
  }
}

export default navBar;
