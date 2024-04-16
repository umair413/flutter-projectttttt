import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'University Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('University Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClassPage()),
                );
              },
              child: Text('Class'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudentPage()),
                );
              },
              child: Text('Student'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TeacherPage()),
                );
              },
              child: Text('Teacher'),
            ),
          ],
        ),
      ),
    );
  }
}

class ClassPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Class Page'),
            // Add functionality to display and manage classes here
          ],
        ),
      ),
    );
  }
}

class StudentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Student Page'),
            // Add functionality to display and manage students here
          ],
        ),
      ),
    );
  }
}

class TeacherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teacher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Teacher Page'),
            // Add functionality to display and manage teachers here
          ],
        ),
      ),
    );
  }
}




class ClassPage extends StatefulWidget {
  @override
  _ClassPageState createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController fatherNameController = TextEditingController();
  final TextEditingController rollNoController = TextEditingController();
  final TextEditingController semesterController = TextEditingController();
  final TextEditingController programController = TextEditingController();
  final TextEditingController facultyController = TextEditingController();
  final TextEditingController feeController = TextEditingController();

  String message = '';

  void createClassPage() {
 
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Success'),
          content: Text('Your Class is created successfully!'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the alert dialog
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClassPage'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: semesterController,
              decoration: InputDecoration(labelText: 'Semester'),
            ),
            TextField(
              controller: programController,
              decoration: InputDecoration(labelText: 'Program'),
            ),
            TextField(
              controller: facultyController,
              decoration: InputDecoration(labelText: 'Faculty'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                createClassPage();
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            Text(
              message,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    semesterController.dispose();
    programController.dispose();
    facultyController.dispose();
    super.dispose();
  }
}



class TeacherPage extends StatefulWidget {
  @override
  _TeacherPageState createState() => _TeacherPageState();
}

class _TeacherPageState extends State<TeacherPage > {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController semesterController = TextEditingController();
  final TextEditingController programController = TextEditingController();
  final TextEditingController facultyController = TextEditingController();

  String message = '';

  void createStudentPage() {
 
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Success'),
          content: Text('Your TeacherPage is created successfully!'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the alert dialog
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TeacherPage '),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: semesterController,
              decoration: InputDecoration(labelText: 'Semester'),
            ),
            TextField(
              controller: programController,
              decoration: InputDecoration(labelText: 'Program'),
            ),
            TextField(
              controller: facultyController,
              decoration: InputDecoration(labelText: 'Faculty'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                createStudentPage();
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            Text(
              message,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    semesterController.dispose();
    programController.dispose();
    facultyController.dispose();
    super.dispose();
  }
}





class StudentPage extends StatefulWidget {
  @override
  _StudentPageState createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController fatherNameController = TextEditingController();
  final TextEditingController rollNoController = TextEditingController();
  final TextEditingController semesterController = TextEditingController();
  final TextEditingController programController = TextEditingController();
  final TextEditingController facultyController = TextEditingController();
  final TextEditingController feeController = TextEditingController();

  String message = '';

  void createStudentPage() {
 
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Success'),
          content: Text('Your StudentPage is created successfully!'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the alert dialog
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StudentPage'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: fatherNameController,
              decoration: InputDecoration(labelText: 'Father\'s Name'),
            ),
            TextField(
              controller: rollNoController,
              decoration: InputDecoration(labelText: 'Roll No'),
            ),
            TextField(
              controller: semesterController,
              decoration: InputDecoration(labelText: 'Semester'),
            ),
            TextField(
              controller: programController,
              decoration: InputDecoration(labelText: 'Program'),
            ),
            TextField(
              controller: facultyController,
              decoration: InputDecoration(labelText: 'Faculty'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                createStudentPage();
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            Text(
              message,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    fatherNameController.dispose();
    rollNoController.dispose();
    semesterController.dispose();
    programController.dispose();
    facultyController.dispose();
    super.dispose();
  }
}

