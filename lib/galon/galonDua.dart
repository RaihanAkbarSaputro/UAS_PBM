import 'package:flutter/material.dart';
import 'package:uts/beli/beliDua.dart';



class RouterDua extends StatelessWidget {
  const RouterDua({super.key});

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
                          child: Image.network("https://s3-alpha-sig.figma.com/img/1ac2/12a8/d8620c84675032641044f06d990a7b0f?Expires=1673827200&Signature=Z~2Hwszsyzvio~y5Acz~9a2hrzSl1UhxT-fXbdvKRJoXn8y3fhAxCVAFJn1gKLFgXWrMEmfSItT97WnDm6SlTJi6l-PiC2wEUMHhNxrmhs6GUHqZBOF2Z-XvnyL6t~rsQ-HniC1vAKDuGCrI4xqbZ9Z4sPVM0uVJXdZvadxY5-TbRz1p59i~gETHYYKmDmC8Rrz~D~496sTl52GsLrNNZTGLA3e8mxSEaUSBSy-EKuEwy0stQbYI7fVgKnuZA9jyQ5FAGsrTCYQNRd3SFlhBIsgnjCfs706X3k6To7ozMcDVy5sLdgvggXby9Mzwb1koFDdOYFCP9~17Fm7gVB~hfQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
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
                              text: "Aqua Galon (16L)",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(height: 5,),  
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "16.000",
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
                            onPressed: () {Navigator.push(context,MaterialPageRoute(builder: ((context) => const BeliDua())));
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
