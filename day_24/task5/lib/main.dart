import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TodoScreen(),
    );
  }
}

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  // Todo list is our State
  final List<String> todos = [];

  // Controller for TextField
  final TextEditingController todoController = TextEditingController();

  // Add Todo
  void addTodo() {
    final todo = todoController.text.trim();

    // Don't add empty todo
    if (todo.isEmpty) {
      return;
    }

    setState(() {
      todos.add(todo);
    });

    // Clear TextField
    todoController.clear();
  }

  // Delete Todo
  void deleteTodo(int index) {
    setState(() {
      todos.removeAt(index);
    });
  }

  @override
  void dispose() {
    todoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            // TextField + Add Button
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: todoController,
                    decoration: const InputDecoration(
                      hintText: 'Enter todo',
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (_) {
                      addTodo();
                    },
                  ),
                ),

                const SizedBox(width: 10),

                ElevatedButton(
                  onPressed: addTodo,
                  child: const Text('Add'),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Todo List
            Expanded(
              child: todos.isEmpty
                  ? const Center(
                child: Text(
                  'No Todo Yet',
                  style: TextStyle(fontSize: 18),
                ),
              )
                  : ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(todos[index]),

                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          deleteTodo(index);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}