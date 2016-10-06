import UIKit

class Student {
    
    init(name: String, grades: [Double]) {
        self.name = name
        self.grades = grades
    }
    
    //
    // Atributos/Propriedades
    
    var name: String
    
    var grades: [Double]
    
    var finalGrade: Double = 0
    
    //
    // Ações/Métodos
    
    func calculateFinalGrade() {
        finalGrade = grades.reduce(0, +) / Double(grades.count)
    }
    
}

// Declarar uma lista de alunos
var students = [
    Student(name: "Cafuncio da Silva", grades: [ 7.5, 6.3, 9.2, 5.1 ]),
    Student(name: "Geovana", grades: [ 9.0, 8.0, 9.5, 3.0 ]),
    Student(name: "Chito", grades: [ 5.2, 7.4, 3.1, 1.5 ])
]

// Calcular a média de todos os alunos
students.forEach { $0.calculateFinalGrade() }

// Declarar uma constante com a nota de corte
let minimumAverage = 5.0

// Apresenta a media e quem passou na matéria
for student in students {
    print("A media do aluno \(student.name) é \(student.finalGrade)")
    if student.finalGrade >= minimumAverage {
        print("O aluno passou na matéria!")
    } else {
        print("O aluno não na matéria... 😞")
    }
}


// 
var canvas = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 300))
canvas.backgroundColor = UIColor.brown

var titleLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 0, height: 0))
titleLabel.text = "Notas da Turma"
titleLabel.textColor = UIColor.white
titleLabel.sizeToFit()
canvas.addSubview(titleLabel)

for i in 0..<(students.count) {
    var gradeLabel = UILabel(frame: CGRect(x: 20, y: 40 + (i * 30), width: 0, height: 0))
    gradeLabel.text = "\(students[i].name) tirou \(students[i].finalGrade)"
    gradeLabel.textColor = UIColor.white
    gradeLabel.sizeToFit()
    canvas.addSubview(gradeLabel)
}

var swiftLogo = UIImageView(image: UIImage(named: "swift_logo"))
swiftLogo.frame = CGRect(x: 300, y: 20, width: 80, height: 80)
swiftLogo.layer.borderColor = UIColor.black.cgColor
swiftLogo.layer.borderWidth = 3.0
swiftLogo.layer.cornerRadius = 10.0
canvas.addSubview(swiftLogo)
canvas






