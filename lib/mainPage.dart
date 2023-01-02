import 'package:flutter/material.dart';
import 'package:uts/login_page.dart';
import 'package:uts/router/galonDua.dart';
import 'package:uts/router/galonEmpat.dart';
import 'package:uts/router/dusDua.dart';
import 'package:uts/router/dusSatu.dart';
import 'package:uts/router/galonSatu.dart';
import 'package:uts/router/galonTiga.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<MainPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        actions: [
  PopupMenuButton(
    icon: Icon(Icons.menu), 
    onSelected: (value){
      Navigator.push(context,MaterialPageRoute(builder: ((context) => MyApp())));
    },
    color: Color.fromARGB(255, 255, 255, 255),
    itemBuilder: (context) => [
     PopupMenuItem(
      child: Row(
        children: [
          Icon(Icons.logout,color: Colors.red,),
            Text("Logout",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),value: 1,
        ),
      ],
      ),
    ],
        
        
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text("TOKO DEPOT AIR GALON"),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        // crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){ Navigator.push(context,MaterialPageRoute(builder: ((context) => const routerSatu())));},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                    'https://s3-alpha-sig.figma.com/img/a2ac/f1fe/459991b0dc3e80c1de7da56e40b64bb2?Expires=1673827200&Signature=L1OCrKPkIQXMmLOSHviSfZormVO6wOEpuudSR2bzTnkYNC~sT~dB4oRcMJKOJGtfkdbwF5mUu-sW~K5hs9~Iqq3IWto-RzGqqfMFWuNrC6We0dboASyn7ij3~EWIUXpZjnurQPXuvAP91k9oMA~C1KlkndbNlmeUze9eh9DtaL1LpVIeERkG3j7RqmzPn72R5oNWxtEpAkQEgJBzB3faf0I1q9aqRY8UZ4EwJO6hMbdODkqXUZ-mPGpMcAtY5zB96iSAPKCM0v0vB0Aw~cB1NQja1Rd2ExuT~w5UHjkrDNAHKf7U67TbshpPNmwRGEZj3wwJ-BhxZv9~SRcTD0yhCg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4', height: 100, width: 100,),
                    const Text("VIT Galon", style: TextStyle(fontWeight: FontWeight.bold,), textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
          ),
          
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){ Navigator.push(context,MaterialPageRoute(builder: ((context) => const RouterDua())));},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                    'https://s3-alpha-sig.figma.com/img/1ac2/12a8/d8620c84675032641044f06d990a7b0f?Expires=1673827200&Signature=Z~2Hwszsyzvio~y5Acz~9a2hrzSl1UhxT-fXbdvKRJoXn8y3fhAxCVAFJn1gKLFgXWrMEmfSItT97WnDm6SlTJi6l-PiC2wEUMHhNxrmhs6GUHqZBOF2Z-XvnyL6t~rsQ-HniC1vAKDuGCrI4xqbZ9Z4sPVM0uVJXdZvadxY5-TbRz1p59i~gETHYYKmDmC8Rrz~D~496sTl52GsLrNNZTGLA3e8mxSEaUSBSy-EKuEwy0stQbYI7fVgKnuZA9jyQ5FAGsrTCYQNRd3SFlhBIsgnjCfs706X3k6To7ozMcDVy5sLdgvggXby9Mzwb1koFDdOYFCP9~17Fm7gVB~hfQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4', height: 100, width: 100,),
                    const Text("AQUA Galon",style: TextStyle(fontWeight: FontWeight.bold,), textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
          ),

          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){ Navigator.push(context,MaterialPageRoute(builder: ((context) => const RouterTiga())));},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                    'https://s3-alpha-sig.figma.com/img/9883/4893/8761e57accac1adb2febe6f0681cb433?Expires=1673827200&Signature=kfoQ05x5FnQR-0I~d9WDN9Rb5yCs~Vaqs23i4aEhKENvj4Fs2ZRVZ75ExizndxbH2QTkmWWxgzPU1-Jca5IDyVf2O5grQ1v0Oxwr9-wu4byb76DJJyjg4~JjJaZbI7W8WV4LoAm3uozEaIHhOajmdkAJZ0wkUG57x5EzAhq~7NsxBtzsgxcEyXR5qtr74PUSKTGKvTpm0I~OqhR6xgo2Jik1YdIO8g9Xvkda~Yg5XbfrndIsMiZy8qnInHkf3qyO6hyVp7SOBJX9LG-xLBQRt44rkevvZsP0fBcR2Yr3gG12I~E7fHSGPN7SCzA9ed1msy-IuI011mD-8ngsuuSnPw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4', height: 100, width: 100,),
                    const Text("Le Mineral", style: TextStyle(fontWeight: FontWeight.bold,), textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
          ),

           Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){ Navigator.push(context,MaterialPageRoute(builder: ((context) => const RouterEmpat())));},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                    'https://s3-alpha-sig.figma.com/img/ac0d/e08d/fe15404719af4fc5358c9f64eb09ac5c?Expires=1673827200&Signature=WYnCAkkSdWzbjQy4BvY2FViuSTrbCe9CA591y0FAQ9K3YcrpxKObyGNPsAqNgNt1LkVeQJOxh~wct8ok3AZdnR-M6JGC5CLZpLVsQstm2-qJgNlQW3CRkIowLKG7h3gNXLhEgLTkp7uuKkgl5Qq639NUl3AIhw-WFIMF62VMw1ywQmwItpgsE27~4Ytpk66N3qxEmPq85ShwltC1wCK~OafqzzJJ6Ptjys95wwsnMUPXhtODm2-GNc~JpBIyJA7G-dpmxqlZHJjitWnFRaz1QkN03q80VacknQyZ8OoWm8CP4tcbMBXTDBEDlwpyoBB0KFD4sc-oYscHDrMM1vaxeQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4', height: 100, width: 100,),
                    const Text("Isi Ulang", style: TextStyle(fontWeight: FontWeight.bold,), textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
          ),
          
           Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){ Navigator.push(context,MaterialPageRoute(builder: ((context) => const RouterLima())));},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                    'https://s3-alpha-sig.figma.com/img/fb59/c264/685cc891b5bfa55fe6dae1bc6804cff6?Expires=1673827200&Signature=aM2bEEw~vMaJOWPgl-Xqe~e5f~MqLJ7jyKVlKfhy-JcfNqxQjfVzHMupq~w2mcbpwOvLfKQEd2ItTJC8S-8jfE9xSTePt2-7gJ1WkuJNjI56qXq1nv-rmrCtBKxIc6N1eJKZ0N5e2VOsYKecS-cCVLAPS5jeAIgLXXFDyRTLfwl~Y52QBP8kmdavimWSQSLWT0iqIDSMSyUviGs6162NlaPeL3jw8t9eklzNp680mpL~G-TVEA8PRE-x-lqQlguVgIK98kMPVaDfuoE8z0cSTj1xL4siK~eruoFT1Z2MkO2bUrPLulIuyXKI25KibGTkR6FvagG3wdwyVAn8dbxvNA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4', height: 100, width: 100,),
                    const Text("Vit Gelas 1 dus", style: TextStyle(fontWeight: FontWeight.bold,), textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
          ),
          
         Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){ Navigator.push(context,MaterialPageRoute(builder: ((context) => const RouterEnam())));},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                    'https://s3-alpha-sig.figma.com/img/a7d4/9dc7/6ac8368bad7a26cbdcd51a141a26f80d?Expires=1673827200&Signature=f1WxvWf3bOorCCmCLQXtWkEg9243eC9QRg8T0Zz~roCRiiGmJRiSaqdEyuZVQXHhShnNWLz1Sevq67CGtusKqqf6lfe~tB1xK4LLTZfZOYoO5VD5N3suTC-teEHyesjGLbP~o5CW1uXLRjvMoRr2iHFnWGGfgZYw3nsAfVwerOB46639ihdKrY9C1yN7m0YuMhxasIyu7FaW7HNDZfEfRHM9K0jM2HPK05bJoKQfqggSA4vg0hphDdrw7v3LFITZEXLIxe5x6LtHa4SHXeviwdh0Sik~eoG4-IqaAWPytya8IbNFV02ruFsIyb9Lvff0l4hHrVlkaICCwnSSTkd9GA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4', height: 100, width: 100,),
                    const Text("Aqua Gelas 1 dus", style: TextStyle(fontWeight: FontWeight.bold,), textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
  