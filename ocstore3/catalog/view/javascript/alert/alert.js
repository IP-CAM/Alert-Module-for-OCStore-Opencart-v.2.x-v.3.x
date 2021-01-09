$(document).ready(() => {
  if (!$.cookie("simple-alert_hide")) {
    $('#simple-alert').removeClass('hide');
    $('#simple-alert').on('closed.bs.alert', () => $.cookie("simple-alert_hide", true, { expires: 7, path: '/' }));
  }
});
