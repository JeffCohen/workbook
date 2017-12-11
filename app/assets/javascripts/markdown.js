$(function() {
  $("img").addClass('img-responsive')
  $(".main table").addClass('table table-bordered')
  $(".main table").wrap('<div class="table-responsive"></div>')
  $(".main thead").addClass('thead-light')
  // $("p code").parent().addClass('code')
  $('pre[lang]').each(function(i, block) {
    hljs.highlightBlock(block);
  });
  $('.draft h1').append('<img class="img-fluid float-right" src="/draft.png">');
})
