import 'package:flutter/material.dart';
import 'package:tuko_app/component/family_member_item.dart';
import 'package:tuko_app/models/family_member_model.dart';

class FamilyMemberScreen extends StatelessWidget {
  FamilyMemberScreen({super.key});

  final List<FamilyMemberModel> family = [
    FamilyMemberModel(
        enName: "father",
        jpName: "jpName",
        image: "assets/images/family_members/family_father.png",
        sound: "sounds/family_members/father.wav"),
    FamilyMemberModel(
        enName: "mother",
        jpName: "jpName",
        image: "assets/images/family_members/family_mother.png",
        sound: "sounds/family_members/mother.wav"),
    FamilyMemberModel(
        enName: "daughter",
        jpName: "jpName",
        image: "assets/images/family_members/family_daughter.png",
        sound: "sounds/family_members/daughter.wav"),
    FamilyMemberModel(
        enName: "grandfather",
        jpName: "jpName",
        image: "assets/images/family_members/family_grandfather.png",
        sound: "sounds/family_members/grand father.wav"),
    FamilyMemberModel(
        enName: "grandmother",
        jpName: "jpName",
        image: "assets/images/family_members/family_grandmother.png",
        sound: "sounds/family_members/grand mother.wav"),
    FamilyMemberModel(
        enName: "older_brother",
        jpName: "jpName",
        image: "assets/images/family_members/family_older_brother.png",
        sound: "sounds/family_members/older bother.wav"),
    FamilyMemberModel(
        enName: "older_sister",
        jpName: "jpName",
        image: "assets/images/family_members/family_older_sister.png",
        sound: "sounds/family_members/older sister.wav"),
    FamilyMemberModel(
        enName: "son",
        jpName: "jpName",
        image: "assets/images/family_members/family_son.png",
        sound: "sounds/family_members/son.wav"),
    FamilyMemberModel(
        enName: "younger_brother",
        jpName: "jpName",
        image: "assets/images/family_members/family_younger_brother.png",
        sound: "sounds/family_members/younger brohter.wav"),
    FamilyMemberModel(
        enName: "younger_sister",
        jpName: "jpName",
        image: "assets/images/family_members/family_younger_sister.png",
        sound: "sounds/family_members/younger sister.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family Member"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return FmailyMemberItem(
            member: family[index],
          );
        },
        itemCount: family.length,
      ),
    );
  }
}
