/**
 * Exercício 20: Elabore uma rotina que receba como parâmetros dois números
 *  positivos, e calcule retornando a soma dos N números inteiros existentes
 *  entre eles.
 */
public class Exercise20 {

    /** Executa o procedimento do exercício. */
    public static void run() {
        // Variáveis para armazenar a entrada do usuário
        int number1, number2;

        // Um loop para validar a entrada do usuário
        do {
            // Obtém a entrada do usuároi
            number1 = Main.readInt("Digite o primeiro número: ");
            number2 = Main.readInt("Digite o segundo número: ");

            // valida a condição
            if (number1 > number2)
                System.out.println("O primeiro número não pode ser maior que o segundo");

        // O loop irá executar o enquanto o usuário não digitar dois números válidos.
        } while (number1 > number2);
    
        // Calcula o resultado da soma dos números do intervalo
        int result = 0;
        for (int i = number1; i <= number2; i++) {
            result += i;
        }

        // Imprime o resultado
        System.out.printf("A soma dos números no intervalo de %d e %d é %d", number1, number2, result);
    }

}