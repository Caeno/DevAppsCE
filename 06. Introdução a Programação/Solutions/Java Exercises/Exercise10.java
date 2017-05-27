/**
 * Exercício 10: Construa um programa que dado um número inteiro informe o mês
 *  correspondente.
 */
public class Exercise10 {

    /** Executa o procedimento do exercício. */
    public static void run() {
        // Obtém a entrada do usuário
        int month = Main.readInt("Digite o número do mês: ");

        // Usa o switch para determinar o mês
        String monthName = "";
        switch (month) {
            case 1:
                monthName = "janeiro";
                break;
            case 2:
                monthName = "fevereiro";
                break;
            case 3:
                monthName = "março";
                break;
            case 4:
                monthName = "abril";
                break;
            case 5:
                monthName = "maio";
                break;
            case 6:
                monthName = "junho";
                break;
            case 7:
                monthName = "julho";
                break;
            case 8:
                monthName = "agosto";
                break;
            case 9:
                monthName = "setembro";
                break;
            case 10:
                monthName = "outubro";
                break;
            case 11:
                monthName = "novembro";
                break;
            case 12:
                monthName = "dezembro";
                break;
        }

        // Imprime
        System.out.printf("O mês de número %d refere-se a %s", month, monthName);
    }

}