#!/bin/bash

# Función para generar un número aleatorio dentro del rango dado
generar_numero_aleatorio() {
    min=$1
    max=$2
    range=$(($max-$min+1))
    echo $(($RANDOM%range+$min))
}

# Solicitar al usuario el rango de números
echo "Introduce el rango de números:"
read -p "Número mínimo: " min_num
read -p "Número máximo: " max_num

# Verificar que los valores ingresados son válidos
if [ $min_num -ge $max_num ]; then
    echo "Error: El número mínimo debe ser menor que el número máximo."
    exit 1
fi

# Generar y mostrar el número aleatorio
numero_aleatorio=$(generar_numero_aleatorio $min_num $max_num)
echo "Número aleatorio dentro del rango [$min_num - $max_num]: $numero_aleatorio"
