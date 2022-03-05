import UIKit

struct Person {
    var name : String
    var lastname: String
    var dateBirdth: Int
    
    func calculateAge () -> Int {
        return 2022 - dateBirdth
    }
    
    func showCredentials () {
        print("""
        Name: \(name)
        Lastname: \(lastname)
        Years: \(calculateAge())
        
        """)
    }
}

struct Student {
    var credentials: Person
    var universtyName: String
    var studentNumber: String
    var noteAverage: Double
}

struct StudentGroup {
    var students: [Student]
    var groupName: String
    func showStudents () {
        for student in students {
            print("Name: \(student.credentials.name) Surname: \(student.credentials.lastname) Years: \(student.credentials.calculateAge())")
        }
    }
}

var student1 = Student(credentials: Person(name: "Mehmet", lastname: "Ozdemir", dateBirdth: 1996), universtyName: "Giresun Üniversitesi", studentNumber: "159", noteAverage: 2.80)

var student2 = Student(credentials:Person(name: "Ayça", lastname: "Ozdemir", dateBirdth: 2000), universtyName: "Ege Üniversitesi", studentNumber: "2022", noteAverage: 3.97)

var student3 = Student(credentials:Person(name: "Gökçe", lastname: "Ozdemir", dateBirdth: 2005), universtyName: "İzmir Yüksek Teknoloji Entitüsü", studentNumber: "2022", noteAverage: 3.97)

var students = StudentGroup(students: [student1,student2,student3], groupName: "Özdemirler")

print(students.showStudents())









