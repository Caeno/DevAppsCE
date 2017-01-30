import Foundation


public func getDate(_ year: Int, _ month: Int, _ day: Int) -> Date! {
    var components = DateComponents()
    components.year = year
    components.month = month
    components.day = day
    
    return Calendar.current.date(from: components)
}


public func getDifferenceInYearsFromNow(_ date: Date) -> Int! {
    let components = Calendar.current.dateComponents([ .year ], from: date, to: Date())
    return components.year;
}
