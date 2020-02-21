#language: pt
#encoding: utf-8

Funcionalidade: Fotos para seu perfil

  Contexto:
    Dado que conclui com sucesso a etapa de experiência com pets

  Cenario: Validar tela de dicas e exemplos

    Quando acesso a etapa de fotos para seu perfil sem nunca ter salvo alguma imagem antes
    Então uma tela de dicas e exemplos será apresentada
    E um cta para adicionar fotos estará disponível


    @ignoreWeb
  Cenario: Adicionar fotos - Tirar foto

    E acesso a etapa de fotos para seu perfil sem nunca ter salvo alguma imagem antes
    E uma tela de dicas e exemplos será apresentada
    Quando eu clicar no CTA para adicionar fotos
    E escolher a opção para tirar uma nova foto minha
    E tirar a foto
    Então serei direcionado para meu álbum de fotos a foto recém tirada apresentada
    E essa foto será automaticamente minha foto de capa

  Cenario: Adicionar fotos

    E acesso a etapa de fotos para seu perfil sem nunca ter salvo alguma imagem antes
    E uma tela de dicas e exemplos será apresentada
    Quando eu clicar no CTA para adicionar fotos
    E escolher a opção de escolher fotos do álbum
    E poderei escolher uma ou mais fotos
    E só então poderei clicar no CTA de adicionar
    E ao adicionar
    Então serei direcionado para meu álbum de fotos com as fotos escolhidas
    E a primeira foto que escolhi será apresentada como a foto de capa
    E as demais fotos estarão abaixo dela

  ## Cenário de recorte de fotos caso for implementado


  Cenário: Adicionar mais fotos
    E acesso a etapa de fotos para seu perfil sem nunca ter salvo alguma imagem antes
    E adiciono uma ou mais fotos
    E estou na galeria com as fotos adicionadas sendo apresentadas
    Quando clico no botão de adicionar mais fotos
    E seleciono novas fotos
    Então as novas fotos serão acrescentadas no meu álbum
    E também poderei tirar e adicionar uma foto por vez pela camêra








