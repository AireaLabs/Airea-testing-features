Feature: Reducir duración de exposición
  Como persona que realiza actividades al aire libre, quiero recibir una recomendación para reducir la duración de mi actividad cuando sea necesario, para disminuir mi exposición.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-12 @EP-02 @acceptance
  Scenario: Recomendación de reducción
    Given que la actividad prevista tiene una duración elevada
    When las condiciones ambientales son desfavorables
    Then el sistema recomienda reducir su duración

  @US-12 @EP-02 @acceptance
  Scenario: Duración adecuada
    Given que la duración prevista es adecuada para las condiciones
    When el usuario consulta la actividad
    Then el sistema no solicita reducirla
