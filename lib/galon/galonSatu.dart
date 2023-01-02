import 'package:flutter/material.dart';
import 'package:uts/mainPage.dart';
import 'package:uts/beli/beli.dart';


class routerSatu extends StatelessWidget {
  const routerSatu({super.key});

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
              Container(
                height: size.width - 30,
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Image.network("https://s3-alpha-sig.figma.com/img/a2ac/f1fe/459991b0dc3e80c1de7da56e40b64bb2?Expires=1673827200&Signature=L1OCrKPkIQXMmLOSHviSfZormVO6wOEpuudSR2bzTnkYNC~sT~dB4oRcMJKOJGtfkdbwF5mUu-sW~K5hs9~Iqq3IWto-RzGqqfMFWuNrC6We0dboASyn7ij3~EWIUXpZjnurQPXuvAP91k9oMA~C1KlkndbNlmeUze9eh9DtaL1LpVIeERkG3j7RqmzPn72R5oNWxtEpAkQEgJBzB3faf0I1q9aqRY8UZ4EwJO6hMbdODkqXUZ-mPGpMcAtY5zB96iSAPKCM0v0vB0Aw~cB1NQja1Rd2ExuT~w5UHjkrDNAHKf7U67TbshpPNmwRGEZj3wwJ-BhxZv9~SRcTD0yhCg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
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
                              text: "Vit Galon (16 L)",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(height: 10,),  
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "14.000",
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
                            onPressed: () {Navigator.push(context,MaterialPageRoute(builder: ((context) => const Beli())));
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
