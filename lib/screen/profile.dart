import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fmylife/util/app_layout.dart';
import 'package:fmylife/util/app_styles.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(14),
      child: ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(40),
                width: AppLayout.getWidth(40),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/hoa anh dao.png'))),
              ),
              SizedBox(
                width: AppLayout.getWidth(12),
              ),
              Column(
                children: [
                  Text(
                    "Book tickets",
                    style: Styles.headline1,
                  ),
                  Text(
                    "New York",
                    style: Styles.textStyle2,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                            radius: 10,
                            child: Icon(
                              size: 12,
                              Icons.shield,
                            )),
                        SizedBox(
                          width: AppLayout.getWidth(10),
                        ),
                        const Text("Premium status")
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
              InkWell(
                onTap: () {},
                child: Text(
                  "Edit",
                  style: Styles.textStyle2,
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
