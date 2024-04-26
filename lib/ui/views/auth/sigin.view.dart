import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pmm_garden/core/utils/async_value_ui.dart';
import 'package:pmm_garden/core/view_models/signin.vm.dart';
import 'package:pmm_garden/ui/widgets/text_util.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});
  @override
  SignInScreenState createState() => SignInScreenState();
}

class SignInScreenState extends ConsumerState<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue>(
      signInScreenVMProvider,
      (_, state) => state.showSnackbarOnError(context),
    );
    final state = ref.watch(signInScreenVMProvider);
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg1.jpeg'), fit: BoxFit.fill),
      ),
      alignment: Alignment.center,
      child: Container(
        height: 400,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
          color: Colors.black.withOpacity(0.1),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
            child: Form(
              key: _formKey,
              child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      const Center(
                          child: TextUtil(
                        text: "Ввійти",
                        weight: true,
                        size: 30,
                      )),
                      const Spacer(),
                      const TextUtil(
                        text: "імʼя користувача",
                      ),
                      Container(
                        height: 35,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.white))),
                        child: TextFormField(
                          controller: _usernameController,
                          style: const TextStyle(color: Colors.white),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Вкажіть логін';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            suffixIcon: Icon(
                              Icons.account_box,
                              color: Colors.white,
                            ),
                            fillColor: Colors.white,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const Spacer(),
                      const TextUtil(
                        text: "Пароль",
                      ),
                      Container(
                        height: 35,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.white))),
                        child: TextFormField(
                          controller: _passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Вкажіть пароль';
                            }
                            return null;
                          },
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            suffixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            fillColor: Colors.white,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(30)),
                        alignment: Alignment.center,
                        child: TextButton(
                          onPressed: state.isLoading
                              ? null
                              : () {
                                  if (_formKey.currentState!.validate()) {
                                    ref
                                        .read(signInScreenVMProvider.notifier)
                                        .signIn(_usernameController.text,
                                            _passwordController.text)
                                        .catchError((e) => (e));
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content:
                                              Text('Логін або пароль невірні')),
                                    );
                                  }
                                },
                          child: const TextUtil(
                            color: Colors.black,
                            text: 'Ввійти',
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ),
      ),
    ));
  }

/*
  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue>(
      signInScreenVMProvider,
      (_, state) => state.showSnackbarOnError(context),
    );
    final state = ref.watch(signInScreenVMProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('PMM-GARDEN')),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Логін"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Вкажіть логін';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Пароль"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Вкажіть пароль';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16.0),
                child: Center(
                  child: ElevatedButton(
                    onPressed: state.isLoading
                        ? null
                        : () {
                            if (_formKey.currentState!.validate()) {
                              ref.read(signInScreenVMProvider.notifier).signIn(
                                  _usernameController.text,
                                  _passwordController.text);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Логін або пароль невірні')),
                              );
                            }
                          },
                    child: const Text('Ввійти'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
*/
}
