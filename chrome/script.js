const selectSearchEngine = document.getElementById('select-search-engine');
const searchForm = document.getElementById('search-form');

// Define o buscador padrão se ainda não existir
if (localStorage.getItem('search-engine') == null) {
  localStorage.setItem('search-engine', 'google');
}

// Aplica visualmente o valor salvo no seletor
const currentValue = localStorage.getItem('search-engine');
selectSearchEngine.value = currentValue;

// Atualiza o localStorage ao trocar o seletor
selectSearchEngine.addEventListener('change', e => {
  localStorage.setItem(
    'search-engine',
    selectSearchEngine.options[selectSearchEngine.selectedIndex].value
  );
  e.preventDefault();
});

// Ação de busca + som
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

  // Verifica se a engine é válida
  if (!searchUrls[searchEngine]) return;

  // Toca o som e só depois abre nova aba
  whisper.play().then(() => {
    whisper.onended = () => {
      window.open(searchUrls[searchEngine] + encodeURIComponent(query), '_blank');
    };
  }).catch(error => {
    console.warn('Falha ao reproduzir o áudio:', error);
    window.open(searchUrls[searchEngine] + encodeURIComponent(query), '_blank');
  });
});
