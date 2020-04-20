const revealIsabelle = () => {
  const isabelle = document.getElementById('isabelle');
  if (isabelle) {
    const cardIsabelle = document.querySelector('#card-isabelle');
    isabelle.addEventListener('click', () => {
      cardIsabelle.classList.toggle('show');
    })
  }
};

const revealAvec = () => {
  const avec = document.getElementById('avec');
  if (avec) {
    const cardAvec = document.querySelector('#card-avec');
    avec.addEventListener('click', ()=>{
      cardAvec.classList.toggle('show');
    })
  }
};

export { revealIsabelle };
export { revealAvec };



