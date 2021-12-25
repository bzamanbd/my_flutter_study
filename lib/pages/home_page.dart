import 'package:flutter/material.dart';
import '/providers/homepage_provider.dart';
import 'package:provider/provider.dart';
class HomePage extends StatelessWidget {
  final String title;
  const HomePage({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width/10,
              vertical: size.height/30,
            ),
            child: ChangeNotifierProvider<HomePageProvider>(
              create: (context)=>HomePageProvider(),
              child: Consumer<HomePageProvider>(
                builder: (context,provider,child){
                  return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      provider.eligibleMessage.toString(),style: TextStyle(
                        color: (provider.isEligible==true)? Colors.green : Colors.red,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height: size.height / 30,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (val){
                        provider.eligibilityChecker(int.parse(val));
                      },
                    )
                  ],
                );
                }
              ),
            ),
          ),
        ),
      ),
    );
  }
}