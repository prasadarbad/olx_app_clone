import 'package:flutter/material.dart';
import 'package:olx_app_clone/widgets/exgridview.dart';

class ExGridTile extends StatelessWidget {
  const ExGridTile({Key? key, this.choice}) : super(key: key);
  final Choice? choice;
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.grey, shape: BoxShape.circle),
              child: Center(
                child: Image.asset(
                  choice!.path as String,
                  height: 65,
                  width: 50,
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              choice!.title as String,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
