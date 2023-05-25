import 'package:get/get.dart';
import 'package:graduationproject/model/news_model.dart';
class HomeScreenController extends GetxController{
  List<Map<String,String>> collegesData=[
    {
      "name":'School of Arts',
      "image":"assets/images/art.png",

    },
    {
      "name":'School of Archaeology and Tourism',
      "image":'assets/images/tou.png',
    },
    {
      "name":'School of Foreign Languages',
      "image":'assets/images/lan.png',
    },
    {
      "name":'School of International Studies',
      "image":'assets/images/inter.png',
    },
    {
      "name":'School of Arts and Design',
      "image":'assets/images/des.png',
    },
    {
      "name":'School of Sport Science',
      "image":'assets/images/spo.png',
    },
    {
      "name":'School of Law',
      "image":'assets/images/law.png',
    },
    {
      "name":'School of Educational Sciences',
      "image":'assets/images/educ.png',
    },
    {
      "name":'School of Sharia',
      "image":'assets/images/sharia2.png',
    },
    {
      "name":'School of Business',
      "image":'assets/images/bu2.png',
    },
    {
      "name":'School of Medicine',
      "image":'assets/images/mec.png',
    },
    {
      "name":'School of Rehabilitation Sciences',
      "image": 'assets/images/rena.png',
    },
    {
      "name":'School of Dentistry',
      "image":'assets/images/dest.png',
    },
    {
      "name":'School of Pharmacy',
      "image":'assets/images/phar.png',
    },
    {
      "name":'School Of Nursing',
      "image":'assets/images/ners.png',
    },
    {
      "name":'School of Information Technology',
      "image":'assets/images/itlog.png',
    },
    {
      "name":'School of Engineering',
      "image":'assets/images/eng.png',
    },
    {
      "name":'School of Agriculture',
      "image":'assets/images/ach.png',
    },
    {
      "name":'School of Science',
      "image":'assets/images/sci.png',
    },

  ];

