import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vaksin_info/data/todo_list.dart';

class TodoWidget extends StatelessWidget {
  const TodoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /* --------------------------- gambar vaccine time -------------------------- */
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  height: constraints.maxWidth - 100,
                  child: Image.asset('assets/images/vaccineTime.png'),
                );
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Ayo ambil Vaksin Covid-19 kamu dengan mengikuti todo list di bawah ini.',
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            /* -------------------------------- todo list ------------------------------- */
            TodoList(),
            /* --------------------------------- footer --------------------------------- */
            SizedBox(
              height: 12.0,
            ),
          ],
        ),
      ),
    );
  }
}

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    bool todoCompleted = false;
    bool checkComplete = false;
    if (!todoCompleted) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: vaccineTodoList.map((todo) {
          int index = vaccineTodoList.indexOf(todo);
          return InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Card(
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Icon(
                                todo.icon,
                                color: todo.color,
                              ),
                            ),
                            Expanded(
                              flex: 9,
                              child: Text(
                                todo.todo,
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                        content: Text(
                          todo.description,
                          textAlign: TextAlign.justify,
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Icon(
                          todo.icon,
                          color:
                              (todo.check == false) ? Colors.grey : todo.color,
                          size: 40.0,
                        ),
                      ),
                      Expanded(
                        flex: 12,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                todo.todo,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: (todo.check == false)
                                      ? Colors.grey
                                      : Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '${todo.description.replaceRange(50, todo.description.length, '...')}',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Checkbox(
                            value: todo.check,
                            activeColor: todo.color,
                            onChanged: (bool? value) {
                              setState(() {
                                if (index == 0 ||
                                    vaccineTodoList[index - 1].check == true) {
                                  todo.check = value!;
                                }

                                for (int x = 0;
                                    x < vaccineTodoList.length;
                                    x++) {
                                  if (vaccineTodoList[x].check) {
                                    checkComplete = true;
                                  } else {
                                    checkComplete = false;
                                    break;
                                  }
                                }

                                if (checkComplete) {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      title: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Icon(
                                              Icons.check_circle,
                                              color: Colors.green,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 9,
                                            child: Text('Selesai'),
                                          ),
                                        ],
                                      ),
                                      content: Image.asset(
                                          'assets/images/vaccinated.png'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'OK'),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      );
    } else {}
  }
}
