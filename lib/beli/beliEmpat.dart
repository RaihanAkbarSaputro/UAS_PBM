        import 'package:flutter/material.dart';
        import 'package:rflutter_alert/rflutter_alert.dart';
        import 'package:uts/mainPage.dart';
    
  
    class BeliEmpat extends StatefulWidget {
     const BeliEmpat({super.key});

      @override
      _FormState createState() => _FormState();
    }
    
    class _FormState extends State<BeliEmpat> {

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
                  Image.network('https://s3-alpha-sig.figma.com/img/ac0d/e08d/fe15404719af4fc5358c9f64eb09ac5c?Expires=1673827200&Signature=WYnCAkkSdWzbjQy4BvY2FViuSTrbCe9CA591y0FAQ9K3YcrpxKObyGNPsAqNgNt1LkVeQJOxh~wct8ok3AZdnR-M6JGC5CLZpLVsQstm2-qJgNlQW3CRkIowLKG7h3gNXLhEgLTkp7uuKkgl5Qq639NUl3AIhw-WFIMF62VMw1ywQmwItpgsE27~4Ytpk66N3qxEmPq85ShwltC1wCK~OafqzzJJ6Ptjys95wwsnMUPXhtODm2-GNc~JpBIyJA7G-dpmxqlZHJjitWnFRaz1QkN03q80VacknQyZ8OoWm8CP4tcbMBXTDBEDlwpyoBB0KFD4sc-oYscHDrMM1vaxeQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4', width: 150, height: 150,),
                  const SizedBox(height: 10), 
                  const Text('Isi Ulang', textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                  const SizedBox(height: 10), 
                    const Text('Rp9.000',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.red)),
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
    