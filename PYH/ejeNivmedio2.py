'''2. Ejercicio: Define una función que tome un número y retorne una lista de sus
divisores.'''
def divisores(n):
  return [i for i in range (1, n + 1) if n % i == 0]
print(divisores(12))
