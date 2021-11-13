import 'package:desafio02/paleta_colors.dart';
import 'package:desafio02/paleta_images.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        //    backgroundColor: AppColors.background,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/fundo3.jpg'), fit: BoxFit.cover)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //  CircleAvatar(
                //   backgroundImage: AssetImage(AppImages.perfil),
                //    radius: 65.0,
                //  ),
                Text(
                  'My name is',
                  style: TextStyle(fontSize: 20,
                  fontFamily: 'Montserrat'),
                ),
                Text(
                  'HenriqueJRodrigues',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: AppColors.textos,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20,
                      color: AppColors.textos,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
                SizedBox(
                  width: 150.0,
                  height: 20.0,
                  child: Divider(
                    color: AppColors.textos,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/gmail.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/LinkedIn.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/githubt.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
