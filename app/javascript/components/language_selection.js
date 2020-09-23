const languageSelecion = () => {
  const languageSelector = document.querySelector('.language-selector');

  if (languageSelector) {
    const languageSelectorItems = document.querySelectorAll('.language-selector .language-selector-item');

    languageSelectorItems.forEach((languageSelectorItem) => {
      languageSelectorItem.addEventListener('click', (event) => {
        const locale = event.currentTarget.dataset.locale;
        let path = window.location.pathname;
        path = path.slice(3, path.length);
        path = `/${locale}${path}${location.hash}`;
        window.location.href = path;
      });
    });
  }
};

export default languageSelecion;
