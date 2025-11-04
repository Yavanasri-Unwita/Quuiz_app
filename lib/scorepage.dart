import 'package:flutter/material.dart';
import 'package:flutter_quiz/main.dart';



class ScoreApp extends StatefulWidget {
   final int correct;
   final int wrong;
   final int total;
  const ScoreApp({super.key, required this.correct, required this.wrong, required this.total});

  @override
  State<ScoreApp> createState() => _ScoreAppState();
}

class _ScoreAppState extends State<ScoreApp> {
score_filter() {
    if (widget.correct >= widget.total / 2) {
      return Column(
        children: [
          Text(
            "Great job!",
            style: TextStyle(
              color: Colors.green,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic
            ),
          ),
          SizedBox(height: 10),
          Image.network(
            "https://cdn-icons-png.flaticon.com/128/10851/10851309.png", 
            width: 100,
            height: 100,
          ),
          SizedBox(height: 10),
          Text(
            "You're doing amazing! Keep it up ",
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
        ],
      );
    } else {
      return Column(
        children: [
          const Text(
            "Keep trying!",
            style: TextStyle(
              color: Colors.redAccent,
              fontSize: 22,
              fontWeight: FontWeight.bold,
               fontStyle: FontStyle.italic
            ),
          ),
          SizedBox(height: 10),
          Image.network(
            "https://cdn-icons-png.flaticon.com/128/11202/11202615.png", 
            width: 100,
            height: 100,
          ),
          SizedBox(height: 10),
          Text(
            "Don’t give up — you’ll get it next time!",
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          
        ],
      );
    }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: 
      Center(
        child: Column(
          children: [
             SizedBox(height: 30),
            Text("Congratulations!!!",style: TextStyle(  color: Colors.black,
            fontSize: 23,fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            // Stack(
              // alignment: AlignmentGeometry.center,
              // children: [
                Image.network("https://media.istockphoto.com/id/655254230/vector/trophy-cup-icon.jpg?s=612x612&w=0&k=20&c=ScSSWWysiBHe85N0deb42VG_y5it-GTBDfMP36UiuBI=",
                width: 200,height: 200,),
                // Positioned(
                //   left: 85.0,
                //   top: 75.0,
                  // child: Container( 
                  //   child: Text( "$correct"),
                    
                  
                    // )),
                    
              // ],
              // ),
              SizedBox(height: 40),
                  Text("Your score is ${widget.correct} out of ${widget.total}",style: TextStyle(color: Colors.black87,
            fontSize: 23),),
            SizedBox(height: 20),
            score_filter(),
            SizedBox(height: 15),
            Padding(
                padding: const EdgeInsets.only(left:80.0,right: 80.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 8, 79, 112),
                     shadowColor: const Color.fromARGB(255, 41, 147, 205),
                    
                    shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),),
                  ),
                  
                  onPressed: (){
                    setState(() {
                      Navigator.push(
                      context,
                       MaterialPageRoute(builder: (context)=> MyApp()));
                    });
                    
                  }, child: Text("Retry",style:TextStyle(color: Colors.white,
                            fontSize: 23,fontWeight: FontWeight.bold))),
              )
          ],
        ),
      )
      
    );
  }
}
