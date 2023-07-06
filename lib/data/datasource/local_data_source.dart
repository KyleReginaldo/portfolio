import 'package:portfolio/data/models/gallery.model.dart';
import 'package:portfolio/data/models/hobby.model.dart';
import 'package:portfolio/data/models/person_model.dart';
import 'package:portfolio/data/models/sched.model.dart';

import '../../core/colors.dart';

class LocalDataSource {
  static List<PersonModel> persons = [
    PersonModel(
      name: 'Norly Villanueva',
      firstPicture: 'assets/images/norly1.jpg',
      secondPicture: 'assets/images/norly2.jpg',
      thirdPicture: 'assets/images/norly3.jpg',
      fourthPicture: 'assets/images/norly4.jpg',
      description:
          'I am a student of BSIT 1-8 My name is Norly A. Villanueva Aka Nabong I am 18 years old, and i\'m currently living Conchu, Pacific town phase 2, Cavite, tmc. And I am a person who is every aspect of life. There are many things i like to do, to see, and to experience.',
      color: color1,
      pdf: 'assets/pdf/norly.pdf',
    ),
    PersonModel(
      name: 'Janet Ayura',
      firstPicture: 'assets/images/ayura1.jpg',
      secondPicture: 'assets/images/ayura2.jpg',
      thirdPicture: 'assets/images/ayura3.jpg',
      fourthPicture: 'assets/images/ayura4.jpg',
      description:
          'Annyeong! I am Janet F. Ayura,  I am currently residing in Amaya Tanza Cavite, and I am living with my granny. I am student in Cavite State University taking of Bachelor of Science in Information Technology. sI am passionate about writing story, reading and acting anything scenario inside my head.',
      color: color2,
      pdf: 'assets/pdf/ayura.pdf',
    ),
    PersonModel(
      name: 'Jelica Panzuelo',
      firstPicture: 'assets/images/jelica1.jpg',
      secondPicture: 'assets/images/jelica2.jpg',
      thirdPicture: 'assets/images/jelica3.jpg',
      fourthPicture: 'assets/images/jelica4.jpg',
      description:
          'Hi my name is Jelica M. Panzuelo, I am currently student in Cavite State University Bachelor of science in information technology. I am living in my parent\'s house in Bagtas tanza cavite, with my 3 siblings. I am interested in playing volleyball, watching movies and playing online games.',
      color: color3,
      pdf: 'assets/pdf/jelica.pdf',
    ),
    PersonModel(
      name: 'Cedrique Zhandee Francois Alvarez',
      firstPicture: 'assets/images/ced1.png',
      secondPicture: 'assets/images/ced2.png',
      thirdPicture: 'assets/images/ced1.png',
      fourthPicture: 'assets/images/ced2.png',
      description:
          'I am Cedrique Zhandee Francois E. Alvarez of BSIT 1-8 studying at CVSU Trece branch. An aspiring game developer. Strong and creative with good communication skills. Team player with an eye for detail. A versatile person that can adapt easily, eager to learn and to further develop myself also exceptionally hardworking.',
      color: color4,
      pdf: 'assets/pdf/cedrique.pdf',
    ),
    PersonModel(
      name: 'Marc Aaron Abanggo',
      firstPicture: 'assets/images/john1.jpg',
      secondPicture: 'assets/images/john2.jpg',
      thirdPicture: 'assets/images/john3.jpg',
      fourthPicture: 'assets/images/john4.jpg',
      description:
          'I am ambitious and driven. I thrive on challenges and constantly set goals for myself, so I have something to strive toward. I\'m not comfortable with settling, and I\'m always looking for an opportunity to do better and achieve greatness',
      color: color5,
      pdf: 'assets/pdf/marc.pdf',
    ),
  ];

