import 'package:flutter/material.dart';

class bmiScreen extends StatelessWidget {

final bool ismale;
final int age;
final double result;

bmiScreen({
  required this.ismale,
  required this.age,
  required this.result,

});




String classification='Normal';


  @override
  Widget build(BuildContext context)
  {
    double bmi=double.parse(result.toStringAsFixed(1)) ;

    if(bmi<16)
    {
      classification='Severe Thinness ';
    }
    else if(bmi>=16&&bmi<17)
    {classification='Moderate Thinness';}
    else if(bmi>=17&&bmi<=18.5)
    {classification='Normal';}
    else if(bmi>25&&bmi<30)
    {classification='Overweight';}
    else if(bmi>=30&&bmi<35)
    {classification='Obese Class |';}
    else if(bmi>=35&&bmi<=40)
    {classification='Obese Class ||';}
    else if(bmi>40)
    {classification='Obese Class |||';}


    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
        backgroundColor: Colors.black26,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                'maged',
                style: TextStyle(
                  color: Colors.deepOrange[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              ],


            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.cyan[900],
        width: double.infinity,
        height: double.infinity,

        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment:CrossAxisAlignment.start ,

            children: [
              Container(
                color: Colors.blueGrey,

                child: Text(
                  'BMI introduction:',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                'BMI is a measurement of a person\'s leanness or corpulence based on their height and weight, and is intended to quantify tissue mass. It is widely used as a general indicator of whether a person has a healthy body weight for their height. Specifically, the value obtained from the calculation of BMI is used to categorize whether a person is underweight, normal weight, overweight, or obese depending on what range the value falls between. These ranges of BMI vary based on factors such as region and age, and are sometimes further divided into subcategories such as severely underweight or very severely obese. Being overweight or underweight can have significant health effects, so while BMI is an imperfect measure of healthy body weight, it is a useful indicator of whether any additional testing or action is required. Refer to the table below to see the different categories based on BMI that are used by the calculator.\n Healthy BMI range: 18.5 kg/m2 - 25 kg/m2.',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,

                ),
              ),
              SizedBox(height: 10,),
              Container(
                color: Colors.blueGrey,

                child: Text(
                  'your body data :',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                '-gender is ${ismale?'male':'female'}',
              style: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                '-age is $age years old',
              style: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Row(
                children: [
                  Text(
                    '*BMI is ${(bmi*10)%10==0?bmi.round():bmi} kg/m2',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Text(
                    '($classification)',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
              ),

              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,

                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              /*Row(
                children: [
                  Text(
                    '   -thank you to use my application.',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),*/
              // SizedBox(
              //   height: 15.0,
              // ),
             SizedBox(height: 20,),
              Expanded(
                child: Center(
                  child: Container(
                    //alignment: Alignment.centerRight
                    height: 28.0,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'The application is developed by @Maged Zarif',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      shape:BoxShape.rectangle,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
