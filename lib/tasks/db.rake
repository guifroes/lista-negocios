namespace :db do
  desc "TODO"
  task criar_exemplos: :environment do
    Negocio.destroy_all

    Negocio.create([
      {
        nome: "Loja da Rose",
        descricao: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sollicitudin tempor id eu nisl nunc mi.",
        categoria_id: 1,
        user_id: 1,
        facebook: "rose",
        instagram: "rose",
        telefone: "31 99345-7890",
        whatsapp: "31 99345-7890",
        estado: "MG"
      },
      {
        nome: "Restaurante do João",
        descricao: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sollicitudin tempor id eu nisl nunc mi.",
        categoria_id: 5,
        user_id: 1,
        estado: "MG"
      },
      {
        nome: "Chocolates Delícia",
        descricao: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sollicitudin tempor id eu nisl nunc mi.",
        categoria_id: 60,
        user_id: 1,
        estado: "MG"
      },
      {
        nome: "Loja da Rose",
        descricao: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sollicitudin tempor id eu nisl nunc mi.",
        categoria_id: 1,
        user_id: 1,
        estado: "MG"
      },
      {
        nome: "Restaurante do João",
        descricao: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sollicitudin tempor id eu nisl nunc mi.",
        categoria_id: 5,
        user_id: 1,
        estado: "SP"
      },
      {
        nome: "Chocolates Delícia",
        descricao: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sollicitudin tempor id eu nisl nunc mi.",
        categoria_id: 60,
        user_id: 1,
        estado: "SC"
      }
    ])
  end

  desc "TODO"
  task deletar_exemplos: :environment do
    Negocio.destroy_all
  end

end
