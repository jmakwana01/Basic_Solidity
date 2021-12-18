// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Todos{
    struct Todo{
        string text;
        bool completed;
    }

    // An array of "ToDo" Struct 
    Todo[] public todos;

    function create(string memory _text)public{
        // 3 way  to intialize a struct 
        // -calling it like a function 
        todos.push(Todo(_text,false));

        // key value mapping 
        todos.push(Todo({text:_text,completed:false}));

        // intialize an empty struct and then update it 
        Todo memory todo;
        todo.text=_text;

        // todo.completed intialized to false 
        todos.push(todo);
    }

    // update completed
    function toggleCompleted(uint _index)public {
        Todo storage todo =todos[_index];
        todo.completed=!todo.completed;
        
    }

}
