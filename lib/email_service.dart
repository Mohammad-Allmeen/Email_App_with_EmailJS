
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resources/rounded_button.dart';
import 'package:http/http.dart' as http;

final String service_id ="service_f0n2p3q";
final String template_id= "template_l4fgrzi";
final String user_id="iRLK7KvkPHgBJbV_a";

class EmailPage extends StatefulWidget {
  const EmailPage({super.key});

  @override
  State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {

  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _messageController = TextEditingController();

  final String serviceId = service_id;
  final String templateId = template_id;
  final String userId = user_id;

  Future<void> _sendEmail() async{
    //Uri.parse: This method converts the string URL into a Uri object, which is necessary for making HTTP requests in Dart.
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    //the try block is used to handle exceptions that may occur during the HTTP request. If an error occurs, control will pass to the catch block.
    try {
      //making the post request
      //Here, you're specifying that the content being sent is in JSON format by
      // setting Content-Type to application/json.
      final response = await http.post(url, headers: { //http.post is a function that send the post to the specifies url
        'Content-Type':'application/json',
      },
      body: jsonEncode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'user_name': _nameController.text,
          'user_email': _emailController.text,
          'user_message': _messageController.text,
        }
      }),
      );
      //response.statusCode: This checks the HTTP status code of the response.
      //If it is 200, this means the request was successful, and you display a success message using ScaffoldMessenger.
      // If not, it shows a failure message with the response body, which may contain error details
      if(response.statusCode==200){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Email Sent!")));
      }
      else
        {
          // exception for the body
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to Send Email: ${response.body}")));
        }
    }
    // Exception for the network issue-If any error occurs during the request (like network issues),
    // it will be caught here. You display an error message using a SnackBar that includes the error description.
    catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error: $e")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Email Page', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
        backgroundColor: Colors.lightGreen,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.email,size: 70,color: Colors.lightGreen,),
              Text('Send Email', style: TextStyle(color: Colors.lightGreen,fontWeight: FontWeight.bold,fontSize: 40),),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  prefixIcon: Icon(Icons.person ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.lightGreen,
                      width: 2
                    )
                  ),
              focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
              color: Colors.lightGreen,
              width: 2
                ),
              ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email_outlined ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.lightGreen,
                          width: 2
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                        color: Colors.lightGreen,
                        width: 2
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _messageController,
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: 'Enter your Message',
                  prefixIcon: Icon(Icons.message),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 2, color: Colors.lightGreen)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(width: 2, color: Colors.lightGreen)
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RoundedButton(title: 'Send', onTap: (){
          _sendEmail();
          _emailController.clear();
          _nameController.clear();
          _messageController.clear();
              },),
              Padding(padding: EdgeInsets.symmetric(vertical: 100))
            ],
          ),
        ),
      ),
    );
  }
}
