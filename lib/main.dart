import 'package:desafio02/paleta_colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
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
                  style: TextStyle(fontSize: 20, fontFamily: 'Montserrat'),
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
                    InkWell(
                      onTap: (){abrirGmail();},
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/gmail.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: (){
                        abrirUrl1(); 
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/LinkedIn.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {abrirUrl();},
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/githubt.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

/*
abrirWhatsApp() async {
  var whatsappUrl = "whatsapp://send?phone=+55&text=Olá,tudo bem ('Teste')?";

  if (await canLaunch(whatsappUrl)) {
    await launch(whatsappUrl);
  } else {
    throw 'Could not launch $whatsappUrl';
  }
}
*/

abrirGmail() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'hrjsuporte@gmail.com',
    query: 'subject=Reportar&body=Detalhe aqui qual a vaga: ',
  );
  String url = params.toString();
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Could not launch $url');
  }
}

abrirUrl() async {
  const url = 'https://github.com/HenriqueJRodrigues';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

abrirUrl1() async {
  const url = 'https://www.linkedin.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}