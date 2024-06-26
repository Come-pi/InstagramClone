import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 4.0,
        // bottomOpacity: 2.0,
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('INSTAGRAM',
                // textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 143, 143, 143),
                    fontWeight: FontWeight.bold)),
            Text('投稿',
                // textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        leading: const Icon(
          Icons.arrow_back_ios,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Image.network(
                  'https://www.onecruise.co.jp/degiodegiko/wp-content/uploads/2022/04/image1-2-768x768.png',
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      'Instagram',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'サンディエゴ',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.more_horiz),
              ], //children
            ),
          ),
          Image.network(
            'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Icon(
                Icons.favorite_border,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.chat_bubble_outline,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.near_me,
                size: 30,
              ),
              Spacer(),
              Icon(
                Icons.bookmark_border,
                size: 30,
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '『いいね！』704,899件',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'instagram "Style and sustainability don\'t have to be two separate things. They can be one and the same, and sustainable living itself should be...  instagram "Style and sustainability don\'t have to be two separate things. They can be one and the same, and sustainable living itself should be... instagram "Style and sustainability don\'t have to be two separate things. They can be one and the same, and sustainable living itself should be...instagram "Style and sustainability don\'t have to be two separate things. They can be one and the same, and sustainable living itself should be...instagram "Style and sustainability don\'t have to be two separate things. They can be one and the same, and sustainable living itself should be...instagram "Style and sustainability don\'t have to be two separate things. They can be one and the same, and sustainable living itself should be...instagram "Style and sustainability don\'t have to be two separate things. They can be one and the same, and sustainable living itself should be...instagram "Style and sustainability don\'t have to be two separate things. They can be one and the same, and sustainable living itself should be...',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
