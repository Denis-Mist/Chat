import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PersonChat extends StatefulWidget {
  const PersonChat({super.key});


  @override
  _PersonChat createState() => _PersonChat();
}

class _PersonChat extends State<PersonChat> {
  

  String url = "";

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null, "Check args");
    print(args);
    url = args.toString();
    setState(() {});
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
      appBar: PreferredSize(
  preferredSize: const Size.fromHeight(214.0), 
  child: Column(
    children: [
      Expanded( // Use Expanded to fill the top 4/5 of the space
        flex: 3, 
        child: AppBar(
          backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
          // title: _buildThumbnailImage(url),
           title: Row( 
 mainAxisAlignment: MainAxisAlignment.spaceBetween, // Add space between elements
  children: [
    _buildThumbnailImage(url), // Your thumbnail image on the left
    IconButton(
      icon: SvgPicture.asset('lib/assets/button.svg'),
      onPressed: () {}, // Add your onPressed callback here
      padding: EdgeInsets.only(top: 4), // Remove left padding
      constraints: BoxConstraints.tightFor(width: 4, height: 16),
    ),
  ],
),

        ),
      ),
      Container( // Wrap the purple container with another container to add margin
        //margin: const EdgeInsets.only(bottom: 10), // Add 10px margin at the bottom
        child: Expanded( // Use Expanded to fill the bottom 1/5 of the space
          flex: 1,
          child: Container(
            width: double.infinity, 
            decoration: BoxDecoration(
              color: Color.fromRGBO(116, 70, 172, 1),
              borderRadius: BorderRadius.circular(1),
            ),
            child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items to the edges
            children: [
              Row( // Group the icon, text, and rocket together
                children: [
                  //SvgPicture.asset('lib/assets/rock.svg'), 
                  // IconButton(
                  //   icon: Image.asset(
                  //   'lib/assets/rock2.png',width: 20,height: 21,),
                  //   onPressed: () {
                  //     // handle help button press
                  //   },
                  // ),
                  SizedBox(width: 16),
              _buildThumbnailImage2(),
        //           Image.asset(
        // 'lib/assets/rock.png',width: 20,height: 21,),
                  SizedBox(width: 8), // Add some spacing
                  Text(
                    '2 общих соблазна',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      fontSize: 13,
                      height: 14.94 / 13, // Calculate line height
                      color: Color.fromRGBO(246, 244, 244, 1),
                    ),
                  ), 
                ],
              ),
              IconButton(onPressed: () => {},
               icon: Icon(Icons.close, color: Color.fromRGBO(246, 244, 244, 1),size: 15),
               ) ,
               
            ],
          ),
          ),
          
        ),
      ),
      Expanded( // Use Expanded to fill the bottom 1/5 of the space
          flex: 1,
          child: Container(),
      ),
    ],
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
                  Expanded(
                    flex: 8,
                    child: Container(
                      width: 89,
                      height: 21,
                      child: Center(
                        child: Text(
                          'Начни общение',
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            height: 21 / 12, // to match line height
                            color: Color.fromRGBO(141, 141, 141, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Container(), flex: 12,),
                  Expanded(  
                    flex: 3,
                    child: Row(  
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: () => {}, icon: SvgPicture.asset('lib/assets/plus.svg'),),
                        
                        Container(
                          width: 295,
                          height: 33,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Color.fromRGBO(141, 141, 141, 1),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          padding: EdgeInsets.fromLTRB(12, 5, 12, 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribute space evenly
                            children: [
                              Expanded( // Allow the TextField to occupy most of the space
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(top: -22), // Adjust the top padding
                                    hintStyle: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(141, 141, 141, 1),
                                    ),
                                    hintText: 'Сообщение...',
                                  ),
                                ),
                              ),
                              IconButton( // Add the IconButton for the button
                                onPressed: () {}, // Implement your button's functionality
                                icon: SvgPicture.asset('lib/assets/sova.svg',width: 20,height: 20,), // Choose a suitable icon
                              ),
                            ],
                          ),
                        ),
                        IconButton(onPressed: () => {}, icon: SvgPicture.asset('lib/assets/micro.svg'),),
                        


                      ],
                    ),
                  ),
                  Expanded(  
                    flex: 2,
                    child: Container(),
                  )
                ],
              ),
            ),
            ),
          ],
      ),
    );
  }
}


Widget _buildThumbnailImage(String url) {
    return SizedBox(
      width: 30,
      height: 30,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: Image.network(
          url,
          fit: BoxFit.fill,
          errorBuilder: (
            BuildContext context,
            Object exception,
            StackTrace? stackTrace,
          ) {
            return CircleAvatar(
              radius: 32,
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              child: Text('A'),
            );
          },
        ),
      ),
    );
  }


  Widget _buildThumbnailImage2() {
  return SizedBox(
    width: 30,
    height: 30,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: Image.asset(
        'lib/assets/rock2.png',width: 20,height: 21, 
        fit: BoxFit.fill,
        errorBuilder: (
          BuildContext context,
          Object exception,
          StackTrace? stackTrace,
        ) {
          return CircleAvatar(
            radius: 32,
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            child: Text('A'),
          );
        },
      ),
    ),
  );
}