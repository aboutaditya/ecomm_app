import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void manageHttpResponse({
  required  http.Response response, //http response from the request
  required BuildContext context,/// contect is to show snackbar
  required VoidCallback onSuccess , // the callback is to execute on successful response
}){
  //switch statement to handle diff https stattus code
  switch(response.statusCode){
    case 200:// indicates a successfull request
      onSuccess();
      break;
    case 400://incidactes bad request
      showSnackBar(context, json.decode(response.body)['msg']);
      break;
    case 500: //indicates a server error
      showSnackBar(context, json.decode(response.body)['error']);
      break;
    case 201://indicates  a resource was created successfully
      onSuccess();
      break;
  }
}

void showSnackBar(BuildContext context,String title){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(title)));
}

