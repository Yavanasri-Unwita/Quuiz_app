import 'package:flutter/material.dart';
import 'package:flutter_quiz/quizpage.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor:  const Color.fromARGB(255, 8, 79, 112),
          leading: Icon(Icons.account_circle_sharp,color: Colors.white,size: 35,),
          title: Text("Home",style: TextStyle(
            color: Colors.white,
            fontSize: 23,fontWeight: FontWeight.bold),),
            actions: [Icon(Icons.settings,color: Colors.white,size: 35)],
        centerTitle: true,),
        body: Center(
          child: Column(
            children: [
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrfPQfqIGCycQPDn8Y3w_9oB_c7btBx5KP9Q&s",
              width: 300,height: 300,),
              Padding(
                padding: const EdgeInsets.only(left:80.0,right: 80.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 8, 79, 112),
                     shadowColor: const Color.fromARGB(255, 41, 147, 205),
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),),
                  ),
                  
                  onPressed: (){
                    setState(() {
                      Navigator.push(
                      context,
                       MaterialPageRoute(builder: (context)=> QuizApp()));
                    });
                    
                  }, child: Text("Start",style:TextStyle(color: Colors.white,
                            fontSize: 23,fontWeight: FontWeight.bold))),
              )
            ],
          ))),
    );
    
  }
}

















// // appBar: AppBar(
// //           leading: Icon(Icons.navigate_before),
// //           backgroundColor: const Color.fromARGB(255, 64, 142, 205),
// //           title: Text(
// //             "Quiz App",
// //             style: TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
// //           ),
// //           centerTitle: true,
// //         ),
        
// //         body: 
// //         Column(
// //           children: [
// //             SizedBox(height: 50),
          
// //         Center(
// //           child: Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: Container(
// //               width: 500,
// //               height: 300,
// //               color: const Color.fromARGB(255, 188, 211, 229),
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.start,
// //                 crossAxisAlignment: CrossAxisAlignment.center,
// //                 children: [
// //                   Text("question 1"),
// //                   SizedBox(height: 30),
// //                   Column(
// //                     children: [
// //                       ElevatedButton(style: ElevatedButton.styleFrom(
// //                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
// //                         backgroundColor: Colors.lightBlue,
                        
// //                       ),
// //                       onPressed: () {}, 
// //                       child: Text("answer1")),
// //                       SizedBox(height: 10),
            
// //                       ElevatedButton(style: ElevatedButton.styleFrom(
// //                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
// //                         backgroundColor: Colors.lightBlue,
                      
// //                       ),
// //                       onPressed: () {}, 
// //                       child: Text("answer2")),
// //                       SizedBox(height: 10),
            
// //                       ElevatedButton(style: ElevatedButton.styleFrom(
// //                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
// //                         backgroundColor: Colors.lightBlue
// //                       ),
// //                       onPressed: () {}, 
// //                       child: Text("answer3")),
// //                       SizedBox(height: 10),
            
// //                       ElevatedButton(style: ElevatedButton.styleFrom(
// //                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
// //                         backgroundColor: Colors.lightBlue
// //                       ),
// //                       onPressed: () {},  
// //                       child: Text("answer4")),
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ),
// //         ],
// //         ),
// // Padding(
// //                     padding: const EdgeInsets.all(8.0),
// //                     child: SizedBox(
// //                       height: 45,
// //                       width: MediaQuery.of(context).size.width,
// //                       child: ElevatedButton(
// //                         style: ElevatedButton.styleFrom(
// //                           backgroundColor: const Color.fromARGB(255, 111, 179, 34),
// //                         shadowColor: Colors.amber,
// //                         shape:RoundedRectangleBorder(
// //                           borderRadius:BorderRadius.circular(10)
// //                           )
// //                         ),
// //                         onPressed: (){
                          
// //                         }, 
// //                         child: Text("Register",
// //                         style: TextStyle(color: Colors.black),)),
// //                     ),
// //                   ),
                    




















