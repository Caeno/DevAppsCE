import Foundation

public extension Double {
 
    // Retorna o valor representando em formatação monetária.
    var currencyDisplay: String {
        // Cria um NumberFormatter para e configura para o formato Moeda
        let currencyFormatter = NumberFormatter()
        currencyFormatter.numberStyle = .currency
        currencyFormatter.locale = NSLocale.current
        
        // Transforma o Double em NSNumber para ser usado pela função de conversão
        let number = NSNumber(value: self)
        return currencyFormatter.string(from: number)!
    }
 
    // Retorna o valor representando em formatação percentual.
    var percentDisplay: String {
        let percentFormatter = NumberFormatter()
        percentFormatter.numberStyle = .percent
        
        let number = NSNumber(value: self)
        return percentFormatter.string(from: number)!
    }
 
    // Retorna o valor formatado conforme a String passada
    func formatted(format: String) -> String {
        return String(format: format, arguments: [self])
    }
    
}
