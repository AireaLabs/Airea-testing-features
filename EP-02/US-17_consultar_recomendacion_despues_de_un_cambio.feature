Feature: Consultar recomendación después de un cambio
  Como usuario, quiero consultar nuevamente la recomendación cuando cambien las condiciones ambientales, para adaptar mi decisión.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-17 @EP-02 @acceptance
  Scenario Outline: <escenario>
    Given que las condiciones ambientales han <cambio>
    When el usuario vuelve a consultar
    Then el sistema <resultado>

    Examples:
      | escenario                    | cambio    | resultado                                |
      | Mejora de condiciones        | mejorado  | actualiza la recomendación               |
      | Empeoramiento de condiciones | empeorado | muestra una recomendación más preventiva |
