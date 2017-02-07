// app/assets/javascripts/analytics.js
$(document).on('turbolinks:load', function() {
  ga('send', 'pageview', window.location.pathname);
});
