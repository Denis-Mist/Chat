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
                                        SizedBox(height: 15,),
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
                                                child: Text(
                                                  'gfdg',
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
                                              child: Text(
                                                'gfdg',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w300,
                                                  height: 16.09 / 14,
                                                  color: Color.fromRGBO(188, 179, 179, 1),
                                                  fontFamily: 'Ubuntu',
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 15),
                                              child: Container(
                                                width: 103,
                                                height: 78,
                                                
                                                margin: EdgeInsets.only(top: 13, left: 0.33,right: 5),
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 1,
                                                    color: Color.fromRGBO(57, 55, 55, 1),
                                                  ),
                                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                                  color: Color.fromRGBO(33, 32, 32, 1),
                                                ),
                                                padding: EdgeInsets.all(16),
                                                child: Text(
                                                  'gfdg',
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
                                          ],
                                        ),

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