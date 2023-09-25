class Employee {
  final String name;
  final String surname;
  final String phoneNumber;
  final String passport;

  Employee(
    this.name,
    this.surname,
    this.phoneNumber,
    this.passport,
  );
}

class EmployeeModel extends Employee {
  EmployeeModel(final String name, final String surname,
      final String phoneNumber, final String passport)
      : super(
          name,
          surname,
          phoneNumber,
          passport,
        );

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'surname': surname,
      'phoneNumber': phoneNumber,
      'passport': passport,
    };
  }

  factory EmployeeModel.fromEmployee(Employee employee) {
    return EmployeeModel(employee.name, employee.surname, employee.phoneNumber,
        employee.passport);
  }
}

void main(List<String> args) {
  final employee =
      Employee("shakha", "nasirkulov", "+998979106225", "id123456");
  final employeeModel = EmployeeModel.fromEmployee(employee);

  final employeeJson = employeeModel.toJson();
  print("employee JSON : $employeeJson");
}
