import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuko_app/models/family_member_model.dart';

class FmailyMemberItem extends StatelessWidget {
  const FmailyMemberItem({super.key, required this.member});

  final FamilyMemberModel member;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff538036),
      child: Row(
        children: [
          Container(
            height: 110,
            decoration: BoxDecoration(
              color: Color(0xfffff3d9),
            ),
            child: Image(
              image: AssetImage(member.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  member.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  member.jpName,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 3,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
