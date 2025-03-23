// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract SchoolLedger {
    struct Class {
        string name;
        uint256 level;
    }

    struct Student {
        string surname;
        string firstname;
        uint256 age;
        uint256 level;
    }

    struct Teacher {
        string surname;
        string firstName;
        uint256 classLevelTaught;
    }

    Class[] public classes;
    Student[] public students;
    Teacher[] public teachers;
    

    function registerStudent(string memory _surname, string memory _firstname,uint256 _age, uint256 _level ) public {
        Student memory student = Student(_surname, _firstname, _age, _level);
        students.push(student);

    }
    function registerTeacher(string memory _surname, string memory _firstname, uint256 _classLevelTaught ) public {
        Teacher memory teacher = Teacher(_surname,_firstname,_classLevelTaught);
        teachers.push(teacher);
    }
    function registerNewClass (string memory _name , uint256 _level ) public {
        Class memory newClass = Class(_name , _level );
        classes.push (newClass);
    }



}