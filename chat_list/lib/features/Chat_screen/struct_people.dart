import 'package:flutter/material.dart';

class ChatBubble extends StatefulWidget {
  final String imageUrl;
  final String last_mes;
  final String time;
  const ChatBubble({
    required this.imageUrl,
    required this.last_mes,
    super.key, required this.time,
  });

  @override
  State<StatefulWidget> createState() => _ChatBubble();
}

class _ChatBubble extends State<ChatBubble> {
  Widget _buildThumbnailImage() {
    return SizedBox(
      width: 64,
      height: 64,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: Image.network(
          widget.imageUrl,
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
      print('Chat bubble tapped');
      Navigator.pushNamed(
                              context, 
                              'person_chat',
                              arguments: widget.imageUrl,
                            );
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.time,
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    height: 1.75, // To achieve a line height of 21px
                    color: Color.fromRGBO(246, 244, 244, 1),
                  ),
                ),
                Text(
                    widget.last_mes,
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      height: 1.5, // To achieve a line height of 21px
                      color: Color.fromRGBO(246, 244, 244, 1),
                    ),
                    overflow: TextOverflow.ellipsis, // To ensure the text fits within the 134px width
                    maxLines: 1, // To ensure the text fits within the 134px width
                  ),
                // Другие элементы, такие как последнее сообщение или время, могут быть добавлены здесь
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.only(right: 12)),
        ],
      ),
    ),
  );
}
}