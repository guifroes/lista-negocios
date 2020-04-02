# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  $ ->
    $("button[data-remote]").on "click", (event) ->
      $.ajax({
          url: "https://viacep.com.br/ws/" + $("#negocio_cep").val() + "/json/unicode/",
          dataType: 'json',
          success: (resposta) ->
              $("#negocio_logradouro").val(resposta.logradouro)
              $("#negocio_complemento").val(resposta.complemento)
              $("#negocio_bairro").val(resposta.bairro)
              $("#negocio_cidade").val(resposta.localidade)
              $("#negocio_estado").val(resposta.uf)
              $("#negocio_numero").focus()
          })
  return

		