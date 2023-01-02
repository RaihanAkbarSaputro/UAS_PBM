        import 'package:flutter/material.dart';
        import 'package:rflutter_alert/rflutter_alert.dart';
        import 'package:uts/mainPage.dart';
    
  
    class BeliTiga extends StatefulWidget {
     const BeliTiga({super.key});

      @override
      _FormState createState() => _FormState();
    }
    
    class _FormState extends State<BeliTiga> {

      final name = TextEditingController();
      final alamat = TextEditingController();
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Konfirmasi"),
          ),

          body: Form(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network('https://s3-alpha-sig.figma.com/img/9883/4893/8761e57accac1adb2febe6f0681cb433?Expires=1673827200&Signature=kfoQ05x5FnQR-0I~d9WDN9Rb5yCs~Vaqs23i4aEhKENvj4Fs2ZRVZ75ExizndxbH2QTkmWWxgzPU1-Jca5IDyVf2O5grQ1v0Oxwr9-wu4byb76DJJyjg4~JjJaZbI7W8WV4LoAm3uozEaIHhOajmdkAJZ0wkUG57x5EzAhq~7NsxBtzsgxcEyXR5qtr74PUSKTGKvTpm0I~OqhR6xgo2Jik1YdIO8g9Xvkda~Yg5XbfrndIsMiZy8qnInHkf3qyO6hyVp7SOBJX9LG-xLBQRt44rkevvZsP0fBcR2Yr3gG12I~E7fHSGPN7SCzA9ed1msy-IuI011mD-8ngsuuSnPw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4', width: 150, height: 150,),
                  const SizedBox(height: 10), 
                  const Text('Le Mineral', textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                  const SizedBox(height: 10), 
                    const Text('Rp16.000',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.red)),
                  const SizedBox(height: 1), 
                  Container(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Alamat',
                          hintText: 'Ketik alamat lengkap anda'
                      ),
                    ),
                  ),

ElevatedButton(
    onPressed: () => sweatAlert(context),
    child: const Text("Bayar"),
 )

                ],
              ),
            ),
          ),
        );
      }

void sweatAlert(BuildContext context) {
  Alert(
    context: context,
    type: AlertType.success,
    title: "Pembayaran berhasil",
    desc: "Pembayaran melalui hanya melalui COD harap ditunggu",
    buttons: [
      DialogButton(
        child: const Text(
          "Selanjutnya",
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        onPressed: () {Navigator.push(context,MaterialPageRoute(builder: ((context) => const MainPage())));}
      )
    ],
  ).show();
  return;
}

    }
    