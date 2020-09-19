const dishForm = () => {
  const form = document.querySelector('.dish-form');

  if (form) {
    const ingredientsWrapper = form.querySelector('.ingredients-wrapper');
    const deleteIngredientBtns = ingredientsWrapper.querySelectorAll('.ingredient-field i');
    const addIngredientBtn = form.querySelector('.add-ingredient');

    deleteIngredientBtns.forEach((deleteIngredientBtn) => {
      deleteIngredientBtn.addEventListener('click', (event) => {
        event.currentTarget.parentNode.remove();
      });
    });

    addIngredientBtn.addEventListener('click', (event) => {
      event.preventDefault();
      ingredientsWrapper.insertAdjacentHTML('beforeend', `
        <div class="form-group ingredient-field">
          <input type="text"
                 name="dish[ingredients][]"
                 id="dish_ingredients_"
                 value=""
                 class="form-control"
                 data-np-checked="1">
          <i class="fas fa-trash-alt"></i>
        </div>`
      );

      const lastIngredientFieldBtn = ingredientsWrapper.querySelector('.ingredient-field:last-child i');
      lastIngredientFieldBtn.addEventListener('click', (event) => {
        event.currentTarget.parentNode.remove();
      });
    });
  }
};

export default dishForm;
