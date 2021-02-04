const revealLive = () => {
  const live = document.querySelector('.live_class');
  if (live) {
    const liveClassement = document.querySelector('.live_classement');
    const onlineClassement = document.querySelector('.online_classement');
    live.addEventListener('click', ()=> {
      liveClassement.classList.remove('d-none');
      onlineClassement.classList.add('d-none');
    });
  }
}

const revealOnline = () => {
  const online = document.querySelector('.online_class');
  if (online) {
    const liveClassement = document.querySelector('.live_classement');
    const onlineClassement = document.querySelector('.online_classement');
    online.addEventListener('click', ()=> {
      onlineClassement.classList.remove('d-none');
      liveClassement.classList.add('d-none');
    });
  }
}
export { revealLive };
export { revealOnline };
