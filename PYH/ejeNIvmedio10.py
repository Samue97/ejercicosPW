'''10. Ejercicio: Define una función que reciba dos listas y retorne la intersección de
ambas (los elementos que están en las dos listas).'''
def intersección (list1, list2):
  return list (set(list1) & set (list2))
print (intersección([1,2,3,4,5], [1,2,3,4,5,6]))