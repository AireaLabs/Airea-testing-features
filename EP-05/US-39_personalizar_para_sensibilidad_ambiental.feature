Feature: Personalizar para sensibilidad ambiental
  Como adulto sensible a la contaminación atmosférica, quiero indicar mi sensibilidad a las condiciones ambientales, para recibir recomendaciones más pertinentes para mi situación.

  Background:
    Given que el usuario ha abierto la aplicación Airea

  @US-39 @EP-05 @acceptance
  Scenario: Activar contexto de sensibilidad
    Given que el adulto sensible configura su perfil
    When indica su sensibilidad ambiental
    Then el sistema guarda dicha preferencia

  @US-39 @EP-05 @acceptance
  Scenario: Consultar recomendación personalizada
    Given que el contexto de sensibilidad está configurado
    When el usuario consulta una actividad
    Then el sistema presenta la recomendación considerando ese contexto
