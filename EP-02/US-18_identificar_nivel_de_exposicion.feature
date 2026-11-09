Feature: Identificar nivel de exposición
  Como usuario, quiero conocer si mi actividad implica una exposición baja, moderada o alta según las condiciones disponibles, para tomar una decisión preventiva.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-18 @EP-02 @acceptance
  Scenario Outline: <escenario>
    Given que la actividad y sus condiciones generan una exposición <nivel>
    When el usuario consulta
    Then el sistema muestra <resultado>

    Examples:
      | escenario       | nivel | resultado                                      |
      | Exposición baja | baja  | exposición baja                                |
      | Exposición alta | alta  | exposición alta y una recomendación preventiva |
