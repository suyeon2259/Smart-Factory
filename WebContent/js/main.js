// 스크롤 애니메이션 
function isElementUnderBottom(elem, triggerDiff) {
  const { top } = elem.getBoundingClientRect();
  const { innerHeight } = window;
  return top > innerHeight + (triggerDiff || 0);
}

function handleScroll() {
  const elems = document.querySelectorAll('.up-on-scroll');
  elems.forEach(elem => {
    if (isElementUnderBottom(elem, -150)) {
      elem.style.opacity = "0";
      elem.style.transform = 'translateY(70px)';
    } else {
      elem.style.opacity = "1";
      elem.style.transform = 'translateY(0px)';
    }
  })
}

window.addEventListener('scroll', handleScroll);

// 메뉴
function menuOpen() {
	var m_open = document.getElementById('mnCnt');
	m_open.style.display = "block";
}

function menuClose() {
    var m_close = document.getElementById('mnCnt');
    m_close.style.display = "none";
}