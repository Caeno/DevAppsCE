/**
 * Exercício 13: Construa um programa que converta uma determinada temperatura 
 *  em Celsius para Fahrenheit, considerando a seguinte fórmula:
 * 
 *      C = (F - 32) / 1.8
 * 
 * Onde C é a temperatura em Celsius e F a temperatura em Fahrenheit.
 */
public class Exercise13 {

    /** Executa o procedimento do exercício. */
    public static void run() {
        // Obtém os dados
        double tempFahrenheit = Main.readDouble("Digite uma temperatura em Fahreheit: ");

        // Faz o cálculo usando o método
        double tempCelsius = toCelsius(tempFahrenheit);

        // Imprime o resultado
        System.out.printf("A temperatura %fºF é equivalente a %fºC.", 
            tempFahrenheit, tempCelsius);
    }

    static double toCelsius(double tempFahrenheit) {
        return (tempFahrenheit - 32) / 1.8;
    }

}