import 'package:desafio02/paleta_colors.dart';
import 'package:desafio02/paleta_images.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(AppImages.perfil),
                  radius: 65.0,
                ),
                Text(
                  'HenriqueJRodrigues',
                  style: TextStyle(
                    fontFamily: 'Charmonman',
                    color: AppColors.textos,
                    fontSize: 40,
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20,
                      color: AppColors.cartao,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.5),
                ),
                SizedBox(
                  width: 150.0,
                  height: 20.0,
                  child: Divider(
                    color: AppColors.textos,
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                  padding: EdgeInsets.all(10.0),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 25,
                        color: AppColors.textos,
                      ),
                      Text(
                        ' +55 11 12345-6789',
                        style: TextStyle(
                            color: AppColors.textos,
                            fontSize: 20,
                            fontFamily: 'Source Sans Pro'),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                  padding: EdgeInsets.all(10.0),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        size: 25,
                        color: AppColors.textos,
                      ),
                      Text(
                        ' hrjsuporte@gmail.com',
                        style: TextStyle(
                            color: AppColors.textos,
                            fontSize: 20,
                            fontFamily: 'Source Sans Pro'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
