#language: pt
#encoding: utf-8

Funcionalidade: Cadastro do herói

  ##Cenario: Heróis existentes - A DEFINIR

  Contexto:
    Dado que estou logado na doghero com um novo usuário

  Cenario: Habilitação das etapas

    Quando acesso a tela de cadastro de heróis no hero intake
    E eu posso acessar apenas a primeira etapa, de 'Dados Pessoais', através do botão 'começar'
    E as demais etapas estarão desabilitadas sem nenhum CTA disponível
    Mas contanto que a etapa seja preenchida e concluída com sucesso
    Então a próxima etapa será liberada para edição, e assim sucessivamente

  Cenario: Continuação da etapa

    E que estou na etapa de "Dados Pessoais" do cadastro de heróis do hero intake
    Quando preencho parcialmente a etapa, salvando a mesma para terminar depois
    Então volto para a tela de cadastro de heróis com a opção de continuar a edição do ponto que parei
    E as demais etapas estarão desabilitadas sem nenhum CTA disponível

  Cenario: Conclusão de etapa
    E que estou na etapa de "Dados Pessoais" do cadastro de heróis do hero intake
    Quando preencho com sucesso todos os passos de uma etapa
    Então ao acessá-la novamente, sua navegação superior entre os passos será alterada visualmente
    E o botão de salvar e terminar depois não será mais visivel
    E alterações serão possíveis apenas preenchendo corretamente todos os campos obrigatórios e salvando

  Cenário: Ícone de ajuda
    Dado que estou logado na doghero com um novo usuário
    E que estou na tela de cadastro de heróis no hero intake
    Quando acesso o ícone de ajuda
    Então informações sobre a etapa de cadastro de heróis são apresentadas em uma nova tela



