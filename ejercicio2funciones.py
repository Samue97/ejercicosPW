'''2. Ejercicio: Define una función que tome un número y retorne su factorial.'''
def factorial(n):
  if n == 0:
    return 1
  else:
    return n * factorial(n - 1)
print (factorial (5))
