#language: pt
#encoding: utf-8

Funcionalidade: Dados pessoais - Passo 4

  Contexto:
    Dado que preencho corretamente o "passo 3" e prossigo através do CTA 'Salvar e continuar'

  Esquema do Cenario: Validar adição de novo contato

    Quando tento adicionar um contato preenchendo os dados de cadastro "<forma_de_preenchimento>"
    Então o cadastro apresentará "<resultado>"
    Mas a alteração só será efetivada ao clicar em "<CTA>"

    Exemplos:
      | forma_de_preenchimento             | resultado                                   | CTA                       |
      | incorretamente                     | erro nos campos inválidos                   | Salvar e terminar depois  |
      | apenas em campos não obrigatórios  | erro informando obrigatoriedade             | Salvar e terminar depois  |
      | apenas em campos obrigatórios      | uma mensagem de sucesso, salvando o contato | Salvar e terminar depois  |
      | incorretamente                     | erro nos campos inválidos                   | Salvar e continuar        |
      | apenas em campos não obrigatórios  | erro informando obrigatoriedade             | Salvar e continuar        |
      | apenas em campos obrigatórios      | uma mensagem de sucesso, salvando o contato | Salvar e continuar        |

  Esquema do Cenario: Validar adição de outro contato

    Quando clico em adicionar outro contato
    E tento adicionar um contato preenchendo os dados de cadastro "<forma_de_preenchimento>"
    Então o cadastro apresentará "<resultado>"
    Mas a alteração só será efetivada ao clicar em "<CTA>"

    Exemplos:
      | forma_de_preenchimento             | resultado                                   | CTA                       |
      | incorretamente                     | erro nos campos inválidos                   | Salvar e terminar depois  |
      | apenas em campos não obrigatórios  | erro informando obrigatoriedade             | Salvar e terminar depois  |
      | apenas em campos obrigatórios      | uma mensagem de sucesso, salvando o contato | Salvar e terminar depois  |
      | incorretamente                     | erro nos campos inválidos                   | Salvar e continuar        |
      | apenas em campos não obrigatórios  | erro informando obrigatoriedade             | Salvar e continuar        |
      | apenas em campos obrigatórios      | uma mensagem de sucesso, salvando o contato | Salvar e continuar        |

  Esquema do Cenario: Validar edição de contato

    Quando clico em editar um contato salvo
    E tento adicionar um contato preenchendo os dados de cadastro "<forma_de_preenchimento>"
    Então o cadastro apresentará "<resultado>"
    Mas a alteração só será efetivada ao clicar em "<CTA>"

    Exemplos:
      | forma_de_preenchimento             | resultado                                   | CTA                       |
      | incorretamente                     | erro nos campos inválidos                   | Salvar e terminar depois  |
      | apenas em campos não obrigatórios  | erro informando obrigatoriedade             | Salvar e terminar depois  |
      | apenas em campos obrigatórios      | uma mensagem de sucesso, salvando o contato | Salvar e terminar depois  |
      | incorretamente                     | erro nos campos inválidos                   | Salvar e continuar        |
      | apenas em campos não obrigatórios  | erro informando obrigatoriedade             | Salvar e continuar        |
      | apenas em campos obrigatórios      | uma mensagem de sucesso, salvando o contato | Salvar e continuar        |

  Esquema do Cenario: Validar exclusão

    E tenho um contato já adicionado em minha lista
    Quando clico em excluir o mesmo
    Então o sistema excluirá
    Mas a alteração só será efetivada ao clicar em "<CTA>"

    Exemplos:
    | CTA                      |
    | Salvar e continuar       |
    | Salvar e terminar depois |

  Esquema do Cenario: Validar edição parcial do formulário salvando para terminar depois
    E apenas preencho de forma "<forma_de_preenchimento>" o formulário de cadastro de contato
    Quando clico em "<CTA>"
    Então o sistema "<resultado>"

    Exemplos:
    | forma_de_preenchimento | CTA                      | resultado                                                                       |
    | incompleta             | Salvar e terminar depois | salva para acesso posterior, mas não concluí o passo                            |
    | incorreta              | Salvar e terminar depois | salva para acesso posterior, mas não concluí o passo                            |
    | correta                | Salvar e terminar depois | salva para acesso posterior, mas não concluí o passo                            |
    | incompleta             | Salvar e continuar       | informa os erros e não salva                                                    |
    | incorreta              | Salvar e continuar       | informa os erros e não salva                                                    |
    | correta                | Salvar e continuar       | concluí o passo e a etapa com sucesso, desabilitando a opção de terminar depois |