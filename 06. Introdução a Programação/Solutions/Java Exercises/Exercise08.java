/**
 * Exercício 8: Elabore um programa que carregue a idade de uma pessoa em uma
 *  variável, identificando sua classe eleitoral, onde:
 *  - menor que 16 anos -> Não eleitor
 *  - entre 16 e 18 anos -> Eleitor facultativo
 *  - entre 18 e 65 anos -> Eleitor obrigatório
 */
public class Exercise08 {

    /** Executa o procedimento do exercício. */
    public static void run() {
        // Obtém a idade
        int age = Main.readInt("Digite a idade: ");

        // Verifica em que faixa etária a idade se enquadra e imprime
        //  o resultado.
        if (age < 16) {
            System.out.println("Não eleitor.");
        } else if (age < 18) {
            System.out.println("Eleitor facultativo.");
        } else if (age < 65) {
            System.out.println("Eleitor obrigatório.");
        } else {
            System.out.println("Eleitor facultativo.");
        }
    }

}