const dishForm = () => {
  const form = document.querySelector('.dish-form');

  if (form) {
    const deleteBtns = document.querySelectorAll('.dish-form .ingredient-field label i');
    deleteBtns.forEach((deleteBtn) => {
      deleteBtn.addEventListener('click', (event) => {
        console.log(event.currentTarget.parentNode.parentNode.remove());
      });
    });
  }
};

export default dishForm;
