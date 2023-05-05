
 import 'dart:math';

import 'package:flutter/material.dart';
import 'package:new_app/BMIscreen.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});


  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator>
{

  bool isMale=true;
  double height=163;
  double weight=64.5;
  int age=21;
  double fraction=5;

  

@override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'BMI calculator',
                style:TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ) ,
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(()
                          {
                            isMale=true;
                          }
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                            color: isMale? Colors.blueAccent:Colors.grey[900],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male_outlined,
                              size: 80,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 13.0,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                color: Colors.white,
                                  fontSize: 25.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 28.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(()
                          {
                            isMale=false;
                          });
                        },
                        child: Container(

                          decoration: BoxDecoration(
                            color: !isMale? Colors.blueAccent:Colors.grey[900],
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: BoxShadow.lerpList(null, null, 100)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female_outlined,
                              size: 80.0,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 13.0,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                color: Colors.white,
                                  fontSize: 25.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],

                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          'HEIGHT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '${height.round()}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'cm',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 27.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Slider(
                            value: height,
                            min: 70,
                            max: 220,
                            onChanged: (value)
                            {
                              setState(()
                              {
                              height=value;
                              });
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              height: 260.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(17.0),
                          child: Column(
                            children: [
                              Text(
                                'WEIGHT',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                
                                '${fraction==0?weight.round():weight.toStringAsFixed(1)}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w900,                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: ()
                                      {
                                        setState(()
                                        {
                                          if(weight>10)
                                          {
                                            weight-=1.0;
                                          }
                                        });
                                      },
                                      icon: Container(
                                        height: 54.0,
                                        width: 54.0,
                                        color: Colors.grey[600],
                                        child: Icon(
                                          Icons.remove,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                      ),),//first button weight
                                    SizedBox(width: 10.0,),
                                    IconButton(
                                      onPressed: ()
                                      {
                                        setState(()
                                        {
                                          if(weight<300)
                                          {
                                            weight+=1.0;
                                          }
                                        });
                                      },
                                      icon: Container(
                                        height: 54.0,
                                        width: 54.0,
                                        color: Colors.grey[600],
                                        child: Icon(
                                          Icons.add,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                      ),),
                                    //second button weight
                                  ],
                                ),
                              ),
                              SizedBox(height: 3,),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'fraction:',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    IconButton(
                                      onPressed: ()
                                      {
                                        setState(()
                                        {
                                          if(fraction>0)
                                          {
                                            fraction-=1;
                                            weight=weight-(0.1);
                                            print(fraction);
                                          }
                                        });
                                      },
                                      icon: CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.grey[600],
                                        child: Icon(
                                          Icons.remove,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                      ),),//first button weight

                                    IconButton(
                                      onPressed: ()
                                      {
                                        setState(()
                                        {
                                          if(fraction<9)
                                          {
                                            fraction+=1;
                                            weight=weight+(0.1);
                                            print(fraction);
                                          }
                                        });
                                      },
                                      icon: CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.grey[600],
                                        child: Icon(
                                          Icons.add,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                      ),),
                                    //second button weight
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 28,),
                    Expanded(
                      child: Container(

                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(17.0),
                          child: Column(
                            children: [
                              Text(
                                'AGE',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(
                                height: 18.0,
                              ),
                              Text(
                                '${age}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        onPressed: ()
                                        {
                                          setState(()
                                          {
                                            if(age>=2)
                                            {
                                              age--;
                                            }
                                          });
                                        },
                                        icon: Container(
                                          height: 50.0,
                                          width: 50.0,
                                          color: Colors.grey[600],
                                          child: Icon(
                                            Icons.remove,
                                            size: 30,
                                            color: Colors.white,
                                          ),
                                        ),),
                                    SizedBox(width: 10.0,),
                                    IconButton(
                                      onPressed: ()
                                      {
                                        setState(()
                                        {
                                          if(age<=120)
                                          {
                                            age++;
                                          }
                                        });
                                      },
                                      icon: Container(
                                        height: 50.0,
                                        width: 50.0,
                                        color: Colors.grey[600],
                                        child: Icon(
                                          Icons.add,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                      ),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 60.0,
              color: Colors.cyan[900],
              child: TextButton(onPressed: ()
              {
                double result=weight/pow(height/100, 2);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=>bmiScreen(
                      ismale: isMale,
                      age: age,
                      result: result,
                    ),
                ),
                );

              },
                child: Text(
                  'Calculate',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
