const selectSearchEngine = document.getElementById('select-search-engine');
const searchForm = document.getElementById('search-form');
const soundToggle = document.getElementById('sound-enabled');

if (localStorage.getItem('search-engine') == null) {
  localStorage.setItem('search-engine', 'google');
}

if (localStorage.getItem('sound-enabled') == null) {
  localStorage.setItem('sound-enabled', 'true');
}

const currentValue = localStorage.getItem('search-engine');
selectSearchEngine.value = currentValue;

const soundEnabled = localStorage.getItem('sound-enabled') === 'true';
soundToggle.checked = soundEnabled;

selectSearchEngine.addEventListener('change', e => {
  localStorage.setItem(
    'search-engine',
    selectSearchEngine.options[selectSearchEngine.selectedIndex].value
  );
  e.preventDefault();
});

soundToggle.addEventListener('change', () => {
  localStorage.setItem('sound-enabled', soundToggle.checked.toString());
});

searchForm.addEventListener('submit', e => {
  e.preventDefault();

  const query = searchForm.elements['query'].value;
  const searchEngine = localStorage.getItem('search-engine');
  const isSoundEnabled = localStorage.getItem('sound-enabled') === 'true';

  const searchUrls = {
    google: 'https://www.google.com/search?q=',
    yahoo: 'https://search.yahoo.com/search?p=',
    bing: 'https://www.bing.com/search?q=',
    'duckduckgo': 'https://duckduckgo.com/?q=',
    'brave search': 'https://search.brave.com/search?q=',
    qwant: 'https://www.qwant.com/?q=',
    ecosia: 'https://www.ecosia.org/search?q='
  };

  if (!searchUrls[searchEngine]) return;

  const targetUrl = searchUrls[searchEngine] + encodeURIComponent(query);

  if (isSoundEnabled) {
    const whisper = new Audio('whisper.mp3');
    whisper.play().then(() => {
      whisper.onended = () => {
        window.location.href = targetUrl;
      };
    }).catch(() => {
      window.location.href = targetUrl;
    });
  } else {
    window.location.href = targetUrl;
  }
});
