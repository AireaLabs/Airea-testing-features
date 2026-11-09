Feature: Posponer actividad
  Como adulto sensible a la contaminación atmosférica, quiero saber cuándo conviene posponer una actividad al aire libre, para reducir una exposición innecesaria.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-14 @EP-02 @acceptance
  Scenario Outline: <escenario>
    Given que <condicion>
    When el adulto sensible consulta su actividad
    Then el sistema <resultado>

    Examples:
      | escenario          | condicion                                     | resultado                |
      | Posponer actividad | las condiciones ambientales son desfavorables | recomienda posponerla    |
      | Mantener actividad | las condiciones son adecuadas                 | no recomienda posponerla |
