import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'custom_colors.dart';

class CustomTextForm extends StatefulWidget {
   final String hintText;
   final TextEditingController controller;
   final CustomInputTypes inputtype;
   final Icon? pIcon;
  const CustomTextForm({Key? key, 
  required this.hintText, 
  required this.controller,
  this.pIcon,
  this.inputtype = CustomInputTypes.text
  
  }) : super(key: key);

  @override
  State<CustomTextForm> createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<CustomTextForm> {
    bool _obscureval = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            //onSaved: (email) {},
            
            decoration: InputDecoration(
              
              hintText: widget.hintText,
                prefixIcon:  Padding(
                padding: const EdgeInsets.all(2),
                child: widget.pIcon,
              ),
              suffixIcon:widget.inputtype == CustomInputTypes.password
              ? InkWell(
                  onTap: () {
                    setState(() {
                      _obscureval = !_obscureval;
                    });
                  },
                  child: Icon(
                      _obscureval ? Icons.visibility : Icons.visibility_off),
                )
              : Container(
                  width: 0,
                ),
            ),
          );
  }
}

enum CustomInputTypes { text, number, password, phone, date, country }