  List<NewsDataModel> universityNews = [
     NewsDataModel(
       title: "Jordanian Universities Conclude Participation In University Expo Qatar ",
       content:  "The University Expo Qatar concluded in Doha on Monday with the participation of Jordanian public and private universities.\n\n"
           "Universities from the United Kingdom, the United States of America, Australia, Switzerland, Malaysia, Germany, Hungary, Turkey, France and the UAE, in addition to Qatar, participated in the event.\n\n"
           "The Undersecretary of the Qatari Ministry of Education, Omar Al-Nema,said that the exhibition targeted students in the ninth, tenth, eleventh and twelfth grades in order to prepare them for the future majors that universities provide. (Petra).",
       urlImage: "assets/images/junews.png",
     ),
     NewsDataModel(
         title: "Harvard University Delegation Visits JU",
         content: "A delegation from Harvard University visited the University of Jordan (UJ) on Sunday to explore opportunities for academic cooperation between the two institutions in various fields, including student and faculty exchange and research collaboration.\n\n"
              "JU President Prof.Nadhir Obeidat, highlighted during the meeting with the delegation headed by Harvard President Lawrence Bacow, the university's focus on developing programmes that prioritise student employability as well as skills,knowledge and personal characteristics that prepare graduates for success in their professional lives and enhance scientific research output.The meeting was attended by UJ Board of Trustees Chairman Prof. Adnan Badran;Vice President for Scientific Schools.\n\n"
              "Prof. Ashraf Abu Karaki; Director of the International Affairs Unit, Prof. Hadeel Yassin; and Director of the Media, Public Relations and Radio Unit, Dr. Muhammad Wasef.The delegation visited UJ library, toured its facilities,"" and met with some students at the “American Corner” and engaged in a discussion on environmental pollution, climate change and the role of youth in mitigating their effects.In addition, the delegation visited the Archaeological and Heritage museums on campus.",
     urlImage: "assets/images/Harvrd.png",
     ),
     NewsDataModel(title:"The Deanship of Scientific Research at UJ Holds a Workshop on Scientific Citations and how can a Researcher Achieve International Recognition",
         content:    "On Thursday, March 9, the Deanship of Scientific Research at the University of Jordan held a workshop on “Scientific Citations, and How Can a Researcher Achieve International Recognition?” The workshop was delivered by Prof. Ibrahim Al-Jarrah,Head of the Department of Artificial Intelligence at King Abdullah II College of Information Technology, who is ranked among the most cited researchers in his field worldwide.\n\n"
             "A group of faculty members and researchers in addition to postgraduate students from various disciplines participated in the workshop which was designed to build and enhance their research skills and capabilities.\n\n"
             "This course comes within a series of training courses held by the Deanship of Scientific Research throughout the year with the aim of developing the capabilities of faculty members and researchers in the field of scientific research.",
          urlImage:"assets/images/Res.png",
     ),
     NewsDataModel(
         title:  "Who Experts visits JU hospital Within the Patient Safety Friendly Hospital Initiative",
         content:       "A team of experts from the World Health Organization concludes its visit to the JU Hospital on Wednesday 21st March, 2022, as part of the Patient Safety Friendly Hospital Initiative.\n\n"
             "The visit, which lasted for (3) days, included tours of the most prominent departments and vital units of the hospital, during which a full survey of the hospital was conducted in addition to a review of the policies adopted for patient safety.\n\n"
             "In turn, the Director General of the hospital, Prof. Jamal Melhem, said that this visit demonstrated the extent to which the hospital applied quality requirements in terms of patient safety, public safety and infection control policies, noting that the most prominent observations that the team monitored were positive ones, pointing out that JU Hospital is The first hospital to participate in this initiative.\n\n"
             "Melhem thanked the hospital staff for their efforts that had a great impact on the development of health care services provided, stressing that the wheel of development does not stop and the hospital will continue to work to remain a leading medical entity for all health sector institutions.",

       urlImage: "assets/images/hospital.png",
     ),
     NewsDataModel(
         title: "JU President, Chile Ambassador Discuss Exchange Programmes",
         content:    "President of the University of Jordan (UJ) Prof. Nadhir Obeidat and  Ambassador of Chile Jorge Alejandro Tagle Canelo on Tuesday discussed cooperation between the university and Chilean higher education institutions.\n\n"
             "The two sides discussed faculty, researcher and student exchanges in Arabic language studies and political science.\n\n"
             "Obeidat stressed the importance of building effective strategic partnerships with stakeholders locally, regionally and globally to exchange expertise for the benefit of the university, its students and its academic staff.\n\n"
             "For his part, Canelo referred to the possibility of signing a memorandum of understanding with the University of Chile, stressing his desire to establish strong academic cooperation with Jordan.",
       urlImage:"assets/images/Chile.png",
     ),
     NewsDataModel(
         title: "Donation of Books on Japan to the University of Jordan",
         content:  "The University of Jordan (UJ) Library on Tuesday received a valuable collection of books in Japanese, English and Arabic of interest to students and scholars in various fields, such as literature, culture, history, Japanese language, as well as politics and economics,as a contribution from Japan Foundation.\n\n"
             "In his address during the handing over ceremony, UJ president Prof. Nadhir Obeidat valued the donation aims at providing researchers in Japanese affairs with valuable information, stressing the deep rooted bilateral  relations between the university and the Japanese embassy and partner institutions, based on the profound mutual relations between the two friendly countries.\n\n"
             "For his part, the Ambassador of Japan to Jordan, Jiro Okuyama, expressed gratitude for the important role played by the university in the field of teaching the Japanese language, expressing his hope that the books will contribute to enhancing mutual understanding between Japan and Jordan by deepening Jordanian's understanding of Japan; its culture, language and history.\n\n"
             "Library Unit Director, Dr. Mujahed Thneibat, pointed out that the library, which houses more than one and a half million books in various fields of knowledge, has been a meeting point for people from across the world for over 60 years,stressing that it serves beyond its traditional role to act as a gateway to knowledge and culture, welcoming more qualitative donations and cooperation between Library and embassy.",
       urlImage:"assets/images/lib.png",

     ),
  ];
   List<NewsDataModel> collegesNews =[];
  List<NewsDataModel> savedNews =[];

}
