/**
 * Exercício 21: Construa duas funções que receba um nome, a primeira deve
 *  retornar o número de vogais e a segunda o número de consoantes.
 */
public class Exercise21 {

    /** Declara um array com os caracteres que representam vogais */
    static char[] vowels = new char[] { 'a', 'e', 'i', 'o', 'u' };

    /** Declara um array com os caracteres que representam consoantes. */
    static char[] consonants = new char[] {
        'b', 'c', 'd', 'f', 'g',
        'h', 'j', 'k', 'l', 'm',
        'n', 'p', 'q', 'r', 's',
        't', 'v', 'w', 'x', 'y', 'z'
    };

    /** Executa o procedimento do exercício. */
    public static void run() {
        // Obtém a entrada do usuário
        String text = Main.readString("Digite um texto: ");

        // Usa os métodos para fazer as contagens
        int vowels = countVowels(text);
        int consonants = countConsonants(text);

        // Imprime o resultado
        System.out.printf("O texto '%s' tem %d vogais e %d consoantes", text, vowels, consonants);
    }

    /**
     * Conta a quantidade de vogais em um texto.
     * @param text O texto a ser verificado.
     * @return A quantidade de vogais encontradas no texto. 
     */
    static int countVowels(String text) {
        // Declara um contador
        int counter = 0;

        // Faz uma interação por cada um dos caracteres do texto do qual se deseja fazer a contagem.
        for (char ch : text.toCharArray()) {
            // Para o caracter atual, deve passar por cada um dos caracteres da lista para validar a igualdade.
            for (char vowel : vowels) {
                // Compara a versão em minúscula do caractere com a vogal atual do loop.
                if (Character.toLowerCase(ch) == vowel) {
                    counter++;
                    break;
                }
            }
        }

        // Retorna o resultado da contagem
        return counter;
    }

    /**
     * Conta a quantidade de consoantes em um texto.
     * @param text O texto a ser verificado.
     * @return A quantidade de consoantes encontradas no texto. 
     */
    static int countConsonants(String text) {
        // Declara um contador
        int counter = 0;

        // Nesse caso usa o loop for padrão, mostrando que as duas formas são possíveis
        for (int i = 0; i < text.length(); i++) {
            // Obtém a versão em minúscula do caractere da iteração atual
            char ch = Character.toLowerCase(text.charAt(i));

            // Passa por cada uma das consoantes procurando o caractere
            for (int j = 0; j < consonants.length; j++) {
                // Verifica se encontrou
                if (ch == consonants[j]) {
                    counter++;
                    break;
                }
            }
        }

        // Retorna o resultado da contagem
        return counter;
    }

}