const selectSearchEngine = document.getElementById('select-search-engine');
const searchForm = document.getElementById('search-form');

if (localStorage.getItem('search-engine') == null) {
  localStorage.setItem('search-engine', 'google');
}

const currentValue = localStorage.getItem('search-engine');
selectSearchEngine.value = currentValue;

selectSearchEngine.addEventListener('change', e => {
  localStorage.setItem(
    'search-engine',
    selectSearchEngine.options[selectSearchEngine.selectedIndex].value
  );
  e.preventDefault();
});

searchForm.addEventListener('submit', e => {
  e.preventDefault();

  const query = searchForm.elements['query'].value;
  const searchEngine = localStorage.getItem('search-engine');
  const whisper = new Audio('whisper.mp3');

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

  whisper.play().then(() => {
    whisper.onended = () => {
      window.location.href = targetUrl;
    };
  }).catch(error => {
    console.warn('Falha ao reproduzir o audio:', error);
    window.location.href = targetUrl;
  });
});
