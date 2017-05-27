import java.util.ArrayList;
import java.util.List;

/**
 * Exercício 15: Escreva um programa que carrega uma lista com 10 ou mais 
 *  elementos e os escreva em ordem contrária.
 */
public class Exercise15 {

    /** Executa o procedimento do exercício. */
    public static void run() {
        // Obtém uma lista de números
        List<Integer> numbers = new ArrayList<>();
        int newNumber = 0;
        while (true) {
            // Obtém um novo número para a lista
            newNumber = Main.readInt("Digite um número (-1 para encerrar a lista): ");

            // Se o usuário digitar o número -1
            // Encerra a obtenção de números
            if (newNumber == -1)
                break;

            // Adiciona o número digitado a lista
            numbers.add(newNumber);
        };

        // Passa por cada um dos números da lista de trás para frente
        System.out.print("A lista em sequência inversa é: ");
        for (int i = (numbers.size() - 1); i >= 0; i--) {
            System.out.printf("%d ", numbers.get(i));
        }
    }

}