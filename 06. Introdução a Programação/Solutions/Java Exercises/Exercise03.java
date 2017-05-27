/**
 * Exercício 3: Escreva um programa para calcular e apresentar a raiz quadrada 
 *  de um número carregado em uma variável.
 */
public class Exercise03 {

    /** Executa o procedimento do exercício. */
    public static void run() {
        // Declara um número do tipo double para cálculo
        double numero = Main.readDouble("Digite o número: ");

        // Utiliza o método "sqrt" da classe "Math" para calcula a raiz 
        //  quadrada. Esse método retorna um número do tipo double com
        //  o resultado.
        double resultado = Math.sqrt(numero);

        // Imprime o reusltado
        System.out.printf("A raiz quadrada de %.2f é %.2f.", numero, resultado);
    }

}