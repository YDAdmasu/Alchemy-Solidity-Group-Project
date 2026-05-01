
---

# 📄 2. Structs — `02-structs.md`

```md
# 📘 Structs in Solidity (Reference Types)

## Overview
Structs allow you to create custom data types by grouping multiple variables together. They help represent real-world entities inside smart contracts.

---

## 🧠 What is a Struct?
A struct is like a custom object that can store different types of data under one name.

---

## ⚙️ Syntax

```solidity
struct StructName {
    dataType variable1;
    dataType variable2;
}
💻 Example Struct
pragma solidity ^0.8.0;

contract StructExample {

    struct Student {
        string name;
        uint age;
        bool isActive;
    }

    Student public student;

    function setStudent(string memory _name, uint _age, bool _status) public {
        student = Student(_name, _age, _status);
    }
}
🧠 How Structs Work
They group multiple variables together
Can be stored in arrays or mappings
Useful for modeling real-world objects
📦 Struct with Array Example
Student[] public students;

function addStudent(string memory _name, uint _age) public {
    students.push(Student(_name, _age, true));
}
📌 Key Points
Used to define custom data structures
Can store mixed data types
Helps organize complex data
Frequently used with mappings and arrays
🚀 Real Use Cases
Student records system
Employee management system
NFT metadata structure
Voting candidates
---

# 📄 2. Structs — `02-structs.md`

```md
# 📘 Structs in Solidity (Reference Types)

## Overview
Structs allow you to create custom data types by grouping multiple variables together. They help represent real-world entities inside smart contracts.

---

## 🧠 What is a Struct?
A struct is like a custom object that can store different types of data under one name.

---

## ⚙️ Syntax

```solidity
struct StructName {
    dataType variable1;
    dataType variable2;
}
💻 Example Struct
pragma solidity ^0.8.0;

contract StructExample {

    struct Student {
        string name;
        uint age;
        bool isActive;
    }

    Student public student;

    function setStudent(string memory _name, uint _age, bool _status) public {
        student = Student(_name, _age, _status);
    }
}
🧠 How Structs Work
They group multiple variables together
Can be stored in arrays or mappings
Useful for modeling real-world objects
📦 Struct with Array Example
Student[] public students;

function addStudent(string memory _name, uint _age) public {
    students.push(Student(_name, _age, true));
}
📌 Key Points
Used to define custom data structures
Can store mixed data types
Helps organize complex data
Frequently used with mappings and arrays
🚀 Real Use Cases
Student records system
Employee management system
NFT metadata structure
Voting candidates