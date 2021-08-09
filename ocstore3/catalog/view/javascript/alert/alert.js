$(function() {
  if (!sessionStorage.getItem('simple-alert_hide')) {
    $('#simple-alert').removeClass('hide');
    $('#simple-alert').on('closed.bs.alert', function() {
       sessionStorage.setItem('simple-alert_hide', true);
    });
  }
});
