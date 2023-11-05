// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0;

contract Student_management{

	struct Student{
		int stud_id;
		string Name;
		string Department;
	}

	Student[] Students;
// SPDX-License-Identifier: Unlicensed
pragma solidity >=0.8.12;

contract StudentManagement {
    struct Student {
        int stud_id;
        string Name;
        string Department;
    }

    mapping(int => Student) public Students;

    function addStudent(int stud_id, string memory Name, string memory Department) public {
        Students[stud_id] = Student(stud_id, Name, Department);
    }

    function getStudent(int stud_id) public view returns (string memory Name, string memory Department) {
        Student memory stud = Students[stud_id];
        if (stud.stud_id == 0) {
            // Student not found, return appropriate values or revert
            revert("Student not found");
        }
        return (stud.Name, stud.Department);
    }

    // Fallback function (if needed for other purposes)
    fallback() external payable {
        revert("Invalid function call");
    }

    // Receive function to handle incoming Ether transfers
    receive() external payable {
        // You can add custom logic here if needed
    }
}

	function add_stud(int stud_id, string memory Name, string memory Department) public{
		Student memory stud = Student(stud_id, Name, Department);
		Students.push(stud);
	}

	function getStudent(int stud_id) public view returns(string memory, string memory){
		for(uint i = 0; i < Students.length; i++){
			Student memory stud = Students[i];
			if(stud.stud_id == stud_id){
				return(stud.Name, stud.Department);
			}
		}
        return("Name Not Found", "Department Not Found");
	}

	//Fallback Function
	fallback() external payable{
		Students.push(Student(7, "XYZ", "Mechanical"));
	}
}
