import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StoryModel {
  final String imageLink;
  final String name;
  StoryModel({
    required this.imageLink,
    required this.name,
  });
}

class ChatModel {
  final String imageLink;
  final String name;
  final String message;
  final String time;
  final Color status;
  ChatModel({
    required this.imageLink,
    required this.message,
    required this.name,
    required this.time,
    required this.status,
  });
}

class Messenger extends StatelessWidget {
  List<StoryModel> stories = [
    StoryModel(
      imageLink:
          'https://cdn.s7.shopdisney.eu/is/image/ShopDisneyEMEA/36814_sulley_sq_m?\$characterImageSizeDesktop1x\$&fit=constrain',
      name: 'Shalaby Slovan',
    ),
    StoryModel(
      imageLink:
          'https://cdn.s7.shopdisney.eu/is/image/ShopDisneyEMEA/33631_mike_character_sq_l?\$characterImageSizeDesktop1x\$&fit=constrain',
      name: 'Mared  Washweshny',
    ),
    StoryModel(
      imageLink:
          'https://static.wikia.nocookie.net/cartoons/images/e/ed/Profile_-_SpongeBob_SquarePants.png/revision/latest?cb=20221207090028',
      name: 'Sponge Bob',
    ),
    StoryModel(
      imageLink:
          'http://pm1.narvii.com/6392/2b953a826944e8692b73557fc177907d60e3e9d3_00.jpg',
      name: 'Timmy Turner',
    ),
    StoryModel(
      imageLink:
          'https://cdn.s7.shopdisney.eu/is/image/ShopDisneyEMEA/33631_peter_pan_character_sq_l?\$characterImageSizeDesktop1x\$&fit=constrain',
      name: 'Peter Pan',
    ),
    StoryModel(
      imageLink:
          'https://cdn.s7.shopdisney.eu/is/image/ShopDisneyEMEA/33631_simba_character_sq_l?\$characterImageSizeDesktop1x\$&fit=constrain',
      name: 'Simba',
    ),
  ];
  List<ChatModel> chats = [
    ChatModel(
      imageLink:
          'https://i0.wp.com/wipy.tv/wp-content/uploads/2019/06/Boo-Monsters-Inc.jpg?fit=1000%2C600&ssl=1',
      name: 'Boo',
      message: '2otty..',
      time: '8.15 am',
      status: Colors.green,
    ),
    ChatModel(
      imageLink:
          'https://qph.cf2.quoracdn.net/main-qimg-d12a2d93799f9c4fa645623611447827-lq',
      name: 'Dora',
      message: '3ooom w etma5tr 3oooom w etma5tr ma5tr ma5trr',
      time: '12.00 am',
      status: Colors.green,
    ),
    ChatModel(
      imageLink: 'https://cdn.quotesgram.com/img/68/31/1855433421-Timon.png',
      name: 'Timon',
      message: 'lama eldonia tdeek dahraha edy dahrak lldonia..',
      time: '3.17 pm',
      status: Colors.red,
    ),
    ChatModel(
      imageLink:
          'https://cdn.s7.shopdisney.eu/is/image/ShopDisneyEMEA/33631_aladdin_character_sq_l?\$characterImageSizeDesktop1x\$&fit=constrain',
      name: 'Aladdin',
      message: 'How Are You Salma?',
      time: '6.10 pm',
      status: Colors.green,
    ),
    ChatModel(
      imageLink:
          'https://elcomercio.pe/resizer/gG12b01gjWLoikQgxWRqU8QsiH0=/1200x900/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/ZNRCL26EGZHTXGJDTSRGGXV6AU.jpg',
      name: 'Chef Gusteau',
      message:
          'lw rkzt 3la elly da3 menk 3omrk ma hatshof elly bystnak.. shoof rez2k eldonia was3a',
      time: '1.51 am',
      status: Colors.red,
    ),
    ChatModel(
      imageLink:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShulJBsjK70RRPFBdkCmLgjmSZxgFYeQi60REHqCw2G8X_pEsCtZiizrD95aWaC67Mou0&usqp=CAU',
      name: 'Pumbaa',
      message: 'Hakoonaaa Matataaaaa',
      time: '8.40 am',
      status: Colors.green,
    ),
    ChatModel(
      imageLink:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4XkArAwRZLXlnV4HAi3p-TvnvqBalZLYEpR9K4SdnnX8Ugu0nwQ_bcDzsrYGoTgmsHD8&usqp=CAU',
      name: 'Moana',
      message: 'Helloo Salma',
      time: '10.30 am',
      status: Colors.red,
    ),
    ChatModel(
      imageLink:
          'https://cdn.s7.shopdisney.eu/is/image/ShopDisneyEMEA/33631_mickey_mouse_character_sq_l?\$characterImageSizeDesktop1x\$&fit=constrain',
      name: 'Micky Mouse',
      message: 'Hellooooo',
      time: '2.00 pm',
      status: Colors.green,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 20,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://i0.wp.com/img3.wikia.nocookie.net/__cb20131111070747/disney/images/a/aa/Nemo-FN.png'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size: 15,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 15,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(children: [
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                Text('Search'),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 140,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, idx) => buildStoryItem(stories[idx]),
                separatorBuilder: (context, idx) => SizedBox(
                  width: 5,
                ),
                itemCount: stories.length,
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, idx) => buildChatItem(chats[idx]),
              separatorBuilder: (context, idx) => SizedBox(height: 20),
              itemCount: chats.length,
            ),
          ]),
        ),
      ),
    );
  }
}

Widget buildStoryItem(StoryModel story) => Container(
      width: 75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('${story.imageLink}'),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  //bottom: 3,
                  end: 5,
                ),
                child: CircleAvatar(
                  radius: 6.5,
                  backgroundColor: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  //bottom: 3,
                  end: 5,
                ),
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 70,
            child: Center(
              child: Text(
                '${story.name}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
Widget buildChatItem(ChatModel chat) => Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('${chat.imageLink}'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                //bottom: 3,
                end: 5,
              ),
              child: CircleAvatar(
                radius: 6.5,
                backgroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                //bottom: 3,
                end: 5,
              ),
              child: CircleAvatar(
                radius: 5,
                backgroundColor: chat.status,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${chat.name}',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    '${chat.message}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      width: 3,
                      height: 3,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Text(
                    '${chat.time}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
