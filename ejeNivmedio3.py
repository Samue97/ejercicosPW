'''3. Ejercicio: Define una función que tome una lista y retorne una nueva lista con
los elementos únicos de la lista original.'''
def unicos(lista):
   return list(set(lista))
print (unicos([1,2,2,3,3,4,4,5,5,5]))