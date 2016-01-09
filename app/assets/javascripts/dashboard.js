$(function () {
  $('#position_positionable_tokens').tokenInput('/orgs.json', { 
    crossDomain: false
    , minChars: 3
    , placeholder: "Winery name"
    , theme: "bootstrap"
  });

  $('#position_tenure_start').datepicker({
    dateFormat: 'yy-mm-dd'
  })

  $('#position_tenure_end').datepicker({
    dateFormat: 'yy-mm-dd'
  })

  
});

