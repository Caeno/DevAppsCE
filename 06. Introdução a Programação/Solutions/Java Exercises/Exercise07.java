/**
 * Exercício 7: Escreva um programa que carregue o valor de hora aula e o 
 *  número de aulas dadas no mês e o percentual de desconto do INSS em 
 *  variáveis. Calcule e apresente o salário líquido e o salário bruto.
 */
public class Exercise07 {

    /** Executa o procedimento do exercício. */
    public static void run() {
        // Obtém a entrada do usuário
        double classValue = Main.readDouble("Digite o valor da aula: ");
        int classCount = Main.readInt("Digite a quantidade de aulas: ");

        // A taxa deve ser dividia por 100 para representar o valor percentual
        double taxDiscount = Main.readDouble("Digite o percentual de desconto do INSS: ") / 100.0;

        // Calcula o salário bruto (Quantidade de aulas multiplicado pelo valor da aula)
        double grossSalary = classValue * classCount;

        // Calcula o salário líquido (desconta o INSS do Bruto)
        double discount = (grossSalary * taxDiscount);
        double netWage = grossSalary - discount;

        // Imrpime os resultados
        System.out.printf("O salário bruto é %.2f e o líquido é %.2f.\n", grossSalary, netWage);
        System.out.printf("O percentual de desconto do INSS é %.2f%%, totalizando %.2f.", (taxDiscount * 100), discount);
    }

}