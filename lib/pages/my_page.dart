import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('マイページ')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(40),
              child: Row(
                children: [
                  Image.network(
                    'https://cdn-ak.f.st-hatena.com/images/fotolife/U/U-kimidaihuku/20231101/20231101232130.png',
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
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              children: [
                InstagramPostItem(
                    imageUrl:
                        'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg'),
                InstagramPostItem(
                    imageUrl:
                        'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg'),
                InstagramPostItem(
                    imageUrl:
                        'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg'),
                InstagramPostItem(
                    imageUrl:
                        'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg'),
                InstagramPostItem(
                    imageUrl:
                        'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg'),
                InstagramPostItem(
                    imageUrl:
                        'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg'),
                InstagramPostItem(
                    imageUrl:
                        'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg'),
                InstagramPostItem(
                    imageUrl:
                        'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg'),
                InstagramPostItem(
                    imageUrl:
                        'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg'),
                InstagramPostItem(
                    imageUrl:
                        'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg'),
                InstagramPostItem(
                    imageUrl:
                        'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg'),
                InstagramPostItem(
                    imageUrl:
                        'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg'),
                InstagramPostItem(
                    imageUrl:
                        'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg'),
                InstagramPostItem(
                    imageUrl:
                        'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg'),
                InstagramPostItem(
                    imageUrl:
                        'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg'),
                InstagramPostItem(
                    imageUrl:
                        'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg'),
                InstagramPostItem(
                    imageUrl:
                        'https://www.pakutaso.com/shared/img/thumb/kaigoIMGL8113.jpg'),
              ],
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
