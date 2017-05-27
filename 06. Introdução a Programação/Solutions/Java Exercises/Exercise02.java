/**
 * Exercício 2: Escrever um programa que carregue quatro números reais em 
 *  variáveis distintas e calcule a média aritmética entre eles apresentando 
 *  no final.
 */
public class Exercise02 {

    /** Executa o procedimento do exercício. */
    public static void run() {
        // Declara os 4 números
        double number1 = 10.0;
        double number2 = 7.5;
        double number3 = 8.2;
        double number4 = 8.7;

        // Calcula a média somando os 4 números e dividindo por 4
        // O uso do parentesês é importante para forçar a precedência 
        //  de operadores
        double result = (number1 + number2 + number3 + number4) / 4.0;

        // Imprime o resultado
        System.out.printf("A média dos números %.2f, %.2f, %.2f e %.2f é %.2f",
            number1, number2, number3, number4,
            result);
    }

}