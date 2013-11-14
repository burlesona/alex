#= require lib/jquery-2.0.0
#= require lib/underscore-1.5.2
#= require editor

this.data = {foo: 'bar', baz: 'qux'}
jQuery ->
  console.log "The DOM feels ready!"
  $('body').append JST['editor'](data)

