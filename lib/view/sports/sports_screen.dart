import 'package:flutter/material.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        itemBuilder: (ctx, index) => SizedBox(
          height: 110,
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.antiAlias,
                child: FadeInImage.assetNetwork(
                  fit: BoxFit.cover,
                  placeholder: 'assets/images/place_holder.png',
                  image: 'https://www.w3schools.com/css/img_lights.jpg',
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Expanded(
                      child: Text(
                        "hello jh jh jh j hjh jh jh jh jh jh hello jh jh jh j hjh jh jh jh jh jhhello jh jh jh j hjh jh jh jh jh jhhello jh jh jh j hjh jh jh jh jh jh",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        maxLines:4,
                        overflow: TextOverflow.visible,
                      ),
                    ),

                    Text(
                      '2022 25 9 15c5e',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                      maxLines: 1,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        separatorBuilder: (ctx, index) => const Divider(
          thickness: 1,
          height: 20,
          indent: 20,
          endIndent: 20,
          color: Colors.grey,
        ),
        itemCount: 10,
      ),
    );
  }
}
