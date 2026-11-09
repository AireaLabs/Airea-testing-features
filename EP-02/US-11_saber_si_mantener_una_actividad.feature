Feature: Saber si mantener una actividad
  Como persona que realiza actividades al aire libre, quiero saber si puedo mantener mi actividad prevista, para decidir considerando la condición actual del aire.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-11 @EP-02 @acceptance
  Scenario Outline: <escenario>
    Given que las condiciones <condicion>
    When la persona consulta su actividad
    Then el sistema <resultado>

    Examples:
      | escenario           | condicion        | resultado                   |
      | Mantener actividad  | son adecuadas    | indica que puede mantenerla |
      | Modificar actividad | no son adecuadas | recomienda modificarla      |
