import 'package:flutter/material.dart';
import 'package:flutter_quiz/scorepage.dart';



class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List questions = [
    {
      'question': 'Who was the first President of India?',
      'option_a': 'Dr. Rajendra Prasad',
      'option_b': 'Mahatma Gandhi',
      'option_c': 'Jawaharlal Nehru',
      'option_d': 'Sardar Vallabhbhai Patel',
      'answer': 'Dr. Rajendra Prasad',
    },
    {
      'question': 'In which year did India gain independence?',
      'option_a': '1947',
      'option_b': '1950',
      'option_c': '1945',
      'option_d': '1942 ',
      'answer': '1947',
    },
    {
      'question': 'Who is known as the Father of the Nation in India? ',
      'option_a': 'Dr. Rajendra Prasad',
      'option_b': 'Mahatma Gandhi',
      'option_c': 'Jawaharlal Nehru',
      'option_d': 'Sardar Vallabhbhai Patel',
      'answer': 'Mahatma Gandhi',
    },
    {
      'question': 'In which year did India gain independence?',
      'option_a': '1947',
      'option_b': '1950',
      'option_c': '1945',
      'option_d': '1942 ',
      'answer': '1947',
    },
    {
      'question': 'Which Mughal Emperor built the Taj Mahal?',
      'option_a': 'Akbar',
      'option_b': 'Jahangir',
      'option_c': 'Shah Jahan',
      'option_d': 'Aurangzeb',
      'answer': 'Shah Jahan',
    },
  ];
  int currentIndex = 0;
  int wrongAnswer = 0;
  int correctAnswer = 0;
  
  String? selectedOption;

  

  @override
  Widget build(BuildContext context) {
    var q=questions[currentIndex];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.navigate_before,size: 25,color: Colors.white,),),
        title: Text(
          "Quizzes",
          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w100),
        ),
        foregroundColor: Colors.black,
        backgroundColor: const Color.fromARGB(255, 8, 79, 112),
        elevation: 0,
        centerTitle: false,
      ),
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text(
                q['question'],
                style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                       backgroundColor: selectedOption ==q['option_a']
                        ? Colors.blue[50]
                        : Colors.blue[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                        color: selectedOption ==q['option_a']
                            ?   const Color.fromARGB(255, 8, 79, 112)
                            : Colors.transparent,
                        width: 2,
                      ),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        
                       selectedOption = q['option_a'];

                        
                      });
                    },

                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        q['option_a'],
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selectedOption ==q['option_b']
                        ? Colors.blue[50]
                        : Colors.blue[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                        color: selectedOption ==q['option_b']
                            ?const Color.fromARGB(255, 8, 79, 112)
                            : Colors.transparent,
                        width: 2,
                      ),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        
                        selectedOption = q['option_b'];
                      });
                    },
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        q['option_b'],
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selectedOption ==q['option_c']
                        ? Colors.blue[50]
                        : Colors.blue[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                        color: selectedOption ==q['option_c']
                            ? const Color.fromARGB(255, 8, 79, 112)
                            : Colors.transparent,
                        width: 2,
                      ),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                     
                        selectedOption = q['option_c'];
                      });
                    },
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        q['option_c'],
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selectedOption ==q['option_d']
                        ? Colors.blue[50]
                        : Colors.blue[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                        color: selectedOption ==q['option_d']
                            ?const Color.fromARGB(255, 8, 79, 112)
                            : Colors.transparent,
                        width: 2,
                      ),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                       
                        selectedOption = q['option_d'];

                        
                      });
                    },
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        q['option_d'],
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedOption != null ? const Color.fromARGB(255, 11, 105, 149) : Colors.grey[300],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed:selectedOption == null? null
                               : () {
                          
                          if (selectedOption == q['answer']) {
                            correctAnswer++;
                          } else {
                            wrongAnswer++;
                          }

                          
                          if (currentIndex < questions.length - 1) {
                            setState(() {
                              currentIndex++;
                              selectedOption = null;
                            });
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ScoreApp(
                                  correct: correctAnswer,
                                  wrong: wrongAnswer,
                                  total: questions.length,
                                ),
                              ),
                            );
                          }
                        },
                      child: Icon(Icons.arrow_forward,color: Colors.black,),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
