import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const author = document.getElementById('author');
  const citation = document.getElementById('citation');
  if (citation) {
    new Typed('#citation', {
      strings: ["Le jeu est la forme la plus élevée de la recherche"],
      typeSpeed: 60,
      loop: false,
      showCursor: false,
      backDelay: 700,
      onComplete: function () {
        $(".typed-cursor").hide();
        author.innerText = "Albert Einstein";
      }
    });
  }
}


export { loadDynamicBannerText };
