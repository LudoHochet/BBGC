// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { loadDynamicBannerText } from '../plugins/typed_js';
import { revealIsabelle } from '../components/reveal_cards';
import { revealRoof } from '../components/reveal_cards';
import { revealReviewForm } from '../components/reveal_forms';
import { revealParagraphForm } from '../components/reveal_forms';
import { revealLinkForm } from '../components/reveal_forms';
import { revealSmallParagraphForm } from '../components/reveal_forms';
import { revealSmallLinkForm } from '../components/reveal_forms';
import { revealLive } from '../components/reveal_class';
import { revealOnline } from '../components/reveal_class';
// import { hideLinkForm } from '../components/hide_forms';
// import { overCards } from '../components/over_article_cards';


// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  initMapbox();
  loadDynamicBannerText();
  initAutocomplete();
  revealIsabelle();
  revealRoof();
  revealReviewForm();
  revealParagraphForm();
  revealLinkForm();
  revealSmallParagraphForm();
  revealSmallLinkForm();
  revealLive();
  revealOnline();
  // hideLinkForm();
});
