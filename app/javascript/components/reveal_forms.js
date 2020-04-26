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

export { revealReviewForm };
export { revealParagraphForm};
