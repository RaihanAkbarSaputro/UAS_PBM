import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:uts/mainPage.dart';
    
  
    class Beli extends StatefulWidget {
  const Beli({super.key});

      @override
      _FormState createState() => _FormState();
    }
    
    class _FormState extends State<Beli> {

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
                  Image.network('https://s3-alpha-sig.figma.com/img/a2ac/f1fe/459991b0dc3e80c1de7da56e40b64bb2?Expires=1673827200&Signature=L1OCrKPkIQXMmLOSHviSfZormVO6wOEpuudSR2bzTnkYNC~sT~dB4oRcMJKOJGtfkdbwF5mUu-sW~K5hs9~Iqq3IWto-RzGqqfMFWuNrC6We0dboASyn7ij3~EWIUXpZjnurQPXuvAP91k9oMA~C1KlkndbNlmeUze9eh9DtaL1LpVIeERkG3j7RqmzPn72R5oNWxtEpAkQEgJBzB3faf0I1q9aqRY8UZ4EwJO6hMbdODkqXUZ-mPGpMcAtY5zB96iSAPKCM0v0vB0Aw~cB1NQja1Rd2ExuT~w5UHjkrDNAHKf7U67TbshpPNmwRGEZj3wwJ-BhxZv9~SRcTD0yhCg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4', width: 150, height: 150,),
                  const SizedBox(height: 10), 
                  const Text('Vit Galon (16 L)', textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                  const SizedBox(height: 10), 
                    const Text('Rp14.000',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.red)),
                
                  const SizedBox(height: 1), 
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Alamat',
                        hintText: 'Ketik alamat lengkap anda'
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
    