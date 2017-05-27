/**
 * Classe principal dos exercícios.
 */
public class Main {

    /** Ponto de Entrada do programa de exercícios. */
    public static void main(String[] args) {
        int exercise = 0;
        do {
            // Mostra as instruções de uso do programa
            printInstructions();

            // Obtém a entrada do usuário e seleciona o exercício
            exercise = readInt("Selecione o exercício (0 para sair): ");
            switch (exercise) {
                case 1:
                    Exercise01.run();
                    break;
                case 2:
                    Exercise02.run();
                    break;
                case 3:
                    Exercise03.run();
                    break;
                case 4:
                    Exercise04.run();
                    break;
                case 5:
                    Exercise05.run();
                    break;
                case 6:
                    Exercise06.run();
                    break;
                case 7:
                    Exercise07.run();
                    break;
                case 8:
                    Exercise08.run();
                    break;
                case 9:
                    Exercise09.run();
                    break;
                case 10:
                    Exercise10.run();
                    break;
                case 11:
                    Exercise11.run();
                    break;
                case 12:
                    Exercise12.run();
                    break;
                case 13:
                    Exercise13.run();
                    break;
                case 14:
                    Exercise14.run();
                    break;
                case 15:
                    Exercise15.run();
                    break;
                case 16:
                    Exercise16.run();
                    break;
                case 17:
                    Exercise17.run();
                    break;
                case 18:
                    Exercise18.run();
                    break;
                case 19:
                    Exercise19.run();
                    break;
                case 20:
                    Exercise20.run();
                    break;
                case 21:
                    Exercise21.run();
                    break;
            }

            // Pula 2 linhas para produzir espaçamento
            System.out.println();
            System.out.println();

        } while (exercise != 0);
    }

    /**
     * Imprime as instruções de uso do programa.
     */
    static void printInstructions() {
        System.out.println("Exercícios do Curso de Criação de Apps");
        System.out.println("--------------------------------------");
        System.out.println();
        System.out.println("\t1. Boas-vindas!");
        System.out.println("\t2. Média dos números.");
        System.out.println("\t3. Raiz quadrada.");
        System.out.println("\t4. Antecessor e Sucessor.");
        System.out.println("\t5. Contagem de Negativos.");
        System.out.println("\t6. Divisível por 5.");
        System.out.println("\t7. Cálculo de Salário.");
        System.out.println("\t8. Classe eleitoral.");
        System.out.println("\t9. Cálculo de IMC.");
        System.out.println("\t10. Nome do mês.");
        System.out.println("\t11. Número positivo ou negativo.");
        System.out.println("\t12. Conversão de dólar para reais.");
        System.out.println("\t13. Conversão de temperatura.");
        System.out.println("\t14. Conversão de medidas de peso.");
        System.out.println("\t15. Invertendo uma lista de números.");
        System.out.println("\t16. Diferença entre duas listas.");
        System.out.println("\t17. Biblioteca pessoal.");
        System.out.println("\t18. Caracteres pares.");
        System.out.println("\t19. Brincando com palíndromos.");
        System.out.println("\t20. Soma intervalo.");
        System.out.println("\t21. Quantidade de vogais e consoantes.");
        System.out.println();
    }

    /**
     * Obtém um texto (string) a partir do console.
     * @param message Mensagem para apresentar ao usuário.
     * @return O texto obtido do usuário.
     */
    public static String readString(String message) {
        System.out.print(message);
        return System.console().readLine();
    }

    /**
     * Obtém um número inteiro (int) a partir do console.
     * @param message Mensagem para apresentar ao usuário.
     * @return O número obtido do usuário.
     */
    public static int readInt(String message) {
        System.out.print(message);
        String input = System.console().readLine();
        return Integer.parseInt(input);
    }

    /**
     * Obtém um número real (double) a partir do console.
     * @param message Mensagem para apresentar ao usuário.
     * @return O número obtido do usuário.
     */
    public static double readDouble(String message) {
        System.out.print(message);
        String input = System.console().readLine();
        return Double.parseDouble(input);
    }

}