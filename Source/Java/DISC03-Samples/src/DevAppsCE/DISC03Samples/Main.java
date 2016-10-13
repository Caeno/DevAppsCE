/**
 * Exemplos de código da aula de Introdução a Programação.
 * Esse projeto inclui os exemplos de código apresentados nos Slides da Aula de 
 * Introdução a Programação, na seção onde são apresentadas as estruturas 
 * básicas das linguagens.
 * 
 * @author  Rafael Veronezi
 * @version 1.1
 * @since   2016-08-01
 */

package DevAppsCE.DISC03Samples;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

/**
 * Ponto de entrada do Projeto.
 */
public class Main {

    public static void main(String[] args) {
        
        //
        // Executa cada um dos exemplos
        
        printSeparatorStart("Condicionais - if");
        ifSample();
        printSeparatorEnd("Condicionais - if");
        
        printSeparatorStart("Condicionais - switch");
        switchSample();
        printSeparatorEnd("Condicionais - switch");
        
        printSeparatorStart("Estruturas de Repetição - Loop for");
        forLoopSample();
        printSeparatorEnd("Estruturas de Repetição - Loop for");
        
        printSeparatorStart("Estruturas de Repetição - Loop while");
        whileLoopSample();
        printSeparatorEnd("Estruturas de Repetição - Loop while");
        
        printSeparatorStart("Rotinas");
        routineSample();
        printSeparatorEnd("Rotinas");

        printSeparatorStart("Arrays");
        arraySample();
        printSeparatorEnd("Arrays");
        
        printSeparatorStart("Listas");
        listSample();
        printSeparatorEnd("Listas");
        
        printSeparatorStart("Dicionários");
        dictionarySample();
        printSeparatorEnd("Dicionários");
    }
    
    
    /**
     * Condicionais - Usando if
     * ------------------------
     * 
     * No exemplo abaixo usamos a construção if do Java para, a partir da 
     * variável temperatura, que armazena um valor em Celsius, mostrar uma 
     * mensagem tentando descrever como esta o clima.
     */
    static void ifSample() {
        // Declara a temperatura
        int temperature = 27;
        
        // Usa a construção if...else if...else para descrever o clima.
        if (temperature < 0) {
            System.out.print("Congelando!!");
        } else if (temperature >= 0 && temperature < 12)
            System.out.print("Friozinho..");
        else if (temperature >= 12 && temperature < 21)
            System.out.print("Clima fresco!");
        else if (temperature >= 21 && temperature < 30)
            System.out.printf("Tempo quente!");
        else {
            System.out.print("Quente demais!!!");
        }        
    }
    
    
    /**
     * Condicionais - Usando switch...case
     * -----------------------------------
     * 
     * No exemplo abaixo usamos a construção switch...case do Java para, a 
     * partir da variável month, que armazena um número representando um mês do
     * ano, mostrar o nome do mês ao qual esta se referindo.
     */
    static void switchSample() {
        // Declara o número do mês do ano
        int month = 3;
        
        // Identifica o nome do mês
        switch (month) {
            case 1:
                System.out.print("Janeiro");
                break;
            case 2:
                System.out.print("Fevereiro");
                break;
            case 3:
                System.out.print("Março");
                break;
            case 4:
                System.out.print("Abril");
                break;
            case 5:
                System.out.print("Maio");
                break;
            case 6:
                System.out.print("Junho");
                break;
            case 7:
                System.out.print("Julho");
                break;
            case 8:
                System.out.print("Agosto");
                break;
            case 9:
                System.out.print("Setembro");
                break;
            case 10:
                System.out.print("Outubro");
                break;
            case 11:
                System.out.print("Novembro");
                break;
            case 12:
                System.out.print("Dezembro");
                break;
            default:
                System.out.print("Mês inválido!");
                break;
        }
    }
    
    
    /**
     * Estruturas de Repetição - Loop for
     * ----------------------------------
     * 
     * No exemplo abaixo usamos o loop for do Java para listar as tabuadas de 2
     * a 9. São empregados dois loops aninhados de forma que o mais externo 
     * repete o interno partindo no número 2 até o número 9. O loop interno por 
     * sua vez passa pelos números de 1 a 10, multiplicando eles pelo número 
     * representando a tabuada atual.
     */
    static void forLoopSample() {
        for (int tabuada = 2; tabuada <= 9; tabuada++) {
            System.out.printf("Tabuada do %d\n", tabuada);
            for (int numero = 1; numero <= 10; numero++) {
                int resultado = numero * tabuada;
                System.out.printf("\t%d x %d = %d\n", tabuada, numero, resultado);
            }
        }   
    }
    
    
    /**
     * Estruturas de Repetição - Loop while
     * ------------------------------------
     * 
     * No exemplo abaixo usamos o loop while do Swift para calcular o fatorial 
     * de um número. Essa operação matemática é feita multiplicando o número por 
     * cada um dos números que o antecedem, e é representado pelo símbolo do 
     * ponto de exclamação (!).
     * 
     * O cálculo do fatorial tem diversas aplicações no campo de Ciências da 
     * Computação, especialmente para cálculo da efiência de algorítimos.
     */
    static void whileLoopSample() {
        int fatorial = 5;
        int numero = fatorial;
        int resultado = 1;
        
        while (numero > 0) {
            resultado = resultado * numero;
            numero = numero - 1;
        }
        System.out.printf("%d! = %d", fatorial, resultado);
    }
    
    
    /**
     * Rotinas - Declarando e Usando métodos
     * 
     * No exemplo abaixo usamos uma instância da classe criada no arquivo 
     * "Calculator.java", que declara dois métodos que recebem dois números
     * para realizar operações matemáticas de soma e subtração.
     */
    static void routineSample() {
        // Cria uma instância da calculadora
        Calculator calc = new Calculator();
        
        // Calcula
        int addResult = calc.Add(10, 20);
        int subtractResult = calc.Subtract(34, 7);
        
        //Imprime os resultados
        System.out.printf("Resultado da soma %d\n", addResult);
        System.out.printf("Resultado da subtração %d", subtractResult);
    }
    
    
    /**
     * Arrays - Declarando e Usando Arrays
     * 
     * No exemplo abaixo usamos o recurso de Arrays para declarar uma lista de 
     * Pessoas com suas respectivas datas de nascimento, e enumerar essa lista 
     * calculando suas idades.
     */
    static void arraySample() {
        // Declara e carrega uma lista de pessoas
        Person[] people = new Person[5];
        people[0] = new Person("João", Utils.getDate(1975, 10, 21));
        people[1] = new Person("Maria", Utils.getDate(1981, 5, 12));
        people[2] = new Person("Cecília", Utils.getDate(1979, 7, 11));
        people[3] = new Person("José", Utils.getDate(1985, 7, 11));
        people[4] = new Person("Izabel", Utils.getDate(1982, 3, 13));
        
        // Verifica se a lista não é vazia e enumera
        if (people.length > 0) {
            Date now = new Date();
            for (Person person : people) {
                int age = Utils.getDifferenceInYears(person.getBirthday(), now);
                System.out.printf("%s tem %d anos.\n", person.getName(), age);
            }
        }
    }
    
    
    /**
     * Listas - Declarando e Usando Listas
     * 
     * No exemplo abaixo recriamos o exercício anterior, dessa vez usando a classe
     * ArrayList<T> do Java, que permite criar uma lista dinâmica.
     */
    static void listSample() {
        // Declara e carrega uma lista de pessoas
        ArrayList<Person> people = new ArrayList<>();
        people.add(new Person("João", Utils.getDate(1975, 10, 21)));
        people.add(new Person("Maria", Utils.getDate(1981, 5, 12)));
        people.add(new Person("Cecília", Utils.getDate(1979, 7, 11)));
        people.add(new Person("José", Utils.getDate(1985, 7, 11)));
        people.add(new Person("Izabel", Utils.getDate(1982, 3, 13)));
        
        // Verifica se a lista não é vazia e enumera
        if (!people.isEmpty()) {
            Date now = new Date();
            for (Person person : people) {
                int age = Utils.getDifferenceInYears(person.getBirthday(), now);
                System.out.printf("%s tem %d anos.\n", person.getName(), age);
            }
        }
    }
    
    
    /**
     * Dicionários - Declarando e Usando Dicionários
     * 
     * No exemplo abaixo usamos um dicionário do Swift para armazenar uma coleção 
     * de palavras-chave da linguagem com uma explicação curta associada a elas.
     */
    static void dictionarySample() {
        // Declara e carrega uma lista de palavras-chave e uma breve explicação.
        HashMap<String, String> javaKeywords = new HashMap<>();
        javaKeywords.put("public", "Modificador para campos, classes e métodos os tornando de acesso públicos.");
        javaKeywords.put("class", "Usada para declarar classes");
        javaKeywords.put("func", "Usada para declarar funções ou métodos.");
        javaKeywords.put("protected", "Modificador para campos, classes e métodos os tornando de acesso protegidos.");
        javaKeywords.put("static", "Permite a criação de campos ou métodos estáticos.");
        
        // Remove uma palavra-chave que não existe em Java
        javaKeywords.remove("func");
        
        // Verifica se o dicionário não esta vazio e enumera os elementos
        if (!javaKeywords.isEmpty()) {
            // Imprime um cabeçalho
            System.out.println("Palavras-chave em Java");
            System.out.print("----------------------\n");
            
            for (String key : javaKeywords.keySet()) {
                System.out.printf("- %s: %s\n", key, javaKeywords.get(key));
            }
        }
    }
    
    
    /**
     * Imprime um separador de início de um exemplo.
     * @param sampleName Nome do exemplo.
     */
    static void printSeparatorStart(String sampleName) {
        System.out.print("\n----------------------------\n");
        System.out.printf("-- Início do Exemplo: %s\n\n", sampleName);
    }

    static void printSeparatorEnd(String sampleName) {
        System.out.print("\n\n");
        System.out.printf("-- Final do Exemplo: %s\n", sampleName);
        System.out.print("----------------------------\n\n");        
    }
    
}
