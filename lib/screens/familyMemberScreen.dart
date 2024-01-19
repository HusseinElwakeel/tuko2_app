import 'package:flutter/material.dart';
import 'package:tuko_app/Constant/familyMemberScreenConstant.dart';
import 'package:tuko_app/component/ItemWidget.dart';
import 'package:tuko_app/models/Item Model.dart';

class FamilyMemberScreen extends StatelessWidget {
  const FamilyMemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family Member"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ItemWidget(
            member: family[index],
            color: Color(0xff538036),
          );
        },
        itemCount: family.length,
      ),
    );
  }
}
