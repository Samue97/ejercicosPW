'''1. Ejercicio: Define una función que utilice un bucle para imprimir los primeros n
números de la serie de Fibonacci.'''
def Fibonacci (n):
  a, b = 0, 1
  for i in range(n):
   print(a, end = ' ')
   a, b = b, a + b 
Fibonacci(10)
