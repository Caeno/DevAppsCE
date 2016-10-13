/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DevAppsCE.DISC03Samples;

import java.util.Calendar;
import static java.util.Calendar.DATE;
import static java.util.Calendar.MONTH;
import static java.util.Calendar.YEAR;
import java.util.Date;

/**
 * Uma classe de utilitários.
 */
public class Utils {
    
    /**
     * Obtém uma instância de um objeto Date configurada para uma determinada data.
     * @param year Ano.
     * @param month Mês.
     * @param day Dia.
     * @return Uma instância 
     */
    public static Date getDate(int year, int month, int day) {
        Calendar cal = Calendar.getInstance();
        cal.set(year, month, day);
        
        return cal.getTime();
    }
    
    /**
     * Compara duas datas e retorna a diferença em anos.
     * @param dateToCompare Data para ser comparada a data inicial.
     * @param referenceDate A data de referência com a qual queremos obter a diferença.
     * @return Diferença das datas em anos.
     */
    public static int getDifferenceInYears(Date dateToCompare, Date referenceDate) {
        Calendar cal1 = Calendar.getInstance();
        cal1.setTime(dateToCompare);
        
        Calendar cal2 = Calendar.getInstance();
        cal2.setTime(referenceDate);
        
        int diff = cal2.get(YEAR) - cal1.get(YEAR);
        if (cal1.get(MONTH) > cal2.get(MONTH) ||
            (cal1.get(MONTH) == cal2.get(MONTH) && cal1.get(DATE) > cal2.get(DATE))) {
            diff--;
        }
        
        return diff;
    }
    
}