  static List<SchedModel> schedules = [
    SchedModel(
      title: 'GNED 12\nMS. BAUTISTA\n1PM-3PM',
      image: 'assets/images/1.jpg',
      date: 'MONDAY',
      font: 'Adistria',
    ),
    SchedModel(
      title: 'ITEC 50\nMR. ROCILLO\n3PM-5PM',
      image: 'assets/images/2.jpg',
      date: 'MONDAY',
      font: 'Awesome',
    ),
    SchedModel(
      title: 'GNED 01\nMS.SAVIO\n5PM-7PM',
      image: 'assets/images/3.jpg',
      date: 'MONDAY',
      font: 'BlackStars',
    ),
    SchedModel(
      title: 'VACANT',
      image: 'assets/images/8.jpg',
      date: 'TUESDAY',
      font: 'BebasNeue',
    ),
    SchedModel(
      title: 'VACANT',
      image: 'assets/images/4.jpg',
      date: 'WEDNESDAY',
      font: 'BebasNeue',
    ),
    SchedModel(
      title: 'DCIT 23 - (LAB)\nMR. ERSANDO\n7AM-1PM',
      image: 'assets/images/5.jpg',
      date: 'THURSDAY',
      font: 'NewYork',
    ),
    SchedModel(
      title: 'DCIT 23 - (LEC)\nMR. ERSANDO\n1PM-2PM',
      image: 'assets/images/6.jpg',
      date: 'THURSDAY',
      font: 'PrettyGirl',
    ),
    SchedModel(
      title: 'ITEC 50 - (LAB)\nMR. ROCILLO\n4PM-7PM',
      image: 'assets/images/7.jpg',
      date: 'THURSDAY',
      font: 'RomanLemonade',
    ),
    SchedModel(
      title: 'NSTP 2\nMR. MAGPANTAY\n8AM-5PM',
      image: 'assets/images/8.jpg',
      date: 'FRIDAY',
      font: 'RoseBlue',
    ),
    SchedModel(
      title: 'GNED 06\nDR. VALENCIA\n7AM-9AM',
      image: 'assets/images/9.jpg',
      date: 'SATURDAY',
      font: 'Adistria',
    ),
    SchedModel(
      title: 'GNED 03\nMR. PARPAN\n9AM-11AM',
      image: 'assets/images/0.jpg',
      date: 'SATURDAY',
      font: 'Milky',
    ),
    SchedModel(
      title: 'FITT 2\nMR. ROJAS\n11AM-1PM',
      image: 'assets/images/10.jpg',
      date: 'SATURDAY',
      font: 'Bonus',
    ),
  ];
  static List<({String mv, String body})> ms = [
    (
      mv: 'Mission',
      body:
          'Cavite State University shall provide excellent, equitable, and relevant educational opportunities in the arts, sciences, and technology through quality instruction and responsive research and developmental activities.',
    ),
    (
      mv: 'Vision',
      body:
          'The Premier University in historic Cavite recognized for excellence in the development of globally competitive and morally upright individuals.',
    ),
  ];

