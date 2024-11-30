import 'package:ecomm_app/models/user.dart';
import 'package:ecomm_app/services/manage_http_response.dart';
import 'package:http/http.dart' as http;

import '../global_variable.dart';

class AuthController{
  Future<void> signUPUsers({
    required context,
    required String email,
    required String fullName,
    required String password,
})async{
  try{
    User user=User(id: '',
    fullName: fullName,
    email: email,
    state: '',
    city: '',
    locality: '',
    password: password);

    http.Response response=await http.post(Uri.parse('$uri/api/signup'),
    body: user.toJson(),//convert the user objects to json for the request body
      headers:<String,String>{
      "Content-Type":'application/json; charset=UTF-8',//specify the context type as json
      } ,//sets the header for request
    );
    manageHttpResponse(response: response, context: context, onSuccess: (){
      showSnackBar(context, 'Account has been created for you');
    });
  }catch(e){

  }
}
}