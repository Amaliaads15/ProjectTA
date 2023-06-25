import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dashboard.dart';
import 'package:flutter_application_1/main.dart';

// ignore: must_be_immutable
class HalamanLogin extends StatelessWidget {
  HalamanLogin({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 236, 209, 176),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.arrow_downward)),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1528190336454-13cd56b45b5a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'),
                  fit: BoxFit.cover)),
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Text("Login",
                  style: TextStyle(fontSize: 30, color: Colors.black)),
              TextField(
                decoration: InputDecoration(labelText: "Email"),
                controller: emailController,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: "Password"),
                controller: passwordController,
              ),
              const SizedBox(
                height: 8.0,
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                  width: 400,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        if (emailController.text == "amal" &&
                            passwordController.text == "semangatpagi!") {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const halamanDashboard()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    'Silahkan isi username dan password dengan benar.')),
                          );
                        }
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 20),
                      ))),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have account yet?"),
                  TextButton(onPressed: () {}, child: const Text("Sign up"))
                ],
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("OLASAM"),
          backgroundColor: const Color.fromARGB(197, 36, 22, 2),
          //actions: [
          // IconButton(
          // onPressed: () {},
          // icon: const Icon(Icons.menu),
          // color: Colors.black,
          // )
          //],
        ));
  }
}
