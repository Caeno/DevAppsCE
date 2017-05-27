/**
 * Exercício 11: Escreva um programa para verificar se um determinado número é
 *  positivo ou negativo.
 */
public class Exercise11 {

    /** Executa o procedimento do exercício. */
    public static void run() {
        // Obtém o número
        double number = Main.readDouble("Digite o número: ");

        // Verifica se o número é positivo ou negativo
        if (number < 0) {
            System.out.printf("O número %f é negativo.", number);
        } else {
            System.out.printf("O número %f é positivo.", number);
        }
    }

}