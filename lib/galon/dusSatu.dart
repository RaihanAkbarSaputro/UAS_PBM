import 'package:flutter/material.dart';
import 'package:uts/beli/beliLima.dart';




class RouterLima extends StatelessWidget {
  const RouterLima({super.key});

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
                          child: Image.network("https://s3-alpha-sig.figma.com/img/fb59/c264/685cc891b5bfa55fe6dae1bc6804cff6?Expires=1673827200&Signature=aM2bEEw~vMaJOWPgl-Xqe~e5f~MqLJ7jyKVlKfhy-JcfNqxQjfVzHMupq~w2mcbpwOvLfKQEd2ItTJC8S-8jfE9xSTePt2-7gJ1WkuJNjI56qXq1nv-rmrCtBKxIc6N1eJKZ0N5e2VOsYKecS-cCVLAPS5jeAIgLXXFDyRTLfwl~Y52QBP8kmdavimWSQSLWT0iqIDSMSyUviGs6162NlaPeL3jw8t9eklzNp680mpL~G-TVEA8PRE-x-lqQlguVgIK98kMPVaDfuoE8z0cSTj1xL4siK~eruoFT1Z2MkO2bUrPLulIuyXKI25KibGTkR6FvagG3wdwyVAn8dbxvNA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
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
                              text: "Vit Gelas 1 dus",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(height: 5,),  
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "Rp22.000",
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
                            onPressed: () {Navigator.push(context,MaterialPageRoute(builder: ((context) => const BeliLima())));
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
