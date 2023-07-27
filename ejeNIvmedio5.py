'''5. Ejercicio: Define una función que tome una cadena y cuente el número de
vocales en la cadena.'''
def numero_vocales (cadena):
  return sum(1 for letra in cadena if letra. lower () in 'aeiou')
print (numero_vocales ('Elecciones generales'))