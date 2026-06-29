import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"), backgroundColor: Colors.blue),

      // 1
      // body: Center(
      //   child: Container(
      //     width: 100,
      //     height: 100,
      //     color: Colors.blue,
      //     child: Center(
      //       child: Text(
      //         'hellow',
      //         style: TextStyle(
      //           fontSize: 20,
      //           fontWeight: FontWeight.bold,
      //           color: Colors.white,
      //           backgroundColor: Colors.amber,
      //           fontStyle: FontStyle.italic,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),italic

      // SizedBox(width: 20), --- > spaces

      // 2
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     TextButton(
      //       onPressed: () {
      //         print('text button is cliced !!');
      //       },
      //       child: Text('Text button'),
      //     ),
      //
      //     ElevatedButton(
      //       onPressed: () {
      //         print('Elevated Button is cliced !!');
      //       },
      //       child: Text('Elevated Button'),
      //     ),
      //
      //     OutlinedButton(
      //       onPressed: d() {
      //         print('Outlined Button is cliced !!');
      //       },
      //       child: Text('Outlined Button'),
      //     ),
      //
      //     IconButton(
      //       onPressed: () {
      //         print('Icon Button is cliced !!');
      //       },
      //       icon: const Icon(Icons.favorite),
      //     ),
      //
      //     FloatingActionButton(
      //       onPressed: () {
      //         print('Floating Action Button is cliced !!');
      //       },
      //       child: const Icon(Icons.add),
      //     ),
      //
      //     FilledButton(
      //       onPressed: () {},
      //       child: const Text('Filled Button'),
      //     ),
      //
      //     DropdownButton<String>(
      //       value: 'One',
      //       items: const [
      //         DropdownMenuItem(
      //           value: 'One',
      //           child: Text('One'),
      //         ),
      //         DropdownMenuItem(
      //           value: 'Two',
      //           child: Text('Two'),
      //         ),
      //         DropdownMenuItem(
      //           value: 'Three',
      //           child: Text('Three'),
      //         ),
      //         DropdownMenuItem(
      //           value: 'Four',
      //           child: Text('Four'),
      //         ),
      //         DropdownMenuItem(
      //           value: 'Five',
      //           child: Text('Five'),
      //         ),
      //       ],
      //       onChanged: (value) {
      //         print(value);
      //       },
      //     ),
      //
      //     PopupMenuButton(
      //       itemBuilder: (context) => [
      //         const PopupMenuItem(
      //           value: 1,
      //           child: Text('Settings'),
      //         ),
      //         const PopupMenuItem(
      //           value: 1,
      //           child: Text('manu'),
      //         ),
      //       ],
      //     )
      //   ],
      // ),

      // 3
      // body: ListView.separated(
      //   itemCount: 10,
      //
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       title: Text("Item $index"),
      //     );
      //   },
      //
      //   separatorBuilder: (context, index) {
      //     return Divider();
      //   },
      // )

      // 4
      // body: Center(
      //   child: Container(
      //     height: 150,
      //     width: 150,
      //     decoration: BoxDecoration(
      //       color: Colors.amberAccent,
      //       // borderRadius: BorderRadius.circular(10),
      //       // borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      //       // borderRadius: BorderRadius.all(Radius.circular(20)),
      //       border: Border.all(color: Colors.black, width: 10),
      //       boxShadow: [
      //         BoxShadow(
      //           blurRadius: 11,
      //           spreadRadius: 20,
      //           color: Colors.amberAccent,
      //         ),
      //       ],
      //       shape: BoxShape.rectangle,
      //     ),
      //     child: Center(child: Text('Container')),
      //   ),
      // ),

      //5
      // body: Text('vala prashant', style: TextStyle(fontFamily: 'fontPrimary'),),

      //6
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailText,
              // enabled: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                prefixIcon: Icon(Icons.email),
                suffixText: "@gmail.com",
                hintText: 'Enter a email',
                labelText: 'Email',
                // border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(20),
                // ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.red, width: 2),
                ),
        
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
        
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.green, width: 2),
                ),
              ),
            ),
            Container(height: 15),
            TextField(
              controller: passText,
              obscureText: true,
              obscuringCharacter: '*',
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility),
                ),
                hintText: 'Enter a password',
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Container(height: 15),
        
            ElevatedButton(
              onPressed: () {
                String email = emailText.text.toString();
                String passw = passText.text;
                print('Email : $email, pass : $passw');
              },
              child: Text('login'),
            ),
            Container(height: 15),
            IconButton(
              onPressed: () async {
                DateTime? datePicker = await showDatePicker(
                  context: context,
                  initialEntryMode: DatePickerEntryMode.input,
                  helpText: 'Date Picker',
                  cancelText: 'Cancel!',
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now(),
                );
        
                if (datePicker != null) {
                  print(
                    'Date: ${datePicker.day}/${datePicker.month}/${datePicker.year}',
                  );
                }
              },
              icon: const Icon(Icons.date_range),
            ),
            Container(height: 15),
            IconButton(
              icon: const Icon(Icons.access_time),
              onPressed: () async {
                TimeOfDay? selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.dial,
                );
        
                if (selectedTime != null) {
                  print(
                    'Time: ${selectedTime.hour}:${selectedTime.minute}',
                  );
                }
              },
            ),
            IconButton(
              icon: const Icon(Icons.access_time),
              onPressed: () async {
                TimeOfDay? selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  builder: (context, child) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                        colorScheme: const ColorScheme.light(
                          primary: Colors.green,
                          onPrimary: Colors.white,
                          surface: Colors.white,
                          onSurface: Colors.black,
                        ),
                      ),
                      child: child!,
                    );
                  },
                );
        
                if (selectedTime != null) {
                  print(
                    'Time: ${selectedTime.hour}:${selectedTime.minute}',
                  );
                }
              },
            ),
            SizedBox(height: 20,),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.star,
                  size: 60,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(height:20),

            SizedBox(
              width: 100,
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
