import 'package:flutter/material.dart';
import 'package:hack3_solution/utilities/jobcard.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SwipeableCardSectionController _cardController = SwipeableCardSectionController();
    return SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            Text('Jinder'),
            FractionallySizedBox(
              widthFactor: 0.7,
              heightFactor: 0.7,
              child: Container(
                padding: EdgeInsets.all(25.0),
                child: SwipeableCardsSection(
                  cardController: _cardController,
                  context: context,
                  items: [
                    JobCard(
                      title: 'Software engineer',
                      company: 'Nintendo',
                      location: 'Redmond, WA',
                      desc: 'Ability to read other engineers code...',
                      day: '5',
                    ),
                    JobCard(
                      title: 'Software engineer',
                      company: 'Netflix',
                      location: 'Washington, DC',
                      desc: 'Ability to work with Flutter SDK',
                      day: '3',
                    ),
                    JobCard(
                      title: 'Game designer',
                      company: 'Project RED',
                      location: 'Remote',
                      desc: 'C#, Unity...',
                      day: '2',
                    ),
                    JobCard(
                      title: 'Junior Software Engineer',
                      company: 'FedEx',
                      location: 'Santa Monica, CA',
                      desc: 'Gain real-world experience working side-by-side with a team of amazing engineers...',
                      day: '6',
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: Size(150, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )
                  ),
                  child: Text('New resume', style: TextStyle(fontSize: 16.0, fontFamily: 'Helvetica', color: Colors.black),)
                ),
                ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        fixedSize: Size(150, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )
                    ),
                    child: Text('My vacancies', style: TextStyle(fontSize: 16.0, fontFamily: 'Helvetica', color: Colors.black),)
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
