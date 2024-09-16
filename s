def busqueda_lineal(lista, num):
    for i in range(len(lista)):
        if lista[i] == num:
            return i
    return -1


def busqueda_binaria(lista, objetivo):
    izquierda = 0
    derecha = len(lista) - 1
    while izquierda <= derecha:
        medio = (izquierda + derecha) // 2
        if lista[medio] == objetivo:
            return medio
        elif lista[medio] < objetivo:
            izquierda = medio + 1
        else:
            derecha = medio - 1
    return -1


lista = [4, 8, 10, 12, 14, 16, 18, 20, 24, 28]
lista2 = [
    5, 7, 8, 10, 14, 15, 16, 17, 18, 21, 24, 27, 29, 30, 31, 34, 35, 36, 38, 41
]

# Número a buscar
numero = 500

# Búsqueda lineal
print("Resultados de la búsqueda lineal:")
resultado = busqueda_lineal(lista, numero)
if resultado == -1:
    print("En lista_10: El número no se encuentra en la lista")
else:
    print("En lista_10:", resultado)

resultado = busqueda_lineal(lista2, numero)
if resultado == -1:
    print("En lista_100: El número no se encuentra en la lista")
else:
    print("En lista_100:", resultado)

# Búsqueda binaria
print("\nResultados de la búsqueda binaria:")
resultado = busqueda_binaria(sorted(lista), numero)
if resultado == -1:
    print("En lista_10: El número no se encuentra en la lista")
else:
    print("En lista_10:", resultado)

resultado = busqueda_binaria(sorted(lista2), numero)
if resultado == -1:
    print("En lista_100: El número no se encuentra en la lista")
else:
    print("En lista_100:", resultado)
