import 'package:flutter/material.dart';
import 'package:investordastur/profilqismi.dart';
import 'package:lottie/lottie.dart';

class SignInPage2 extends StatelessWidget {
  const SignInPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;

    return Scaffold(
        body: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assetslottie/signupback.jfif"),fit: BoxFit.cover)),
          child: Center(
              child: isSmallScreen
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        _Logo(),
                        _FormContent(),
                      ],
                    )
                  : Container(
                      padding: const EdgeInsets.all(32.0),
                      constraints: const BoxConstraints(maxWidth: 800),
                      child: Row(
                        children: const [
                          Expanded(child: _Logo()),
                          Expanded(
                            child: Center(child: _FormContent()),
                          ),
                        ],
                      ),
                    )),
        ));
  }
}

class _Logo extends StatelessWidget {
  const _Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
         CircleAvatar(radius: 50,child: Lottie.asset('assetslottie/odamlottie.json',),),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Welcome to App!",
            textAlign: TextAlign.center,
            style: isSmallScreen
                ? Theme.of(context).textTheme.headline5
                : Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Colors.black),
          ),
        )
      ],
    );
  }
}

class _FormContent extends StatefulWidget {
  const _FormContent({Key? key}) : super(key: key);

  @override
  State<_FormContent> createState() => __FormContentState();
}

class __FormContentState extends State<_FormContent> {
  
  final stilone1 = (TextStyle(color: Colors.black,fontFamily: 'font1',fontSize: 20));
  bool _isPasswordVisible = false;
  bool _rememberMe = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              validator: (value) {
                // add email validation
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }

                bool emailValid = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value);
                if (!emailValid) {
                  return 'Please enter a valid email';
                }

                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            _gap(),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }

                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  prefixIcon: const Icon(Icons.lock_outline_rounded),
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(_isPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  )),
            ),
            _gap(),
            CheckboxListTile(
              value: _rememberMe,
              onChanged: (value) {
                if (value == null) return;
                setState(() {
                  _rememberMe = value;
                });
              },
              title: const Text('Remember me'),
              controlAffinity: ListTileControlAffinity.leading,
              dense: true,
              contentPadding: const EdgeInsets.all(0),
            ),
            _gap(),
            SizedBox(
              width: double.infinity,
              child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>mci()));},
                child: Container(width: 300,height: 50,decoration: BoxDecoration(color: Color.fromARGB(255, 245, 195, 45),
                  borderRadius: BorderRadius.horizontal(right: Radius.circular(30),left: Radius.circular(30))),
                  child: Center(child: Text('Sign Up',style: stilone1,)),),
              ),
            ),
SizedBox(height: 15,),

TextButton(onPressed: (){}, child: Text("Already have an account? Sign in",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),


            SizedBox(height: 20,),


            Row(
              children: [
                InkWell(onTap: (){},
                  child: Container(width: 150,height: 50,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assetslottie/face.jfif'),fit: BoxFit.cover),
                    borderRadius: 
                  BorderRadius.horizontal(right: Radius.circular(30),left: Radius.circular(30)),color: Colors.red),),
                ),

                 InkWell(onTap: (){},
                   child: Container(width: 150,height: 50,decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assetslottie/google.png'),fit: BoxFit.cover),
                    borderRadius: 
                                 BorderRadius.horizontal(right: Radius.circular(30),left: Radius.circular(30)),color: Colors.red),),
                 ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 16);
}
