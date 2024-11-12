import 'package:flutter/material.dart';

import 'email_service.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Email App',
      theme: ThemeData(
        primaryColor: Colors.lightGreen,
            primarySwatch: Colors.lightGreen
      ),
      home: EmailPage(),

    );
  }


}






















// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//           // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//
//   get textEditingController => null;
//
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     var emailText = textEditingController;
//     var passText = textEditingController;
//     var ucode = textEditingController;
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                     margin: EdgeInsets.only(bottom: 10),
//                     height: 200,
//                     width: 200,
//                     color: Colors.lightGreen,
//                     child:Center(child: Text("Hello", style: TextStyle(fontSize: 20,color: Colors.white),))
//                 ),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.only(right: 10),
//                         height: 200,
//                         width: 200,
//                         color: Colors.yellow,
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(right: 10),
//                         height: 200,
//                         width: 200,
//                         color: Colors.pinkAccent,
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(right: 10),
//                         height: 200,
//                         width: 200,
//                         color: Colors.purple,
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(bottom: 10),
//                   height: 200,
//                   width: 200,
//                   color: Colors.blueAccent,
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(bottom: 10),
//                   height: 200,
//                   width: 200,
//                   color: Colors.red,
//                 )
//               ],
//             ),
//           ),
//         )
//       body: Center(
//           child: Container(
//               width: 300,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TextField(
//
//                     controller: emailText,
//                     keyboardType: TextInputType.emailAddress, // keyboard type will provide the keyword for specific value to enter
//                     decoration: InputDecoration(
//                       hintText: 'Enter Email',
//                       focusedBorder: OutlineInputBorder(// focused is used when the user moves it cursor on the text field it create an effectborderRadius: BorderRadius.circular(11),
//                         borderSide: BorderSide(
//                           color: Colors.green,
//                           width: 5,
//                         ),
//                       ),
//                       enabledBorder: OutlineInputBorder( // it is the permanent effect of the border whether user cursor is on the text field or not
//                           borderRadius: BorderRadius.circular(11),
//                           borderSide: BorderSide(
//                             color: Colors.black,
//                             width: 2,
//                           )
//                       ),
//
//                       disabledBorder: OutlineInputBorder( // it disable the text field so that user cannot input any value
//                         borderRadius: BorderRadius.circular(11),
//                         borderSide: BorderSide(
//                           color: Colors.brown,
//                           width: 2,
//                         ),// focusedBorder ,
//                       ),
//                       //suffixText: "username Exist",
//                       suffixIcon: IconButton(onPressed:(){}, icon: Icon(Icons.remove_red_eye, color: Colors.blueAccent,)
//                       ),
//                       prefixIcon: Icon(Icons.add),
//                     ),
//                   ),
//                   Container(height: 15,),
//
//                   TextField(
//                     controller: passText,  // this will fetch the data entered by the user
//                     obscureText: true,
//                     obscuringCharacter: '*',
//                     decoration: InputDecoration(
//                         hintText: 'Enter Password',
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                             borderSide: BorderSide(
//                                 color: Colors.blueAccent
//                             )
//                         )
//                     ),
//                   ),
//
//                   Container(height: 15,),
//                   TextField(
//                     keyboardType: TextInputType.number,
//                     controller: passText,
//                     obscureText: true,
//                     obscuringCharacter: '*',
//                     decoration: InputDecoration(
//                       hintText: 'Enter the code',
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(20),
//                           borderSide: BorderSide(
//                             width: 20,
//                             color: Colors.lightGreen,
//                           )
//                       ),
//
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Container(
//                       width: 200,
//                       child: ElevatedButton(onPressed: (){
//                         String uEmail = emailText.text.toString(); // when click the button this will print the data entered by the user in the console
//                         String uPass = passText.text.toString();
//                         String ucode = passText.text.toString();
//                         print('Email: $uEmail , Pass: $uPass, Code: $ucode');
//                       }, child: Text( 'Login'),
//                         style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.greenAccent,
//                             elevation: 10,
//
//                             shadowColor: Colors.green,
//                             textStyle: TextStyle(color: Colors.white)
//
//                         ),),
//                     ),
//                   ),
//                 ],
//               )
//           )
//       ),
//     );
//   }
// }