#= require lib/jquery-2.0.0
#= require lib/underscore-1.5.2
#= require editor

jQuery ->
  console.log "The DOM feels ready!"
  Alex.API.getTestData
    success: (data)-> $('body').append JST['editor'](data)
    error: (xhr) -> alert 'Woah error!'

this.Alex = {}

Alex.API =
  getTestData: (opts={}) ->
    $.ajax
      url: '/test'
      success: (data,status,xhr) ->
        console.log 'getTestData success:', data
        opts.success(data) if opts.success
      error: (xhr,status,error) ->
        console.error xhr
        opts.error(xhr) if opts.error
