import 'package:flutter/material.dart';
import 'package:jarona_rascunho/assets/collors.dart';

class Camera extends StatefulWidget {
  const Camera({ Key? key }) : super(key: key);

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLOR7,
      body: Image.asset(
        "images/foto.png",
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width*0.8,
        height: MediaQuery.of(context).size.width*0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0)
        ),
        child: FloatingActionButton(
          isExtended: true,
          onPressed: (){},
          child: Text(
            'Digitar código manualmente',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.black
            ),
          ),
          backgroundColor: COLOR8,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}