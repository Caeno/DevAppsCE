/**
 * Exercício 19: Construa um programa que leia uma palavra e escreva ela de
 *  trás para frente. Verifique se a palavra é um palíndromo (ou seja, elas
 *  podem ser lidas da esquerda para a direita ou da direita para a esquerda).
 */
public class Exercise19 {

    /** Executa o procedimento do exercício. */
    public static void run() {
        // Obtém a entrada do usuário
        String text = Main.readString("Digite uma palavra para verificar o palíndromo: ");

        // Verifica se é um palíndromo usando o método e imprime o resultado
        if (isPalindrome(text)) {
            System.out.printf("A palavra %s é um palíndromo!\n", text);
            System.out.println();       // Imprime uma linha vazia para espaçamento   
        } else {
            System.out.printf("A palavra %s não é um palíndromo.\n", text);
            System.out.println();
        }

    }

    /**
     * Recebe uma String e determina se é um palíndromo.
     * @param text O conteúdo que deseja verificar se é palíndromo.
     * @return Verdadeiro se for um palíndromo.
     */
    static boolean isPalindrome(String text) {
        // Obtém o texto inverso
        String textReversed = reverseString(text);

        // Compara as duas Strings e se forem iguais significa que é palíndromo
        // Note o uso do método 'equals' para comparar as Strings, isso é
        //  necessário em Java. O uso do operador "igual" (==) irá produzir
        //  um resultado incorreto.
        return (text.equals(textReversed));
    }

    /**
     * Recebe uma String e processa sua inversão.
     * @param text A String que deseja inverter.
     * @return A String original invertida (de trás para frente).
     */
    static String reverseString(String text) {
        // Declara uma String vazia para receber a inversão
        String reversed = "";

        // Passa de trás para frente por cada um dos caracteres da string original
        for (int index = (text.length() - 1); index >= 0; index--) {
            // Concatena o caracter na inversão da String
            reversed += text.charAt(index);
        }

        return reversed;
    }

}