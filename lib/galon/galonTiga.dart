import 'package:flutter/material.dart';
import 'package:uts/beli/beliTiga.dart';



class RouterTiga extends StatelessWidget {
  const RouterTiga({super.key});

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
                          child: Image.network("https://s3-alpha-sig.figma.com/img/9883/4893/8761e57accac1adb2febe6f0681cb433?Expires=1673827200&Signature=kfoQ05x5FnQR-0I~d9WDN9Rb5yCs~Vaqs23i4aEhKENvj4Fs2ZRVZ75ExizndxbH2QTkmWWxgzPU1-Jca5IDyVf2O5grQ1v0Oxwr9-wu4byb76DJJyjg4~JjJaZbI7W8WV4LoAm3uozEaIHhOajmdkAJZ0wkUG57x5EzAhq~7NsxBtzsgxcEyXR5qtr74PUSKTGKvTpm0I~OqhR6xgo2Jik1YdIO8g9Xvkda~Yg5XbfrndIsMiZy8qnInHkf3qyO6hyVp7SOBJX9LG-xLBQRt44rkevvZsP0fBcR2Yr3gG12I~E7fHSGPN7SCzA9ed1msy-IuI011mD-8ngsuuSnPw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
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
                              text: "Le Mineral",
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
                            onPressed: () {Navigator.push(context,MaterialPageRoute(builder: ((context) => const BeliTiga())));
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
