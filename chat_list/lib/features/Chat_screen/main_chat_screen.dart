import 'package:chat_list/features/Chat_screen/struct_heart.dart';
import 'package:chat_list/features/Chat_screen/struct_people.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainChatScreen extends StatefulWidget {
  const MainChatScreen({super.key});


  @override
  _MainChatScreen createState() => _MainChatScreen();
}

class _MainChatScreen extends State<MainChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(175.0),
        child: AppBar(
          backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
          // shape: const RoundedRectangleBorder(
          //   borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(1), // 1px radius on top-left corner
          //   ),
          // ),
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded( // Wrap the Container with Expanded
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(57, 55, 55, 1),
                borderRadius: BorderRadius.only(topLeft:Radius.circular(8),topRight: Radius.circular(8)),
                border: Border.all(width: 1),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ЧАТЫ',
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          height: 21 / 24, // line height
                          color: Color.fromRGBO(246, 244, 244, 1),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'OFF',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              height: 21 / 16, // line height
                              color: Color.fromRGBO(246, 244, 244, 1),
                            ),
                          ),
                          SizedBox(width: 10), // add some space between the text and the SVG
                          IconButton(
                            icon: SvgPicture.asset('lib/assets/ingognito.svg', width: 40, height: 20),
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    color: Color.fromRGBO(13, 19, 51, 1), // Set background color to blue
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        // Add a close button
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: IconButton(
                                            onPressed: () {
                                              Navigator.pop(context); // Close the bottom sheet
                                            },
                                            //SvgPicture.asset('lib/assets/close.svg'),
                                            icon: SvgPicture.asset('lib/assets/close.svg'),
                                          ),
                                        ),
                                        SvgPicture.asset('lib/assets/glass.svg'),
                                        SizedBox(height: 15,),
                                        Text(
                                          'Режим инкогнито на 24 часа',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.italic,
                                            height: 18.38 / 16,
                                            color: Color.fromRGBO(246, 244, 244, 1),
                                            fontFamily: 'Ubuntu',
                                          ),
                                        ),
                                        SizedBox(height: 15,),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 25.0), // add 16px padding on left and right sides
                                          child: Text(
                                            'Стань невидимкой в ленте и чатах, скрой объявление и наслаждайся <Space> незамеченным',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                              height: 16.09 / 14,
                                              color: Color.fromRGBO(188, 179, 179, 1),
                                              fontFamily: 'Ubuntu',
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 35,),
                                        Row(  
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 15),
                                              child: Container(
                                                width: 103,
                                                height: 78,
                                                margin: EdgeInsets.only(top: 13, left: 0.33),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 1,
                                                    color: Color.fromRGBO(57, 55, 55, 1),
                                                  ),
                                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                                  color: Color.fromRGBO(33, 32, 32, 1),
                                                ),
                                                padding: EdgeInsets.all(16),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        SizedBox(width: 10,),
                                                        Text(
                                                          '1',
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w300,
                                                            height: 16.09 / 14,
                                                            color: Color.fromRGBO(188, 179, 179, 1),
                                                            fontFamily: 'Ubuntu',
                                                          ),
                                                        ),
                                                        SizedBox(width: 10,),
                                                        SvgPicture.asset('lib/assets/mask.svg'),
                                                      ],
                                                    ),
                                                    SizedBox(height: 10,),
                                                    Text(
                                                      '99 ₽',
                                                      style: TextStyle(
                                                        fontFamily: 'Ubuntu',
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w400,
                                                        height: 18.38 / 16, // line height
                                                        color: Color.fromRGBO(246, 244, 244, 1),
                                                        //textAlign: TextAlign.center,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Stack(
                                              children: [
                                                Container(
                                                  width: 103,
                                                  height: 78,
                                                  margin: EdgeInsets.only(top: 13, left: 0.33),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      width: 1,
                                                      color: Color.fromRGBO(57, 55, 55, 1),
                                                    ),
                                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                                    color: Color.fromRGBO(33, 32, 32, 1),
                                                  ),
                                                  padding: EdgeInsets.all(16),
                                                  child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        SizedBox(width: 10,),
                                                        Text(
                                                          '3',
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w300,
                                                            height: 16.09 / 14,
                                                            color: Color.fromRGBO(188, 179, 179, 1),
                                                            fontFamily: 'Ubuntu',
                                                          ),
                                                        ),
                                                        SizedBox(width: 10,),
                                                        SvgPicture.asset('lib/assets/mask.svg'),
                                                      ],
                                                    ),
                                                    SizedBox(height: 10,),
                                                    Text(
                                                      '199 ₽',
                                                      style: TextStyle(
                                                        fontFamily: 'Ubuntu',
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w400,
                                                        height: 18.38 / 16, // line height
                                                        color: Color.fromRGBO(246, 244, 244, 1),
                                                        //textAlign: TextAlign.center,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                ),
                                                Positioned(
                                                  // top: 0,
                                                  left:  25,
                                                  // right: 0,
                                                  child: Container(
                                                    width: 53,
                                                    height: 20, // adjust the height to fit your needs
                                                    decoration: BoxDecoration(
                                                      //shape: BoxShape.oval,
                                                      border: Border.all(
                                                      width: 1, 
                                                      color: Color.fromRGBO(255, 30, 0, 1),
                                                      
                                                      
                                                    ), borderRadius: BorderRadius.all(Radius.circular(90)),
                                                      color: Color.fromRGBO(255, 30, 0, 1),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Хит',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w300,
                                                          height: 16.09 / 14,
                                                          color: Color.fromRGBO(188, 179, 179, 1),
                                                          fontFamily: 'Ubuntu',
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 15),
                                              child: Stack(
                                              children: [
                                                Container(
                                                  width: 103,
                                                  height: 78,
                                                  margin: EdgeInsets.only(top: 13, left: 0.33),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      width: 1,
                                                      color: Color.fromRGBO(57, 55, 55, 1),
                                                    ),
                                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                                    color: Color.fromRGBO(33, 32, 32, 1),
                                                  ),
                                                  padding: EdgeInsets.all(16),
                                                  child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        SizedBox(width: 10,),
                                                        Text(
                                                          '7',
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w300,
                                                            height: 16.09 / 14,
                                                            color: Color.fromRGBO(188, 179, 179, 1),
                                                            fontFamily: 'Ubuntu',
                                                          ),
                                                        ),
                                                        SizedBox(width: 10,),
                                                        SvgPicture.asset('lib/assets/mask.svg'),
                                                      ],
                                                    ),
                                                    SizedBox(height: 10,),
                                                    Text(
                                                      '399 ₽',
                                                      style: TextStyle(
                                                        fontFamily: 'Ubuntu',
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w400,
                                                        height: 18.38 / 16, // line height
                                                        color: Color.fromRGBO(246, 244, 244, 1),
                                                        //textAlign: TextAlign.center,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                ),
                                                Positioned(
                                                  // top: 0,
                                                  left:  25,
                                                  // right: 0,
                                                  child: Container(
                                                    width: 53,
                                                    height: 20, // adjust the height to fit your needs
                                                    decoration: BoxDecoration(
                                                      //shape: BoxShape.oval,
                                                      border: Border.all(
                                                      width: 1, 
                                                      color: Color.fromRGBO(255, 30, 0, 1),
                                                      
                                                      
                                                    ), borderRadius: BorderRadius.all(Radius.circular(90)),
                                                      color: Color.fromRGBO(255, 30, 0, 1),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '-42%',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w300,
                                                          height: 16.09 / 14,
                                                          color: Color.fromRGBO(188, 179, 179, 1),
                                                          fontFamily: 'Ubuntu',
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 15,),
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Container(
                                            padding: EdgeInsets.all(10),
                                            width: double.infinity, // spans the entire width of the screen
                                            height: 50, // fixed height of 50px
                                            decoration: BoxDecoration(
                                              // add some decoration to the container, e.g., a blue color
                                              color: Color.fromRGBO(170, 4, 74, 1),
                                             borderRadius: BorderRadius.all(Radius.circular(10)),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Купить',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white, // white text color
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Text(
                                          'Условия и положения', // your text here
                                          style: TextStyle(
                                            fontFamily: 'Ubuntu',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            height: 18.38 / 16, // line height
                                            color: Color.fromRGBO(246, 244, 244, 1),
                                          ),
                                        ),
                                        SizedBox(height: 25,),

                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ),

                        ],
                      ),
        
                    ],
                  ),
                  // ChatBubble(imageUrl: 'https://s3-alpha-sig.figma.com/img/92bd/ca1b/c6077acf7bcdecb741fa890dfaede950?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FhFZRtvuKH5Ur-PGORHG-cYRC90eNF2sjXS9tRNcjFV41UBYfVkzYn9AmhjQcfSJS2DFF6VY~H~VWQ2VY0fDFXLNH6xQzJq0mNTTQmTemOuhoeroz3gecptMA27g4Ge6~YjNJ7TidVToX32Tf03CMQFWYPnaOHlKWeKXt5Eez1m8reQ0~nIZM44NagZJnA8xroi2ZZh5ad8HMv4uLiTaj5weFPtMci6sSV9qd6Uk4tFnX4sUIJwX4qe~Q~OB25H-DBx-krq9yZH6HRGGV3CIb8wbvnigN-nN2fzqTPRQzerjjIJjGRGDzUMhJvxq9ferHLxFJagwq4G9WeHPfg5sZQ__', last_mes: 'Отлично выглядишь', time: '23 ч 43 мин'),
                  // ChatBubble(imageUrl: 'https://s3-alpha-sig.figma.com/img/92bd/ca1b/c6077acf7bcdecb741fa890dfaede950?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FhFZRtvuKH5Ur-PGORHG-cYRC90eNF2sjXS9tRNcjFV41UBYfVkzYn9AmhjQcfSJS2DFF6VY~H~VWQ2VY0fDFXLNH6xQzJq0mNTTQmTemOuhoeroz3gecptMA27g4Ge6~YjNJ7TidVToX32Tf03CMQFWYPnaOHlKWeKXt5Eez1m8reQ0~nIZM44NagZJnA8xroi2ZZh5ad8HMv4uLiTaj5weFPtMci6sSV9qd6Uk4tFnX4sUIJwX4qe~Q~OB25H-DBx-krq9yZH6HRGGV3CIb8wbvnigN-nN2fzqTPRQzerjjIJjGRGDzUMhJvxq9ferHLxFJagwq4G9WeHPfg5sZQ__', last_mes: 'Отлично выглядишь', time: '23 ч 43 мин'),
                  // ChatBubble(imageUrl: 'https://s3-alpha-sig.figma.com/img/92bd/ca1b/c6077acf7bcdecb741fa890dfaede950?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FhFZRtvuKH5Ur-PGORHG-cYRC90eNF2sjXS9tRNcjFV41UBYfVkzYn9AmhjQcfSJS2DFF6VY~H~VWQ2VY0fDFXLNH6xQzJq0mNTTQmTemOuhoeroz3gecptMA27g4Ge6~YjNJ7TidVToX32Tf03CMQFWYPnaOHlKWeKXt5Eez1m8reQ0~nIZM44NagZJnA8xroi2ZZh5ad8HMv4uLiTaj5weFPtMci6sSV9qd6Uk4tFnX4sUIJwX4qe~Q~OB25H-DBx-krq9yZH6HRGGV3CIb8wbvnigN-nN2fzqTPRQzerjjIJjGRGDzUMhJvxq9ferHLxFJagwq4G9WeHPfg5sZQ__', last_mes: 'Отлично выглядишь', time: '23 ч 43 мин'),
                  // ChatBubble(imageUrl: 'https://s3-alpha-sig.figma.com/img/92bd/ca1b/c6077acf7bcdecb741fa890dfaede950?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FhFZRtvuKH5Ur-PGORHG-cYRC90eNF2sjXS9tRNcjFV41UBYfVkzYn9AmhjQcfSJS2DFF6VY~H~VWQ2VY0fDFXLNH6xQzJq0mNTTQmTemOuhoeroz3gecptMA27g4Ge6~YjNJ7TidVToX32Tf03CMQFWYPnaOHlKWeKXt5Eez1m8reQ0~nIZM44NagZJnA8xroi2ZZh5ad8HMv4uLiTaj5weFPtMci6sSV9qd6Uk4tFnX4sUIJwX4qe~Q~OB25H-DBx-krq9yZH6HRGGV3CIb8wbvnigN-nN2fzqTPRQzerjjIJjGRGDzUMhJvxq9ferHLxFJagwq4G9WeHPfg5sZQ__', last_mes: 'Отлично выглядишь', time: '23 ч 43 мин'),
                  // ChatBubble(imageUrl: 'https://s3-alpha-sig.figma.com/img/92bd/ca1b/c6077acf7bcdecb741fa890dfaede950?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FhFZRtvuKH5Ur-PGORHG-cYRC90eNF2sjXS9tRNcjFV41UBYfVkzYn9AmhjQcfSJS2DFF6VY~H~VWQ2VY0fDFXLNH6xQzJq0mNTTQmTemOuhoeroz3gecptMA27g4Ge6~YjNJ7TidVToX32Tf03CMQFWYPnaOHlKWeKXt5Eez1m8reQ0~nIZM44NagZJnA8xroi2ZZh5ad8HMv4uLiTaj5weFPtMci6sSV9qd6Uk4tFnX4sUIJwX4qe~Q~OB25H-DBx-krq9yZH6HRGGV3CIb8wbvnigN-nN2fzqTPRQzerjjIJjGRGDzUMhJvxq9ferHLxFJagwq4G9WeHPfg5sZQ__', last_mes: 'Отлично выглядишь', time: '23 ч 43 мин'),
                  // ChatBubble(imageUrl: 'https://s3-alpha-sig.figma.com/img/92bd/ca1b/c6077acf7bcdecb741fa890dfaede950?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FhFZRtvuKH5Ur-PGORHG-cYRC90eNF2sjXS9tRNcjFV41UBYfVkzYn9AmhjQcfSJS2DFF6VY~H~VWQ2VY0fDFXLNH6xQzJq0mNTTQmTemOuhoeroz3gecptMA27g4Ge6~YjNJ7TidVToX32Tf03CMQFWYPnaOHlKWeKXt5Eez1m8reQ0~nIZM44NagZJnA8xroi2ZZh5ad8HMv4uLiTaj5weFPtMci6sSV9qd6Uk4tFnX4sUIJwX4qe~Q~OB25H-DBx-krq9yZH6HRGGV3CIb8wbvnigN-nN2fzqTPRQzerjjIJjGRGDzUMhJvxq9ferHLxFJagwq4G9WeHPfg5sZQ__', last_mes: 'Отлично выглядишь', time: '23 ч 43 мин'),
                
                  Expanded(
            child: SingleChildScrollView( // Wrap with SingleChildScrollView
              child: Column(
                children: [
                  ChatBubbleH(last_mes: '44 человека тебя лайкнули'),
                  ChatBubble(
                    imageUrl:
                        'https://s3-alpha-sig.figma.com/img/92bd/ca1b/c6077acf7bcdecb741fa890dfaede950?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FhFZRtvuKH5Ur-PGORHG-cYRC90eNF2sjXS9tRNcjFV41UBYfVkzYn9AmhjQcfSJS2DFF6VY~H~VWQ2VY0fDFXLNH6xQzJq0mNTTQmTemOuhoeroz3gecptMA27g4Ge6~YjNJ7TidVToX32Tf03CMQFWYPnaOHlKWeKXt5Eez1m8reQ0~nIZM44NagZJnA8xroi2ZZh5ad8HMv4uLiTaj5weFPtMci6sSV9qd6Uk4tFnX4sUIJwX4qe~Q~OB25H-DBx-krq9yZH6HRGGV3CIb8wbvnigN-nN2fzqTPRQzerjjIJjGRGDzUMhJvxq9ferHLxFJagwq4G9WeHPfg5sZQ__',
                    last_mes: 'Отлично выглядишь',
                    time: '23 ч 43 мин',
                  ),
                  ChatBubble(
                    imageUrl:
                        'https://s3-alpha-sig.figma.com/img/01c3/5969/e3ab766b4e3463d40122834d9c542e47?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=A1RVZHc49r2QZMEN9NCRPrFhnUpZchqSmT69NW2kboL6VcktQAWCOur~jWCPfdFdZI56E3Bjf18HfLHzHAecGZyW4pUanZ74XD0W~3OH42-MjdvmoNkuY76~zn3UE5N8m6l9k3KJwgHP32s7U~bb9BnYrsh6NVQkZgnSKhEAJInb6N9TQmiOT0ci3eoTnZgcO4PpHpUoELnjO7jymwtfe0JGfwk1YJ6zrh0EtgXpwfjnUPV6yIYNVwfX1i3ahPveIzCPWB24D5a7KK4ybYMI3mxMLKE5BWWkrt-Xn74P55DURELXAiUpwMZkrz~EO304oIVUzB3y8pFWvkCUYuuQcA__',
                    last_mes: 'Встретимся? Я рядом',
                    time: '20 ч 40 мин',
                  ),
                  ChatBubble(
                    imageUrl:
                        'https://s3-alpha-sig.figma.com/img/9894/aed2/75082e002939dad7b2776bd40837362c?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=M6EH5DMXF0g7OQGlnkqTN8u~-Ml6iW0552ABubyu31CrxlvFR3~wLGfon8ob~FGMF-B09eqtPeXzgO2vZLrbl2VO3ZSQu0V~H-zz1D1heveAQJ-vCjj0csrzG7stn0JC2Ehz2jjGdbrqYEC0HRBhXiwx3DfaHoeZFMTWbWdWzn-B1K6o4v20N42LvMuPuH3Wbi1lzDc5RZ3IX~muZjj6Q-zwYJu58YSsNeWN2RsJvNlba8tuWZ5tsdzaKDRbiFFxSBeXbAEXpBZREQrNrxWdI4sQ4LCldjrNk9bUTTIq2hin7im3OtPEATIV0YxVUmCKUGjeoxMkxlooz7xdzbesyA__',
                    last_mes: 'Встретимся?',
                    time: '18 ч 40 мин',
                  ),
                  ChatBubble(
                    imageUrl:
                        'https://s3-alpha-sig.figma.com/img/9652/7261/655a798a633b1f4b17e4cf94a922756d?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=DROXDz5NkqSyo9Nh6io9TYN~AR7~Phg54TBJOP7sEqUse4Jt0u~3yM3lvqGO1OjpzCTbtTvMQut5MeRzo2wK-lDWwB38feBTSWBngATdNHXxvaDUEzZA2NahrSS31~FRFzoIVk-Uh4~Duu7fEuCwzFkYLiaLKef1uHN3X43fohp4m5ukNkqF03f9biXhlUizSY0sKXC8xpQJq72Ek6IZMoU6rWREjnmmGkSAk5V9HOxsXrU79cnQorCQHKmI7KtxO52rii8gzf7xNyn8bzwx13911CLJ9XsAUMSLSelMTCxIGSX-bpky~G5pVA9SCrC0TXlsMlpA9POsTVFWI5XM-Q__',
                    last_mes: 'Давно тебя хочу',
                    time: '9 ч 40 мин',
                  ),
                  ChatBubble(
                    imageUrl:
                        'https://s3-alpha-sig.figma.com/img/2a5f/aa19/4f84d380cb4f0211f7ce3b36055ddf4d?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LtCJ1SYZfRV56WUeGvRffvPjMLEm1mSkcgdjSTAKPZEKrKn-YFVln3iyTqlqWyoQUDwhBV8ebQh9meozfkpTVEMgT74CkUd6CzoT8NjcVTTWhQ8xVctd6PJ9TROt1V5Pdr55azU-vuCidmJAqe~0Ga-e0260L~2moepC30gs363W0LtzVBAvR5pJ0vkaf6hk59YY2a98DKM-9AfUtysHOJugb1Hz4g5COt12BadPtZcgL-tjHd4UakZjt2gtyLvnUv~xtC-crhh0jcubU9NsIKyfvdsVxYoNLDuJU4dJbBcvw1ypLb7BL4q1c~RS2SrhHiXHSkf4rA84URZcCazW0A__',
                    last_mes: 'Я в ванной.. Скинь фото...',
                    time: '3 ч 04 мин',
                  ),
                  ChatBubble(
                    imageUrl:
                        'https://s3-alpha-sig.figma.com/img/2a2c/e021/88cde527187fd78b0ae252f614aeec5a?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=O-~~JewDmTILEQmycT5qrPB254VjtModz8-5t-Byhs-PctBXDboMnViuRz3LXC0gGNWgiLj38QYLW72ji-fBkrbWZxULNXlvECFoM-cncZmm0~Iw17nnKc1VpkQfkkc9gUwa71-FJ1XeTEq1o87WYhDErnopNzZqghE1ugfvclIPSONCNB-EinK6anpDh3tjJ3npvIGR-sca8kuWp0jHOq6qzGFnO09B1tLS2C99nULnGDJ0e868Y9HHAVd~1F56KFPhWIk0PVw--5m1hSKUSEOwh27IbjbwWoS~DwavQ0fWkzArjzX~SqnQCIL2DUONjMZIhWIrYxj9H6EDwRJvcg__',
                    last_mes: 'Привет',
                    time: '01 ч 09 мин',
                  ),
                  ChatBubble(
                    imageUrl:
                        'https://s3-alpha-sig.figma.com/img/92bd/ca1b/c6077acf7bcdecb741fa890dfaede950?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FhFZRtvuKH5Ur-PGORHG-cYRC90eNF2sjXS9tRNcjFV41UBYfVkzYn9AmhjQcfSJS2DFF6VY~H~VWQ2VY0fDFXLNH6xQzJq0mNTTQmTemOuhoeroz3gecptMA27g4Ge6~YjNJ7TidVToX32Tf03CMQFWYPnaOHlKWeKXt5Eez1m8reQ0~nIZM44NagZJnA8xroi2ZZh5ad8HMv4uLiTaj5weFPtMci6sSV9qd6Uk4tFnX4sUIJwX4qe~Q~OB25H-DBx-krq9yZH6HRGGV3CIb8wbvnigN-nN2fzqTPRQzerjjIJjGRGDzUMhJvxq9ferHLxFJagwq4G9WeHPfg5sZQ__',
                    last_mes: 'Отлично выглядишь',
                    time: '23 ч 43 мин',
                  ),

                  ChatBubble(
                    imageUrl:
                        'https://s3-alpha-sig.figma.com/img/92bd/ca1b/c6077acf7bcdecb741fa890dfaede950?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FhFZRtvuKH5Ur-PGORHG-cYRC90eNF2sjXS9tRNcjFV41UBYfVkzYn9AmhjQcfSJS2DFF6VY~H~VWQ2VY0fDFXLNH6xQzJq0mNTTQmTemOuhoeroz3gecptMA27g4Ge6~YjNJ7TidVToX32Tf03CMQFWYPnaOHlKWeKXt5Eez1m8reQ0~nIZM44NagZJnA8xroi2ZZh5ad8HMv4uLiTaj5weFPtMci6sSV9qd6Uk4tFnX4sUIJwX4qe~Q~OB25H-DBx-krq9yZH6HRGGV3CIb8wbvnigN-nN2fzqTPRQzerjjIJjGRGDzUMhJvxq9ferHLxFJagwq4G9WeHPfg5sZQ__',
                    last_mes: 'Отлично выглядишь',
                    time: '23 ч 43 мин',
                  ),
                  ChatBubble(
                    imageUrl:
                        'https://s3-alpha-sig.figma.com/img/92bd/ca1b/c6077acf7bcdecb741fa890dfaede950?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FhFZRtvuKH5Ur-PGORHG-cYRC90eNF2sjXS9tRNcjFV41UBYfVkzYn9AmhjQcfSJS2DFF6VY~H~VWQ2VY0fDFXLNH6xQzJq0mNTTQmTemOuhoeroz3gecptMA27g4Ge6~YjNJ7TidVToX32Tf03CMQFWYPnaOHlKWeKXt5Eez1m8reQ0~nIZM44NagZJnA8xroi2ZZh5ad8HMv4uLiTaj5weFPtMci6sSV9qd6Uk4tFnX4sUIJwX4qe~Q~OB25H-DBx-krq9yZH6HRGGV3CIb8wbvnigN-nN2fzqTPRQzerjjIJjGRGDzUMhJvxq9ferHLxFJagwq4G9WeHPfg5sZQ__',
                    last_mes: 'Отлично выглядишь',
                    time: '23 ч 43 мин',
                  ),
                
                ],
              ),
            ),
          ),

                ],
              ),
            ),
          ),
            Container(
              height: 60, // adjust the height as needed
              decoration: BoxDecoration(
                color: const Color.fromRGBO(25, 24, 24, 1), // background color of the rectangle
                //borderRadius: BorderRadius.all(Radius.circular(10)), // rounded corners
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    //icon: Image.asset('lib/assets/image1.png', width: 24, height: 24),
                    icon: SvgPicture.asset('lib/assets/image1.svg'),
                    onPressed: () {
                      // handle home button press
                    },
                  ),
                  IconButton(
                    // icon: Image.asset('lib/assets/image2.png', width: 24, height: 24),
                    icon: SvgPicture.asset('lib/assets/image2.svg'),
                    onPressed: () {
                      // handle settings button press
                    },
                  ),
                  IconButton(
                    icon: SvgPicture.asset('lib/assets/image3.svg'),
                    onPressed: () {
                      // handle info button press
                    },
                  ),
                  IconButton(
                    icon: SvgPicture.asset('lib/assets/image4.svg'),
                    onPressed: () {
                      // handle help button press
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}