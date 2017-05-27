/**
 * Exercício 1: Escrever um programa que carregue o nome de uma 
 *  pessoa em uma variável e imprima a mensagem: “Bem-vindo ao 
 *  curso de Criação de Apps, NomePessoa“.
 */
public class Exercise01 {

    /** Executa o procedimento do exercício. */
    public static void run() {
        // Obtém a entrada do usuário e monta a mensagem
        System.out.print("Digite seu nome: ");
        String name = System.console().readLine();
        String message = "Bem-vindo ao curso de criação de Apps, " + name + "!";

        // Imprime a mensagem
        System.out.println(message);
    }

}