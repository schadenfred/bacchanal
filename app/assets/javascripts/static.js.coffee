$('#wizards').hide()
$('#manifesto').hover (->
  $('#muggles').fadeOut 'slow', ->
    $('#wizards').fadeIn 'slow'
    return
  return
), ->
  $('#wizards').fadeOut 'slow', ->
    $('#muggles').fadeIn 'slow'
    return
  return
$ ->
  $('[data-toggle="tooltip"]').tooltip()
  return