import Array "mo:base/Array";
import Text "mo:base/Text";

actor TodoList {
    private stable var todos : [Text] = [];
    
     // Create: Add a new todo item
    public func addTodo(task : Text) : async Bool {
        // Check if task is empty
        if (task == "") {
            return false;
        };
        
        // Add task to array
        todos := Array.append<Text>(todos, [task]);
        return true;
    };
    
    // Update: Modify a todo item at specific index
    public func updateTodo(index : Nat, newTask : Text) : async Bool {
        if (index < todos.size()) {
            let updatedTodos = Array.tabulate<Text>(todos.size(), func(i : Nat) : Text {
                if (i == index) { newTask } else { todos[i] }
            });
            todos := updatedTodos;
            return true;
        };
        return false;
    };

    // Read: Get all todo items
    public query func getTodos() : async [Text] {
        return todos;
    };

    // Sort todos alphabetically 
    public func sortTodos() : async Bool {
        if (todos.size() == 0) {
            return false;
        };
        
        // Sort array in place
        todos := Array.sort<Text>(todos, Text.compare);
        return true;
    };

    // Get number of todos
    public query func getTodosCount() : async Nat {
        return todos.size();
    };
}