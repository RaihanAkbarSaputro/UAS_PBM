import 'package:flutter/material.dart';
import '../beli/beliEmpat.dart';



class RouterEmpat extends StatelessWidget {
  const RouterEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset("assets/images/back.png", width: 20,height: 20, color: Colors.white,),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: size.width - 30,
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Image.network("https://s3-alpha-sig.figma.com/img/ac0d/e08d/fe15404719af4fc5358c9f64eb09ac5c?Expires=1673827200&Signature=WYnCAkkSdWzbjQy4BvY2FViuSTrbCe9CA591y0FAQ9K3YcrpxKObyGNPsAqNgNt1LkVeQJOxh~wct8ok3AZdnR-M6JGC5CLZpLVsQstm2-qJgNlQW3CRkIowLKG7h3gNXLhEgLTkp7uuKkgl5Qq639NUl3AIhw-WFIMF62VMw1ywQmwItpgsE27~4Ytpk66N3qxEmPq85ShwltC1wCK~OafqzzJJ6Ptjys95wwsnMUPXhtODm2-GNc~JpBIyJA7G-dpmxqlZHJjitWnFRaz1QkN03q80VacknQyZ8OoWm8CP4tcbMBXTDBEDlwpyoBB0KFD4sc-oYscHDrMM1vaxeQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                        )),
                  ],
                ),
              ),
              Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "Isi Ulang",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(height: 5,),  
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "Rp9.000",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,)),
                        ),
                        
                      ],
                    ),
                  )
              ),
              const SizedBox(
                       height: 15.0,),
                           Container(
                            height: 50,
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ElevatedButton(child: const Text('Beli', style: TextStyle(fontWeight: FontWeight.bold),),
                            onPressed: () {Navigator.push(context,MaterialPageRoute(builder: ((context) => const BeliEmpat())));
                  },
                )
            ),
            ],
          ),
        ),
      ),
    );
  }
}
