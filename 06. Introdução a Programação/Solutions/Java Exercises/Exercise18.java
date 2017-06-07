/**
 * Exercício 18: Escreva um programa que leia um nome e apresente as letras que
 *  se encontram nas posições pares.
 */
public class Exercise18 {

    /** Executa o procedimento do exercício. */
    public static void run() {
        // Solicita o nome do usuário
        String name = Main.readString("Digite seu nome: ");

        // Faz uma interação por cada um dos caracteres da string
        for (int index = 0; index < name.length(); index++) {
            // Verifica se o índice é impar
            // Se o índice é impar significa que é uma posição par do ponto
            //  de vista do usuário, já que o primeiro caractere sinaliza
            //  a posição número 1 (índice 0) e o segundo a 2 (índice 1).
            if ((index % 2) != 0)
                System.out.printf("%d: %c\n", (index - 1), name.charAt(index));
        }
    }

}