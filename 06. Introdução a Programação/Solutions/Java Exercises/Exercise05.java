/**
 * Exercício 5: Formule um programa que declare cinco números e conte quantos 
 *  deles são negativos.
 */
public class Exercise05 {

    public static void run() {
        //
        // Declara as variáveis que serão usadas no programa

        int num1 = 10, num2 = -32;      // Declaração em linha
        int num3 = 12;
        int num4 = -5;
        int num5 = 127;
        int negativeCounter = 0;

        //
        // Verifica os números positivos e negativos

        if (num1 < 0) {     // If com delimitador de bloco
            negativeCounter += 1;
        }
        
        // If com uma única instrução
        if (num2 < 0) negativeCounter += 1; 

        // If com uma única instrução na linha abaixo
        // Nesse caso usamos identação para deixar mais visível
        if (num3 < 0) 
            negativeCounter += 1;

        if (num4 < 0) negativeCounter += 1;
        if (num5 < 0) negativeCounter += 1;

        //
        // Imprime o resultado
        
        System.out.printf("Entre os números %d, %d, %d, %d, %d há %d negativos",
            num1, num2, num3, num4, num5, negativeCounter);
    }

}