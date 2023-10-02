'''3. Ejercicio: Define una función que tome un número y determine si es primo.'''
def es_primo(num):
 if num < 2:
  return False
 for i in range(2, num):
  if num % i == 0:
   return False
 return True
print(es_primo(7))
