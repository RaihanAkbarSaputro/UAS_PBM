        import 'package:flutter/material.dart';
        import 'package:rflutter_alert/rflutter_alert.dart';
        import 'package:uts/mainPage.dart';
    
  
    class BeliDua extends StatefulWidget {
     const BeliDua({super.key});

      @override
      _FormState createState() => _FormState();
    }
    
    class _FormState extends State<BeliDua> {

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
                  Image.network('https://s3-alpha-sig.figma.com/img/1ac2/12a8/d8620c84675032641044f06d990a7b0f?Expires=1673827200&Signature=Z~2Hwszsyzvio~y5Acz~9a2hrzSl1UhxT-fXbdvKRJoXn8y3fhAxCVAFJn1gKLFgXWrMEmfSItT97WnDm6SlTJi6l-PiC2wEUMHhNxrmhs6GUHqZBOF2Z-XvnyL6t~rsQ-HniC1vAKDuGCrI4xqbZ9Z4sPVM0uVJXdZvadxY5-TbRz1p59i~gETHYYKmDmC8Rrz~D~496sTl52GsLrNNZTGLA3e8mxSEaUSBSy-EKuEwy0stQbYI7fVgKnuZA9jyQ5FAGsrTCYQNRd3SFlhBIsgnjCfs706X3k6To7ozMcDVy5sLdgvggXby9Mzwb1koFDdOYFCP9~17Fm7gVB~hfQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4', width: 150, height: 150,),
                  const SizedBox(height: 10), 
                  const Text('Aqua Galon (16)', textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

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
    