enum Skill { FLUTTER, DART, OTHER }
enum Adress {street , city , zipCode}

class Employee {
  String name;
  double baseSalary;
  int yearofExperience;
  Skill skill;
  double bonus = 0.0;
  
  Employee(this.name, this.baseSalary , this.yearofExperience,this.skill){cal();}
  String get _name => name;
  double get _base => baseSalary;
  int get _exp => yearofExperience;
  double get _bonus => bonus;

  double cal(){  
    double addskill;
      switch(skill){
        case Skill.FLUTTER:
        addskill= 5000;
        break;
        case Skill.DART:
        addskill= 3000;
        break;
        case Skill.OTHER:
        addskill=1000;
        break;
      }
      
    
  bonus = baseSalary + (2000 * yearofExperience) + addskill;
   return bonus;
  }
  
  void printDetails() {
    print('Employee: $name, Base Salary: \$${baseSalary}, Exprience: $yearofExperience \n skill : $skill, \n bonus : $bonus');
  }
}

void main() {
  var emp1 = Employee('Sokea', 40000,4,Skill.FLUTTER);
  emp1.printDetails();

  var emp2 = Employee('Ronan', 45000,5,Skill.DART);
  emp2.printDetails();
}
