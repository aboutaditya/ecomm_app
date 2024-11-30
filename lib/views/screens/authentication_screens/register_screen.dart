
import 'package:ecomm_app/views/screens/authentication_screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget{
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String email;
  late String fullName;
  late String password;

  RegisterScreen({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child:
        SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login Your Account',
                  style:GoogleFonts.getFont(
                    'Lato',
                    color:Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.2,
                    fontSize: 23,)
                  ,),
                Text('Explore the world',
                  style:GoogleFonts.getFont(
                    'Lato',
                    color:Colors.black,
                    letterSpacing: 0.2,
                    fontSize: 14,
                  ),
                ),
                Image.asset('assets/images/Illustration.png',width: 200,height: 200,),
            
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Full Name',
                    style:GoogleFonts.getFont(
                      'Nunito Sans',
                      fontWeight:FontWeight.w600,
                      letterSpacing: 0.2,
                    ),
                  ),
                ),
                TextFormField(
                  onChanged: (value){
                    fullName=value;
                  },
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter your full name';
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      labelText: 'Enter your full name',
                      labelStyle: GoogleFonts.getFont(
                        'Nunito Sans',
                        fontSize: 14,
                        letterSpacing: 0.1,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('assets/icons/user.jpeg',
                          height: 20,
                          width: 20,
                        ),
                      )
                  ),
                ),
            
                const SizedBox(height: 20,),
            
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Email',
                    style:GoogleFonts.getFont(
                      'Nunito Sans',
                      fontWeight:FontWeight.w600,
                      letterSpacing: 0.2,
                    ),
                  ),
                ),
                TextFormField(
                  onChanged: (value){
                    email=value;
                  },
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter your email';
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      labelText: 'Enter your email',
                      labelStyle: GoogleFonts.getFont(
                        'Nunito Sans',
                        fontSize: 14,
                        letterSpacing: 0.1,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('assets/icons/email.png',
                          height: 20,
                          width: 20,
                        ),
                      )
                  ),
                ),
            
                const SizedBox(height: 20,),
            
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Password',
                    style:GoogleFonts.getFont(
                      'Nunito Sans',
                      fontWeight:FontWeight.w600,
                      letterSpacing: 0.2,
                    ),
                  ),
                ),
            
                TextFormField(
                  onChanged: (value){
                    password=value;
                  },
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Enter your password';
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    labelText: 'Enter your Password',
                    labelStyle: GoogleFonts.getFont(
                      'Nunito Sans',
                      fontSize: 14,
                      letterSpacing: 0.1,
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset('assets/icons/password.png',
                        height: 20,
                        width: 20,
                      ),
                    ),
                    suffixIcon:const Icon(Icons.visibility),
                  ),
                ),
                const SizedBox(height: 20,),
          
          
                InkWell(
                  onTap: (){
                    if(_formKey.currentState!.validate()){
                      print(fullName);
                      print(email);
                      print(password);
                    }else{
                      print('faied');
                    }
                  },
                  child: Container(
                    width:319,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: const LinearGradient(colors: [Color(0xFF102DE1),Color(0xCC0D6EFF),])
                    ),
                    child:Center(
                      child: Text('Sign up',
                        style:GoogleFonts.getFont(
                          'Lato',
                          fontSize: 20,
                          color: Colors.white,
                        ) ,),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an Account ? ',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
            
                      ),),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context)=>LoginScreen())
                        );
                      },
                      child: Text('Sign in',
                        style: GoogleFonts.roboto(
                          color: const Color(0xFF103DE5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
            
              ],
            ),
          ),
        )),
      ),
    );
  }
}