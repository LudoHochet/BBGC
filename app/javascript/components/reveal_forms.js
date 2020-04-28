const revealReviewForm = () => {
  const btnNewReview = document.getElementById('add-review');
  if (btnNewReview) {
    btnNewReview.addEventListener('click', () => {
      const reviewForm = document.querySelector('.review-form');
      reviewForm.classList.add('visible');
    });
  }
};

const revealParagraphForm = () => {
  const btnNewParagraph = document.getElementById('add-paragraph');
  if (btnNewParagraph) {
    btnNewParagraph.addEventListener('click', () => {
      const paragraphForm = document.querySelector('.paragraph-form');
      paragraphForm.classList.add('visible');
    });
  }
};

const revealLinkForm = () => {
  const btnNewLink = document.getElementById('add-link');
  if (btnNewLink) {
    btnNewLink.addEventListener('click', () => {
      const linkForm = document.querySelector('.link-form');
      linkForm.classList.add('visible');
    });
  }
};

export { revealReviewForm };
export { revealParagraphForm };
export { revealLinkForm };
