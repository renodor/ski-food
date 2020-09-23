const languageSelecion = () => {
  const languageSelector = document.querySelector('.language-selector');

  if (languageSelector) {
    const languageSelectorItems = document.querySelectorAll('.language-selector .language-selector-item');

    languageSelectorItems.forEach((languageSelectorItem) => {
      languageSelectorItem.addEventListener('click', (event) => {
        const locale = event.currentTarget.dataset.locale;
        const currentPath = window.location.pathname;
        let newPath = '';

        // check if the current locale is written in the url
        // if yes replace it with the new locale
        // if no just add the new locale at the beginning of the url
        if (currentPath[3] == '/' || currentPath.length == 3) {
          const currentPathWithoutLocale = currentPath.slice(3, currentPath.length);
          newPath = `/${locale}${currentPathWithoutLocale}${window.location.hash}`;
        } else {
          newPath = `/${locale}${currentPath}${window.location.hash}`;
        }
        window.location.href = newPath;
      });
    });
  }
};

export default languageSelecion;
