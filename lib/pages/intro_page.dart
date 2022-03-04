import 'package:flutter/material.dart';
import 'package:pdpui4/pages/home_page.dart';
class IntroPage extends StatefulWidget {
  static final String id="intro_page";
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  PageController? _pageController;
  int currentIndex=0;
  @override
  void initState() {
    // TODO: implement initState
    _pageController=PageController(
      initialPage: 0
    );
    super.initState();
  }
  @override
  void dispose() {
    _pageController?.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
            child: Padding(
              padding: EdgeInsets.only(right: 8,left: 8),
              child: Text('skip',style: TextStyle(color: Colors.green,fontSize: 16),),
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (int page){
              setState(() {
                currentIndex=page;
              });
            },
            controller: _pageController,
            children: [
              makePage(
                image: 'assets/images/im3.png',
                title: "dgkag;a",
                content: 'daklgj;'
              )
            ],
          )
        ],
      )
    );
  }
  Widget makePage({image,title,content}){
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(image),
              )
            ],
          )
        ],
      ),

    );
  }
}
