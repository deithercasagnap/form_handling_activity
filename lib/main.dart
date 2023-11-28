import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);
//CASAGNAP DEITHER Y.
void main() {
  runApp(AkongMain());
}

class AkongMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UnaNgaPage()
    );
     
  }
}

class UnaNgaPage extends StatefulWidget {
  @override
  State<UnaNgaPage> createState() => _UnaNgaPageState();
}

class _UnaNgaPageState extends State<UnaNgaPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.purpleAccent,
        leading: const Icon(Icons.code)
       
      ),
      body: Form(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: "Email Address"
              )
            ),
           
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: "Password",
              ),
              keyboardType: TextInputType.text,
            ),
           
            const SizedBox(height: 20),
           
            ElevatedButton(
              onPressed: (){
                print(emailController.text);
                print(passwordController.text);

                emailController.text = "";
                passwordController.text = "";

              },
              child: const Text("Submit")
            )
          ]
        )
      )
    );

  }
}
