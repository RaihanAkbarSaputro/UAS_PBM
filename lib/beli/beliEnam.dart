        import 'package:flutter/material.dart';
        import 'package:rflutter_alert/rflutter_alert.dart';
        import 'package:uts/mainPage.dart';
    
  
    class BeliEnam extends StatefulWidget {
     const BeliEnam({super.key});

      @override
      _FormState createState() => _FormState();
    }
    
    class _FormState extends State<BeliEnam> {

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
                  Image.network('https://s3-alpha-sig.figma.com/img/a7d4/9dc7/6ac8368bad7a26cbdcd51a141a26f80d?Expires=1673827200&Signature=f1WxvWf3bOorCCmCLQXtWkEg9243eC9QRg8T0Zz~roCRiiGmJRiSaqdEyuZVQXHhShnNWLz1Sevq67CGtusKqqf6lfe~tB1xK4LLTZfZOYoO5VD5N3suTC-teEHyesjGLbP~o5CW1uXLRjvMoRr2iHFnWGGfgZYw3nsAfVwerOB46639ihdKrY9C1yN7m0YuMhxasIyu7FaW7HNDZfEfRHM9K0jM2HPK05bJoKQfqggSA4vg0hphDdrw7v3LFITZEXLIxe5x6LtHa4SHXeviwdh0Sik~eoG4-IqaAWPytya8IbNFV02ruFsIyb9Lvff0l4hHrVlkaICCwnSSTkd9GA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4', width: 150, height: 150,),
                  const SizedBox(height: 10), 
                  const Text('Aqua Gelas 1 dus', textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                  const SizedBox(height: 10), 
                    const Text('Rp32.000',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.red)),

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
    