/**
 * Exercício 6: Escreva um programa que informa se um número carregado em uma 
 *  variável e informe se ele é divisível por 5.
 */
public class Exercise06 {

    /** Executa o procedimento do exercício. */
    public static void run() {
        // Lê o número
        int number = Main.readInt("Digite o número: ");

        // Verifica se ele divisivel por 5 através do cálculo do resto
        boolean isDivisible = (number % 5) == 0;

        // Imprime o resultado de acordo.
        // Note o uso da variável booleana como condição do "if".
        if (isDivisible) {
            System.out.printf("O número %d é divisível por 5\n", number);
        } else {
            System.out.printf("O número %d não é divisível por 5\n", number);
        }
    }

}