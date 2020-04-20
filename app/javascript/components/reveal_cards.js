const revealIsabelle = () => {
  const isabelle = document.getElementById('isabelle');
  const cardAvec = document.querySelector('#card-avec');
  if (isabelle) {
    const cardIsabelle = document.querySelector('#card-isabelle');
    isabelle.addEventListener('click', () => {
      cardAvec.classList.remove('show');
      cardIsabelle.classList.toggle('show');
    })
  }
};

const revealAvec = () => {
  const avec = document.getElementById('avec');
  const cardIsabelle = document.querySelector('#card-isabelle');
  if (avec) {
    const cardAvec = document.querySelector('#card-avec');
    avec.addEventListener('click', ()=>{
      cardIsabelle.classList.remove('show');
      cardAvec.classList.add('show');
    })
  }
};

export { revealIsabelle };
export { revealAvec };



