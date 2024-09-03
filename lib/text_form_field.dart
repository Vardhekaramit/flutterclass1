import 'package:classes_and_properties/text_feild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormField1 extends StatefulWidget {
  const TextFormField1({super.key});

  @override
  State<TextFormField1> createState() => _TextFormFieldState1();
}

class _TextFormFieldState1 extends State<TextFormField1> {
  final textfield = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String  number = "123456";


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Text form field"),
      ),
      body: Form(
        key: textfield,
        child: Column(
          children: <Widget> [
            TextField(
              keyboardType: TextInputType.text,
              controller: password,


            ),
            TextFormField(
              keyboardType: TextInputType.text ,
              controller: name,

              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: "Enter your name",
                labelText: "Name",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
              validator: (value){
                if(value!.isEmpty && value.contains("233454885")){
                  return "Please enter your name";
                  }
                return null;

                },

            ),
            SizedBox(
              height: 11,
            ),
            TextFormField(

              keyboardType: TextInputType.number,
              controller: phonenumber,

              decoration: InputDecoration(
                icon: Icon(Icons.phone),
                hintText: "Enter your phone number",
                labelText: "phone number",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
              validator: (value){
                if(value == null || value.contains(number)){
                  return "Do not use the number";
                }else{
                  return null;
                }
              },
            ),

            SizedBox(
              height: 11,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: email,
              decoration: InputDecoration(
                icon: Icon(Icons.alternate_email_outlined),
                hintText: "Enter your Email id",
                labelText: "Email",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
              validator: (value){
                if(value!.isEmpty){
                  print("plese Enter your text");
                }else{
                  return null;
                }
              },
            ),
            SizedBox(
              height: 11,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: (){
                  //click of button we can see enter text
                  setState(() {

                  });
                  // It returns true if the form is valid, otherwise returns false
                  if(textfield.currentState!.validate()){
                    Text("Form is valid");
                  }


              },
                child: Text("Submit",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),)),

            Text("plese Enter your name:" +name.value.text ),
            Text("plese Enter your phone: " + phonenumber.value.text),
            Text("plese Enter your email:"+email.value.text),

          ],

        ),
      ) ,
    );
  }
}
