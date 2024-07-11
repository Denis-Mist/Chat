import 'package:flutter/material.dart';

class ChatBubbleH extends StatefulWidget {
  final String last_mes;
  const ChatBubbleH({
    required this.last_mes,
  });

  @override
  State<StatefulWidget> createState() => _ChatBubbleH();
}

class _ChatBubbleH extends State<ChatBubbleH> {
  Widget _buildThumbnailImage() {
  return SizedBox(
    width: 64,
    height: 64,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: Image.asset(
        'lib/assets/heart.png', // replace with your png image asset
        fit: BoxFit.fill,
        errorBuilder: (
          BuildContext context,
          Object exception,
          StackTrace? stackTrace,
        ) {
          return CircleAvatar(
            radius: 32,
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            child: Text(widget.last_mes[0]),
          );
        },
      ),
    ),
  );
}

  @override
Widget build(BuildContext context) {
  return InkWell(
    onTap: () {
      // Add your tap event handler here
      print('Chat bubble tapped');
    },
    child: Container(
      margin: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
      padding: const EdgeInsets.only(left: 3, right: 3),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          _buildThumbnailImage(),
          const Padding(padding: EdgeInsets.only(right: 12)),
          Expanded(
            child: Text(
              widget.last_mes,
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                height: 1.5, // equivalent to line height of 21px
                color: Color.fromRGBO(246, 244, 244, 1),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(right: 12)),
        ],
      ),
    ),
  );
}
}