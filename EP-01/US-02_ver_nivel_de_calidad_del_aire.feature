Feature: Ver nivel de calidad del aire
  Como usuario, quiero visualizar el nivel actual de calidad del aire mediante una escala comprensible, para identificar rápidamente si las condiciones son favorables o desfavorables.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-02 @EP-01 @acceptance
  Scenario Outline: <escenario>
    Given que la calidad del aire se encuentra en un nivel <nivel>
    When el usuario consulta el estado ambiental
    Then el sistema muestra <resultado>

    Examples:
      | escenario          | nivel        | resultado                                   |
      | Nivel favorable    | favorable    | el nivel correspondiente de forma clara     |
      | Nivel desfavorable | desfavorable | el nivel y su clasificación correspondiente |
