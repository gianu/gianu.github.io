---
---
# Your javascript
$ ->
  $('#search-query').lunrSearch
    indexUrl: '/search.json'
    results: '#search-results'
    entries: '.entries'
    template: '#search-results-template'

  $('.blog-post').emojify({
    width: '24px', 
    height: '24px',
    emoji_dir: "https://s3.amazonaws.com/softwarepsychonaut/emoji"
  });
