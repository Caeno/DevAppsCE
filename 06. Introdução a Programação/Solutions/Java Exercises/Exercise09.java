/**
 * Exercício 9: Elabore um programa que calcula o IMC de uma pessoa de acordo
 *  com o seu peso e sua altura, considerando a formula:
 *  - IMC = Peso / Altura²
 *  - Classificações:
 *      - menor que 20 -> Abaixo do Peso
 *      - entre 20 e 25 -> Normal
 *      - entre 26 e 30 -> Acima do Peso
 *      - entre 31 e 35 -> Obeso
 *      - maior que 35 -> Obesidade mórbida
 */
public class Exercise09 {

    /** Executa o procedimento do exercício. */
    public static void run() {
        // Obtém as informações a partir do usuário
        String name = Main.readString("Digite o nome: ");
        double weight = Main.readDouble("Digite o peso: ");
        double height = Main.readDouble("Digite a altura: ");

        // Calcula o IMC
        double bmi = calculateBMI(height, weight);

        // Determina a classificação do IMC
        String bmiClass = "";
        if (bmi < 20) {
            bmiClass = "Abaixo do peso";
        } else if (bmi < 25) {
            bmiClass = "Normal";
        } else if (bmi < 30) {
            bmiClass = "Sobrepeso";
        } else if (bmi < 35) {
            bmiClass = "Obeso";
        } else {
            bmiClass = "Obesidade mórbida";
        }

        // Imprime o resultado
        System.out.printf("O IMC de %s é %.2f, o colocando na classificação de %s.",
            name, bmi, bmiClass);
    }

    /**
     * Método para cálculo do IMC (em inglês BMI: "Body Mass Index")
     * @param height Altura em metros.
     * @param weight Peso em quilogramas.
     * @return O IMC calculado.
     */
    static double calculateBMI(double height, double weight) {
        return weight / Math.pow(height, 2);
    }

}