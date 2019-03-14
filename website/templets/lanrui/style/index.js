
$('header ul li').hover(function () {
        $(this).find('.arrow-up').show();
        $(this).find('.us').show();
    }, function () {
        $(this).find('.arrow-up').hide();
      $(this).find('.us').hide();
    });