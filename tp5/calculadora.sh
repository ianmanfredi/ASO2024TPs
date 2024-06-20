#!/bin/bash

echo "Calculadora "
echo "1. Suma"
echo "2. Resta"
echo "3. Multiplicacion"
echo "4. Division"
echo "Elegi una operacion (1-4):"
read operacion

echo "Ingrese el primer numero:"
read num1

echo "Ingrese el segundo numero:"
read num2

case $operacion in
    1)
        resultado=$((num1 + num2))
        echo "El resultado de la suma es: $resultado"
        ;;
    2)
        resultado=$((num1 - num2))
        echo "El resultado de la resta es: $resultado"
        ;;
    3)
        resultado=$((num1 * num2))
        echo "El resultado de la multiplicación es: $resultado"
        ;;
    4)
        if [ $num2 -ne 0 ]; then
            resultado=$((num1 / num2))
            echo "El resultado de la división es: $resultado"
        else
            echo "Error"
        fi
        ;;
    *)
        echo "Operacion no valida"
        ;;
esac
