'''11. Ejercicio: Define una función que tome una cadena y determine si es un
palíndromo (se lee igual de izquierda a derecha que de derecha a izquierda).'''
def palindromo (cadena):
  return cadena == cadena [:: -1]
print (palindromo ('radar'))
