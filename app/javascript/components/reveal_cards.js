const revealIsabelle = () => {
  const isabelle = document.getElementById('isabelle');
  const cardRoof = document.querySelector('#card-roof');
  if (isabelle) {
    const cardIsabelle = document.querySelector('#card-isabelle');
    isabelle.addEventListener('click', () => {
      cardRoof.classList.remove('show');
      cardIsabelle.classList.toggle('show');
    })
  }
};

const revealRoof = () => {
  const roof = document.getElementById('roof');
  const cardIsabelle = document.querySelector('#card-isabelle');
  if (roof) {
    const cardRoof = document.querySelector('#card-roof');
    roof.addEventListener('click', ()=>{
      cardIsabelle.classList.remove('show');
      cardRoof.classList.toggle('show');
    })
  }
};

export { revealIsabelle };
export { revealRoof };



