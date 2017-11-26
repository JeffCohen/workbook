$(function() {
  $(".table-clickable tr[data-href]").on('click', function(e) {
    window.location = $(this).data('href')
  });
});