  static List<HobbyModel> hobbies = [
    HobbyModel(
      ep: 'EP.1',
      title: 'Cedriques\'s Hobbies',
      subtitle:
          'Konnichiwa Watashi no namae wa Cedrique desu. Some of my hobbies are Watching tv series may it be kdrama, thai drama, j-drama, chinese drama or english series or movies, i mostly prefer action , supernatural, magic type movies such as vampire diaries, originals, the gifted a thai series, semantic error and much more. Besides watching series i\'m also very fond of Watching anime especially action type animes because the animation is really good some animes i watch are black clover, mushouko tensei, demon slayer and many more  Likewise read manwhas,manhua, manga or webtoon every free time is my forte. I have read over 100 + plus manhwas with different genres but i preferably like to read action type manwhas for their amazingly good artstyle. I am a good sport when it comes to gaming. I like playing online games especially mobile legends , valorant and genshin impact these games for me are my safe place where i can just relax , chill and just unwind after a long bustling day.I also enjoy recording music or creating covers just for myself and my loved ones just like when playing online games i also consider this as my safe place. Doing this makes me just feel ease. I cannot say i\'m a good singer though.',
      image: 'assets/images/ced_h.jpg',
    ),
    HobbyModel(
      ep: 'EP.2',
      title: 'Norly\'s Hobbies',
      subtitle:
          'As an avid sleeper, I find solace and rejuvenation in the blissful embrace of a comfortable bed. From the moment I close my eyes and drift into the realm of dreams, I embark on a tranquil journey where worries and stressors melt away. Another passion that captivates me is the captivating world of movies. I immerse myself in a wide range of cinematic experiences, eagerly exploring various genres, eras, and cultures. With a keen eye for storytelling and visual artistry, I appreciate the efforts of filmmakers who craft compelling narratives and transport audiences to different realities.',
      image: 'assets/images/norly_h.png',
    ),
    HobbyModel(
      ep: 'EP.3',
      title: 'Janeth\'s Hobbies',
      subtitle:
          'Annyeong! I am Janet F. Ayura,  I am currently residing in Amaya Tanza Cavite, and I am living with my granny. I am student in Cavite State v ywghgdj gdiggg hehehe hggfhffggde University taking of Bachelor of Science in Information Technology. I am passionate about writing story, reading and acting anything scenario inside my head. I also love cleaning and organize things. ',
      image: 'assets/images/janeth_h.jpg',
    ),
    HobbyModel(
      ep: 'EP.4',
      title: 'Jelica\'s Hobbies',
      subtitle:
          'I love watching movie, It can makes me happy. I can spend my leisure time watching movie. I can do it by myselves or with my friends. It is enjoyable activity. Watching movie can also give me some information, because some films tell us about the important event. Watching movie is my best way to spend my leisure time. It can refresh my mind. I like new and trending movies and my favourite genres include suspense, horror and thriller movie.',
      image: 'assets/images/jelica_h.jpg',
    ),
    HobbyModel(
      ep: 'EP.5',
      title: 'Marc\'s Hobbies',
      subtitle:
          'Hobbies are a wonderful way to unwind, have fun, and pursue personal interests. One such hobby that has captured the hearts of people around the world is basketball. It\'s a sport that brings joy, excitement, and a sense of accomplishment. In this essay, let\'s explore why basketball is a simple yet fulfilling hobby that can be enjoyed by anyone. First and foremost, basketball is easy to get started with. All you need is a ball and a hoop. Whether you\'re shooting hoops in your driveway, at a local park, or in a community center, the simplicity of the game makes it accessible to people of all ages and skill levels. From kids just learning to hold a ball to adults looking for a way to stay active, basketball offers an inclusive and enjoyable experience. One of the beauties of basketball is that it can be played alone or with others. If you\'re looking for some solitary time, you can challenge yourself to improve your shooting skills, work on your dribbling technique, or practice your footwork. The repetitive motion of shooting and the satisfying sound of the ball swishing through the net can be incredibly rewarding.',
      image: 'assets/images/marc_h.jpg',
    ),
  ];
  static List<GalleryModel> galleryPics = [
    GalleryModel(
      name: 'All Cedrique Alvarez',
      image: 'assets/images/g_ced1.jpg',
    ),
    GalleryModel(
      name: 'All Cedrique Alvarez',
      image: 'assets/images/g_ced2.jpg',
    ),
    GalleryModel(
      name: 'All Cedrique Alvarez',
      image: 'assets/images/g_ced3.jpg',
    ),
    GalleryModel(
      name: 'All Cedrique Alvarez',
      image: 'assets/images/g_ced4.jpg',
    ),
    GalleryModel(
      name: 'All Cedrique Alvarez',
      image: 'assets/images/g_ced5.jpeg',
    ),
    GalleryModel(
      name: 'All Cedrique Alvarez',
      image: 'assets/images/g_ced6.jpeg',
    ),
    GalleryModel(
      name: 'All Cedrique Alvarez',
      image: 'assets/images/g_ced7.jpg',
    ),
    GalleryModel(
      name: 'All Norly Villanueva',
      image: 'assets/images/g_norly1.jpeg',
    ),
    GalleryModel(
      name: 'All Norly Villanueva',
      image: 'assets/images/g_norly2.jpeg',
    ),
    GalleryModel(
      name: 'All Norly Villanueva',
      image: 'assets/images/g_norly3.jpeg',
    ),
    GalleryModel(
      name: 'All Jelica Panzuelo',
      image: 'assets/images/g_jelica1.jpg',
    ),
    GalleryModel(
      name: 'All Jelica Panzuelo',
      image: 'assets/images/g_jelica2.jpg',
    ),
    GalleryModel(
      name: 'All Jelica Panzuelo',
      image: 'assets/images/g_jelica3.jpg',
    ),
    GalleryModel(
      name: 'All Jelica Panzuelo',
      image: 'assets/images/g_jelica4.jpg',
    ),
    GalleryModel(
      name: 'All Jelica Panzuelo',
      image: 'assets/images/g_jelica5.jpg',
    ),
    GalleryModel(
      name: 'All Jelica Panzuelo',
      image: 'assets/images/g_jelica6.jpg',
    ),
    GalleryModel(
      name: 'All Janeth Ayura',
      image: 'assets/images/g_janeth1.jpg',
    ),
    GalleryModel(
      name: 'All Janeth Ayura',
      image: 'assets/images/g_janeth2.jpg',
    ),
    GalleryModel(
      name: 'All Janeth Ayura',
      image: 'assets/images/g_janeth3.jpg',
    ),
    GalleryModel(
      name: 'All Janeth Ayura',
      image: 'assets/images/g_janeth4.jpg',
    ),
    GalleryModel(
      name: 'All Marc Abanggo',
      image: 'assets/images/g_marc1.jpg',
    ),
    GalleryModel(
      name: 'All Marc Abanggo',
      image: 'assets/images/g_marc2.jpg',
    ),
    GalleryModel(
      name: 'All Marc Abanggo',
      image: 'assets/images/marc1.jpg',
    ),
    GalleryModel(
      name: 'All Marc Abanggo',
      image: 'assets/images/marc2.jpg',
    ),
    GalleryModel(
      name: 'All',
      image: 'assets/images/oasis1.jpg',
    ),
    GalleryModel(
      name: 'All',
      image: 'assets/images/oasis2.jpg',
    ),
    GalleryModel(
      name: 'All',
      image: 'assets/images/oasis3.jpg',
    ),
    GalleryModel(
      name: 'All',
      image: 'assets/images/oasis4.jpg',
    ),
  ];
  static List<
          ({String userImage, String name, String schoolName, String image})>
      educs = [
    (
      userImage: 'assets/images/norly1.jpg',
      name: 'Norly Villanueva',
      schoolName: 'KAPANGI-AN CENTRAL SCHOOL',
      image: 'assets/images/elem_norly.jpeg',
    ),
    (
      userImage: 'assets/images/norly1.jpg',
      name: 'Norly Villanueva',
      schoolName: 'LEYTE NATIONAL SCHOOL',
      image: 'assets/images/jhs_norly.jpg',
    ),
    (
      userImage: 'assets/images/norly1.jpg',
      name: 'Norly Villanueva',
      schoolName: 'LEYTE NATIONAL SCHOOL',
      image: 'assets/images/shs_norly.jpeg',
    ),
    (
      userImage: 'assets/images/john1.jpg',
      name: 'Marc Aaron Abanggo',
      schoolName: 'PARAÑAQUE ELEMENTARY SCHOOL',
      image: 'assets/images/jhs_marc.jpg',
    ),
    (
      userImage: 'assets/images/john1.jpg',
      name: 'Marc Aaron Abanggo',
      schoolName: 'PARAÑAQUE NATIONAL SCHOOL',
      image: 'assets/images/jhs_marc.jpg',
    ),
    (
      userImage: 'assets/images/john1.jpg',
      name: 'Marc Aaron Abanggo',
      schoolName: 'PARAÑAQUE NATIONAL SCHOOL CENTRAL',
      image: 'assets/images/jhs_marc.jpg',
    ),
    (
      userImage: 'assets/images/g_jelica1.jpg',
      name: 'Jelica Panzuelo',
      schoolName: 'ANTONIO B. DEL ROSARIO SR. MEMORIAL ELEMENTARY SCHOOL',
      image: 'assets/images/elem_jelica.jpg',
    ),
    (
      userImage: 'assets/images/g_jelica1.jpg',
      name: 'Jelica Panzuelo',
      schoolName: 'TANZA NATIONAL TRADE SCHOOL',
      image: 'assets/images/jhs_jelica.jpg',
    ),
    (
      userImage: 'assets/images/g_jelica1.jpg',
      name: 'Jelica Panzuelo',
      schoolName: 'NOTRE DAME IN CABUCO',
      image: 'assets/images/shs_jelica.jpg',
    ),
    (
      userImage: 'assets/images/ayura1.jpg',
      name: 'Janeth Ayura',
      schoolName: 'AMAYA ELEMENTARY SCHOOL',
      image: 'assets/images/elem_ayura.jpeg',
    ),
    (
      userImage: 'assets/images/ayura1.jpg',
      name: 'Janeth Ayura',
      schoolName: 'AMAYA SCHOOL OF HOME INDUSTRIES',
      image: 'assets/images/jhs_ayura.jpeg',
    ),
    (
      userImage: 'assets/images/ayura1.jpg',
      name: 'Janeth Ayura',
      schoolName: 'NOTRE DAME',
      image: 'assets/images/shs_ayura.jpeg',
    ),
    (
      userImage: 'assets/images/ced1.png',
      name: 'Cedrique Alvarez',
      schoolName: 'RAMON MAGSAYSAY HIGHSCHOOL',
      image: 'assets/images/jhs_ced.jpg',
    ),
    (
      userImage: 'assets/images/ced1.png',
      name: 'Cedrique Alvarez',
      schoolName: 'SAINT RAPHAEL ARCHANGEL PARISHCHOOL',
      image: 'assets/images/jhs1_ced.jpg',
    ),
    (
      userImage: 'assets/images/ced1.png',
      name: 'Cedrique Alvarez',
      schoolName: 'CALACA SENIOR HIGHSCHOOL',
      image: 'assets/images/shs_ced.jpg',
    ),
  ];
}
