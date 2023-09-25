'''22. **Ejercicio:** Define una función que reciba una lista de números y retorne la sum
a acumulada de los números'''

def suma_acumulada(lista):
 total = 0
 suma_acumulada = []
 for numero in lista:
  total += numero
  suma_acumulada.append(total)
 return suma_acumulada
print(suma_acumulada([1, 2, 3, 4, 5]))
