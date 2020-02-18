#language: pt
#encoding: utf-8

Funcionalidade: CTA - Salvar e continuar

  Contexto:
    Dado que estou com um usuário não-herói na tela de HIT - Dados pessoais


  Esquema do Cenario: CTA - Salvar e continuar - Passo pendente ou inválido

    E acesso um dos passos disponiveis em uma etapa habilitada
    E eu preencho "<forma_de_preenchimento>"
    Quando clico no CTA para salvar e continuar
    Então um alerta será apresentado informando que existem dados "<tipo_de_validação>"
    E o próximo passo ou etapa não será habilitado

  Exemplos:
    | forma_de_preenchimento                                   | tipo_de_validação             |
    | incorretamente os campos                                 |  incorretos                   |
    | parcialmente o passo, não preenchendo dados obrigatórios |  obrigatórios não preenchidos |

  Esquema do Cenario: CTA - Salvar e continuar - Passo preenchido corretamente

    E acesso um dos passos disponiveis em uma etapa habilitada
    E eu preencho "<forma_de_preenchimento>"
    Quando clico no CTA para salvar e continuar
    Então o passo será concluído com sucesso
    E ao voltar nesse passo, o CTA para salvar e terminar depois não será mais apresentado
    E o único CTA efetuará apenas a ação de salvar
    E o próximo passo estará então disponível

    Exemplos:
     | forma_de_preenchimento           |
     | corretamente todos os campos     |
     | corretamente campos obrigatórios |

  Esquema do Cenario: Alterar passo já concluído

    E acesso um passo já concluído para alterá-lo
    E eu preencho "<forma_de_preenchimento>"
    Quando clico no CTA para salvar
    Então o passo será salvo com sucesso

    Exemplos:
      | forma_de_preenchimento           |
      | corretamente todos os campos     |
      | corretamente campos obrigatórios |

  Esquema do Cenario: Alterar passo já concluído

    E acesso um passo já concluído para alterá-lo
    E eu preencho "<forma_de_preenchimento>"
    Quando clico no CTA para salvar
    Então um alerta será apresentado informando que existem dados "<tipo_de_validação>"

    Exemplos:
      | forma_de_preenchimento                                   | tipo_de_validação            |
      | incorretamente os campos                                 | incorretos                   |
      | parcialmente o passo, não preenchendo dados obrigatórios | obrigatórios não preenchidos |

  Esquema do Cenario: Editar incorretamente/parcialmente passo já concluído e sair do mesmo - Salvando

    E acesso um passo já concluído para alterá-lo
    E eu preencho "<forma_de_preenchimento>"
    Quando clico no botão "<botão>"
    E um alerta será apresentado perguntando se quero ou não salvar as alterações
    E escolho a opção "salvar"
    Então um alerta será apresentado informando que existem dados "<tipo_de_validação>"
    E serei redirecionado para "<redirecionamento>"

    Exemplos:
      | forma_de_preenchimento                                   | botão                     | tipo_de_validação            | redirecionamento         |
      | incorretamente os campos                                 | voltar                    | incorretos                   | menu com todas as etapas |
      | incorretamente os campos                                 | de outro passo habilitado | incorretos                   | passo escolhido          |
      | parcialmente o passo, não preenchendo dados obrigatórios | voltar                    | obrigatórios não preenchidos | menu com todas as etapas |
      | parcialmente o passo, não preenchendo dados obrigatórios | de outro passo habilitado | obrigatórios não preenchidos | passo escolhido          |

  Esquema do Cenario: Editar incorretamente/parcialmente passo já concluído e sair do mesmo - Não salvando

    E acesso um passo já concluído para alterá-lo
    E eu preencho "<forma_de_preenchimento>"
    Quando clico no botão "<botão>"
    E um alerta será apresentado perguntando se quero ou não salvar as alterações
    E escolho a opção "não salvar"
    Então serei redirecionado para "<redirecionamento>"
    E ao acessá-lo novamente, nenhuma alteração terá sido salva

    Exemplos:
      | forma_de_preenchimento                                   | botão                     | redirecionamento         |
      | incorretamente os campos                                 | voltar                    | menu com todas as etapas |
      | incorretamente os campos                                 | de outro passo habilitado | passo escolhido          |
      | parcialmente o passo, não preenchendo dados obrigatórios | voltar                    | menu com todas as etapas |
      | parcialmente o passo, não preenchendo dados obrigatórios | de outro passo habilitado | passo escolhido          |


  Esquema do Cenario: Editar corretamente passo já concluído e sair do mesmo - Salvando

    E acesso um passo já concluído para alterá-lo
    E eu preencho "<forma_de_preenchimento>"
    Quando clico no botão "<botão>"
    E um alerta será apresentado perguntando se quero ou não salvar as alterações
    E escolho a opção "salvar"
    Então um alerta de sucesso será apresentado
    E serei redirecionado para "<redirecionamento>"
    E ao acessá-lo novamente, as alterações serão apresentadas

    Exemplos:
      | forma_de_preenchimento           | botão                     | redirecionamento         |
      | corretamente todos os campos     | voltar                    | menu com todas as etapas |
      | corretamente todos os campos     | de outro passo habilitado | passo escolhido          |
      | corretamente campos obrigatórios | voltar                    | menu com todas as etapas |
      | corretamente campos obrigatórios | de outro passo habilitado | passo escolhido          |

  Esquema do Cenario: Editar corretamente passo já concluído e sair do mesmo - Não salvando

    E acesso um passo já concluído para alterá-lo
    E eu preencho "<forma_de_preenchimento>"
    Quando clico no botão "<botão>"
    E um alerta será apresentado perguntando se quero ou não salvar as alterações
    E escolho a opção "não salvar"
    Então serei redirecionado para "<redirecionamento>"
    E ao acessá-lo novamente, nenhuma alteração deverá ser apresentada

    Exemplos:
      | forma_de_preenchimento           | botão                     | redirecionamento         |
      | corretamente todos os campos     | voltar                    | menu com todas as etapas |
      | corretamente todos os campos     | de outro passo habilitado | passo escolhido          |
      | corretamente campos obrigatórios | voltar                    | menu com todas as etapas |
      | corretamente campos obrigatórios | de outro passo habilitado | passo escolhido          |