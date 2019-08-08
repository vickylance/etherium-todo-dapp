pragma solidity ^0.5.0; // First we have to define the solidity language version

contract TodoList { // We are defining a new smart contract called TodoList
  uint public taskCount = 0; // The public keyword allows the solidity to create a function to call this variable from outside

  struct Task { // custom datatypes are created in solidity using structs
    uint id; // uint means unsigned integer which means it cant be negative
    string content;
    bool completed;
  }
  // mapping is like a hash table/associative array.
  // Here we are defining the key to be a uint and its value to be of type Task
  mapping(uint => Task) public tasks;

  constructor() public {
    createTask("Check out https://www.vickylance.com");
  }

  function createTask(string memory _content) public {
    taskCount++;
    tasks[taskCount] = Task(taskCount, _content, false);
  }

  // function listTask() {

  // }
}
