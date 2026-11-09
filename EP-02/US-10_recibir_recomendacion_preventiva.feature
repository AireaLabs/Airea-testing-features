Feature: Recibir recomendación preventiva
  Como usuario, quiero recibir una recomendación preventiva según las condiciones ambientales, para saber qué acción puedo tomar.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-10 @EP-02 @acceptance
  Scenario Outline: <escenario>
    Given que las condiciones ambientales son <condicion>
    When el usuario consulta su situación
    Then el sistema muestra <resultado>

    Examples:
      | escenario              | condicion     | resultado                               |
      | Condición favorable    | favorables    | una recomendación para mantener su plan |
      | Condición desfavorable | desfavorables | una recomendación preventiva            |
