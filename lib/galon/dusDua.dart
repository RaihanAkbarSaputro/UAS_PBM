import 'package:flutter/material.dart';
import 'package:uts/beli/beliEnam.dart';




class RouterEnam extends StatelessWidget {
  const RouterEnam({super.key});

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
                          child: Image.network("https://s3-alpha-sig.figma.com/img/a7d4/9dc7/6ac8368bad7a26cbdcd51a141a26f80d?Expires=1673827200&Signature=f1WxvWf3bOorCCmCLQXtWkEg9243eC9QRg8T0Zz~roCRiiGmJRiSaqdEyuZVQXHhShnNWLz1Sevq67CGtusKqqf6lfe~tB1xK4LLTZfZOYoO5VD5N3suTC-teEHyesjGLbP~o5CW1uXLRjvMoRr2iHFnWGGfgZYw3nsAfVwerOB46639ihdKrY9C1yN7m0YuMhxasIyu7FaW7HNDZfEfRHM9K0jM2HPK05bJoKQfqggSA4vg0hphDdrw7v3LFITZEXLIxe5x6LtHa4SHXeviwdh0Sik~eoG4-IqaAWPytya8IbNFV02ruFsIyb9Lvff0l4hHrVlkaICCwnSSTkd9GA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4", height: 250, width: 300,),
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
                              text: "Aqua Gelas 1 dus",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(height: 5,),  
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "Rp32.000",
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
                            onPressed: () {Navigator.push(context,MaterialPageRoute(builder: ((context) => const BeliEnam())));
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
