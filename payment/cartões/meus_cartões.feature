#language: pt
#encoding: utf-8

Funcionalidade: Meus cartões

  Contexto:
    Dado que estou logado na doghero

  Esquema do Cenário: Acesso a tela de meus cartões

    E acesso a tela de meus cartões através da "<tela>"
    Então a tela de meus cartões é apresentada com sucesso

    Exemplos:
    | tela         |
    | home         |
    | checkout     |
    | meus cartões |

  Cenário: Validar acesso a tela de 'Meus cartões' - Nenhum cartão adicionado

    Quando acesso a tela de meus cartões sem ter cartões adicionados
    Então uma tela é apresentada informando que não há cartões adicionados
    E um botão com a opção de adicionar um novo cartão é apresentado

  Cenário: Validar acesso a tela de 'Meus cartões' - Cartões adicionados

    Quando acesso a tela de meus cartões tendo cartões adicionados
    Então um ou mais cartões são apresentados em uma lista
    E o ícone e o nome da bandeira de cada cartão são informados corretamente
    E o apenas os últimos 4 números do cartão são apresentados
    E cada cartão possuí a opção de exclusão

  Esquema do Cenário: Validar exclusão de cartão


    E acesso a tela de meus cartões tendo cartões adicionados
    Quando eu clico na opção de exclusão relacionada a um cartão
    Então um modal é apresentado com opções de excluir ou não
    Quando eu clico na opção "<opção>"
    Então "<resultado>"

    Exemplos:

    | opção | resultado               |
    | sim   | o cartão é excluído     |
    | não   | o cartão não é excluído |

  Cenário: Cartão default
    E acesso a tela de meus cartões tendo cartões adicionados
    Quando seleciono um cartão e efetuo uma reserva
    Então esse cartão será apresentado como default no checkout para reservas futuras