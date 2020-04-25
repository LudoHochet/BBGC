const revealReviewForm = () => {
  const btnNewReview = document.getElementById('add-review');
  if (btnNewReview) {
    btnNewReview.addEventListener('click', () => {
      console.log("test");
      const reviewForm = document.querySelector('.review-form');
      reviewForm.classList.add('visible');
    });
  }
};

export { revealReviewForm };
