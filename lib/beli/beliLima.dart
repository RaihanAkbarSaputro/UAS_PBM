        import 'package:flutter/material.dart';
        import 'package:rflutter_alert/rflutter_alert.dart';
        import 'package:uts/mainPage.dart';
    
  
    class BeliLima extends StatefulWidget {
     const BeliLima({super.key});

      @override
      _FormState createState() => _FormState();
    }
    
    class _FormState extends State<BeliLima> {

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
                  Image.network('https://s3-alpha-sig.figma.com/img/fb59/c264/685cc891b5bfa55fe6dae1bc6804cff6?Expires=1673827200&Signature=aM2bEEw~vMaJOWPgl-Xqe~e5f~MqLJ7jyKVlKfhy-JcfNqxQjfVzHMupq~w2mcbpwOvLfKQEd2ItTJC8S-8jfE9xSTePt2-7gJ1WkuJNjI56qXq1nv-rmrCtBKxIc6N1eJKZ0N5e2VOsYKecS-cCVLAPS5jeAIgLXXFDyRTLfwl~Y52QBP8kmdavimWSQSLWT0iqIDSMSyUviGs6162NlaPeL3jw8t9eklzNp680mpL~G-TVEA8PRE-x-lqQlguVgIK98kMPVaDfuoE8z0cSTj1xL4siK~eruoFT1Z2MkO2bUrPLulIuyXKI25KibGTkR6FvagG3wdwyVAn8dbxvNA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4', width: 150, height: 150,),
                  const SizedBox(height: 10), 
                  const Text('Vit Gelas 1 dus', textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                  const SizedBox(height: 10), 
                    const Text('Rp22.000',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.red)),
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
    