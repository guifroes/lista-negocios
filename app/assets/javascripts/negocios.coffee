# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("button[data-remote]").on "click", (event) ->
    console.log("asasfdas")
    $.ajax({
        # //O campo URL diz o caminho de onde virá os dados
        # //É importante concatenar o valor digitado no CEP
        url: "https://viacep.com.br/ws/" + $("#negocio_cep").val() + "/json/unicode/",
        # //Aqui você deve preencher o tipo de dados que será lido,
        # //no caso, estamos lendo JSON.
        dataType: 'json',
        # //SUCESS é referente a função que será executada caso
        # //ele consiga ler a fonte de dados com sucesso.
        # //O parâmetro dentro da função se refere ao nome da variável
        # //que você vai dar para ler esse objeto.
        success: (resposta) ->
            # //Agora basta definir os valores que você deseja preencher
            # //automaticamente nos campos acima.

            # console.log(resposta) 

            $("#negocio_logradouro").val(resposta.logradouro)
            $("#negocio_complemento").val(resposta.complemento)
            $("#negocio_bairro").val(resposta.bairro)
            $("#negocio_cidade").val(resposta.localidade)
            $("#negocio_estado").val(resposta.uf)
            # //Vamos incluir para que o Número seja focado automaticamente
            # //melhorando a experiência do usuário
            $("#negocio_numero").focus()
        })
		
