import 'package:hng_tasks/models/dev_model.dart';

import '../models/skil_info_model.dart';

String gitHubUrl = "https://github.com/Oc-ean";
String twitterUrl = 'https://twitter.com/Ocean_423';

String profileImageUrl = 'assets/git_image.png';
const String bio = '🚀 BIO';
const String myHobbies = '✍️ HOBBIES';
const String myContact = '☎️ CONTACT ';
const String gitHub = '👨‍💻 GITHUB ';
const String email = '📧 EMAIL';
const String twitter = '🌐 TWITTER ';

DevModel myDetails = DevModel(
  name: "Micheal Olatunbosun",
  number: '+229 57622873',
  mail: 'michealolatunbosun603@gmail.com',
  bio: myBio,
  hobbies: <String>[
    '1. Learning about development',
    '2. Playing Codm',
    '3. Listening to music',
  ],
  info: [
    SkillsInfo(name: 'SoftWare Engineer', progress: 0.5),
    SkillsInfo(name: 'Flutter developer', progress: 0.7),
    SkillsInfo(name: 'Gamer 😅', progress: 0.3),
  ],
);

const String myBio = """
Hi, I'm Michael Olatunbosun, a budding Flutter dev exploring the world of mobile magic and coding adventures.Passionate about turning pixels into functionality, I'm on a quest to unravel the secrets of Flutter development.Constantly learning and tinkering with widgets, I'm on the junior dev rollercoaster, embracing challenges one bug at a time.UI/UX enthusiast by day, code debugger by night – I'm here to craft sleek apps and conquer the vast Flutter landscape.Join me on this exciting journey as I navigate the ups and downs of junior dev life, turning code dreams into reality.
""";
