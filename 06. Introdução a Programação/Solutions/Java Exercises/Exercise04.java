/**
 * Exercício 4: Escreva um programa que mostre o antecessor e o sucessor de um 
 *  número inteiro carregado em uma variável.
 */
public class Exercise04 {

    /** Executa o procedimento do exercício. */
    public static void run() {
        // Obtém o número
        int numero = Main.readInt("Digite o número: ");

        // Calcula o antecessor e sucessor
        int antecessor = numero - 1;
        int sucessor = numero + 1;

        // Imprime o resultado
        System.out.printf("O antecessor do número %d é %d, e o sucessor %d",
            numero, antecessor, sucessor);
    }

}