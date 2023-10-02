'''7. Ejercicio: Define una función que tome una cadena y retorne la cantidad de
letras mayúsculas y minúsculas en la cadena.'''
def contar_may_min (cadena):
  mayusculas= sum(1 for letra in cadena if letra.isupper())
  minúsculas= sum (1 for letra in cadena if letra.islower())
  return mayusculas, minúsculas
print (contar_may_min ('Harry Styles'))