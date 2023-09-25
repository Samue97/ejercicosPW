'''19. **Ejercicio:** Define una función que tome dos listas y retorne True si tienen al
menos un miembro en común, de lo contrario, retorne False.'''

def tienen_comun(lista1, lista2):
 return bool(set(lista1) & set(lista2))
print(tienen_comun([1, 2, 3], [3, 4, 5]))
