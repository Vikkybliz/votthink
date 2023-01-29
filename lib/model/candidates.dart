import 'package:flutter/cupertino.dart';

class Candidates {
  String name;
  String picUrl;
  String bio;
  String manifesto;
  Candidates(
      {required this.name,
      required this.picUrl,
      required this.bio,
      required this.manifesto});
}

List<Candidates> candidates = [
  Candidates(
      name: "Rachael Green",
      picUrl: "assets/rachael.jpeg",
      bio:
          "Rachel is a senior at her high school and has been involved in a variety of extracurricular activities, including student government and the debate team. She is a dedicated student and is passionate about making positive changes in her school community.",
      manifesto: ''' 
Increase transparency in student government decision-making
Work towards making the school more environmentally friendly
Improve communication between students and teachers
Promote a more inclusive and diverse school community '''),
  Candidates(
      name: "Michael Scott",
      picUrl: "assets/michael.jpeg",
      bio:
          "Michael is a junior who has a strong track record of leadership and community service. He is an active member of the school's debate team and has organized several successful charity events.",
      manifesto: ''' 
Improve school security measures
Increase funding for extra-curricular activities
Encourage student-led projects
Bridge the gap between students and administration
 '''),
  Candidates(
      name: "Jenna Marbles",
      picUrl: "assets/jenna.jpeg",
      bio:
          "Jenna is a sophomore who has a strong passion for music and the arts. She is an active member of the school's choir and has organized several successful charity events.",
      manifesto: ''' 
Increase funding for the arts
Create a school-wide recycling program
Increase opportunities for student involvement
Improve school spirit
 '''),
  Candidates(
      name: "John Doe",
      picUrl: "assets/john.jpeg",
      bio:
          "John is a senior who has a strong background in athletics. He is the captain of the school's football team and has organized several successful charity events.",
      manifesto: ''' 
Increase funding for sports teams
Improve school facilities
Encourage student involvement in school activities
Promote school spirit
 '''),
  Candidates(
      name: "Jane Smith",
      picUrl: "assets/jane.jpeg",
      bio:
          "Jane is a junior who is passionate about social justice and community service. She is an active member of the school's volunteer club and has organized several successful charity events.",
      manifesto: ''' 
Increase funding for community service programs
Encourage student involvement in school activities
Promote school spirit
Create a school-wide recycling program
 '''),
  Candidates(
      name: "Jack Johnson",
      picUrl: "assets/jack.jpeg",
      bio:
          "Jack is a senior who has a strong background in technology. He is an active member of the school's robotics team and has organized several successful charity events.",
      manifesto: ''' 
Increase funding for technology programs
Improve school facilities
Encourage student involvement in school activities
Promote school spirit
 '''),
];
