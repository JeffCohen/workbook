$(function() {
  $("img").addClass('img-responsive')
  $("table").addClass('table table-responsive table-bordered')
  $("thead").addClass('thead-light')

  $('pre[lang]').each(function(i, block) {
    hljs.highlightBlock(block);
  });
})
