#language: pt

Funcionalidade: Trabalhar com datatable
Contexto:

#DataTable usando linha
Cenario: Cortar Laranjas
Dado que eu tenho umas Laranjas
|laranja| 10|
Quando eu corto 2 Laranjas
Entao eu verifico quantas laranjas sobraram inteiras.

#DataTable usando coluna
Cenario: Chupar Laranjas
Dado que tenho umas Laranjas
|laranja|
| 10    |
Quando eu chupo 2 Laranjas
Entao eu verifico quantas laranjas sobraram.