import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);

  final images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvoSuexQoraIJ3Xc8Qde7Y_A-7v7vfwWxveA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvoSuexQoraIJ3Xc8Qde7Y_A-7v7vfwWxveA&usqp=CAU',
    'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg',
    'https://news.value-press.com/wp-content/uploads/interview_top_image_pakutaso.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvoSuexQoraIJ3Xc8Qde7Y_A-7v7vfwWxveA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvoSuexQoraIJ3Xc8Qde7Y_A-7v7vfwWxveA&usqp=CAU',
    'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg',
    'https://news.value-press.com/wp-content/uploads/interview_top_image_pakutaso.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvoSuexQoraIJ3Xc8Qde7Y_A-7v7vfwWxveA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvoSuexQoraIJ3Xc8Qde7Y_A-7v7vfwWxveA&usqp=CAU',
    'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg',
    'https://news.value-press.com/wp-content/uploads/interview_top_image_pakutaso.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Instagram'),
        elevation: 0,
        titleTextStyle: TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        leading: const Icon(
          Icons.arrow_back_ios,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          Icon(Icons.more_horiz),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Image.network(
                    'https://www.onecruise.co.jp/degiodegiko/wp-content/uploads/2022/04/image1-2-768x768.png',
                    width: 60,
                    height: 60,
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        '7,041',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text('投稿'),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Column(
                    children: [
                      Text('4.6億',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                      Text('フォロワー'),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Column(
                    children: [
                      Text(
                        '99',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text('フォロー'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // 左揃えのために追加
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Instagram',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '#YoursToMake',
                    style: TextStyle(color: Colors.blue),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'help.instagram.com',
                    style: TextStyle(color: Colors.blue),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'フォロー中',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Icon(Icons.expand_more),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  Expanded(
                    flex: 6,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Text(
                        'メッセージ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 4), // 適宜調整してください
                  Expanded(
                    flex: 2,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              crossAxisCount: 3,
              children: images.map((imageUrl) {
                return InstagramPostItem(imageUrl: imageUrl);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class InstagramPostItem extends StatelessWidget {
  const InstagramPostItem({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
    );
  }
}
