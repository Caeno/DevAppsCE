/**
 * Exercício 12: Construa um programa que carregue o valor da cotação do dólar
 *  e um valor em reais em variáveis, e calcule o valor convertido para dólar.
 */
public class Exercise12 {

    /** Executa o procedimento do exercício. */
    public static void run() {
        // Obtém os dados
        double dollarRate = Main.readDouble("Digite a cotação do dólar: ");
        double dollarPrice = Main.readDouble("Digite o valor em dólar para conversão: ");

        // Calcula o valor
        double reaisPrice = dollarRate * dollarPrice;

        // Imprime
        System.out.printf("O preço em reais do valor US$%.2f na cotação de R$%.2f é R$%.2f", 
            dollarPrice, dollarRate, reaisPrice);
    }

}