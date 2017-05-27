/**
 * Exercício 14: Construa um programa que recebe o peso de uma pessoa em 
 *  quilogramas e converte para libras, considerando a seguinte fórmula:
 * 
 *      lb = kg * 2.2046
 * 
 * Onde lb é o peso em Libras e kg o peso em quilogramas.
 */
public class Exercise14 {

    /** Executa o procedimento do exercício. */
    public static void run() {
        // Obtém os dados
        double kilos = Main.readDouble("Digite o peso em kg: ");

        // Realiza a conversão usando o método
        double pounds = toPounds(kilos);

        // Imprime o resultado
        System.out.printf("%.2f kg é equivalente a %.2f libras",
            kilos, pounds);
    }

    /**
     * Converte um peso em quilogramas para o equivalente em libras.
     * @param kilos A quantidade de kilos para conversão.
     * @return O peso convertido em libras.
     */
    static double toPounds(double kilos) {
        return kilos * 2.2046;
    }

}