import 'package:flutter/material.dart';
import 'package:tuko_app/component/family_member_item.dart';
import 'package:tuko_app/models/family_member_model.dart';

class FamilyMemberScreen extends StatelessWidget {
  FamilyMemberScreen({super.key});

  final List<FamilyMemberModel> family = [
    FamilyMemberModel(
        enName: "Sofu",
        jpName: "Grandfather",
        image: "assets/images/family_members/family_grandfather.png",
        sound: "sounds/family_members/grand father.wav"),
    FamilyMemberModel(
        enName: "Sobo",
        jpName: "Grandmother",
        image: "assets/images/family_members/family_grandmother.png",
        sound: "sounds/family_members/grand mother.wav"),
    FamilyMemberModel(
        enName: "Chichioya",
        jpName: "Father",
        image: "assets/images/family_members/family_father.png",
        sound: "sounds/family_members/father.wav"),
    FamilyMemberModel(
        enName: "Hahaoya",
        jpName: "Mother",
        image: "assets/images/family_members/family_mother.png",
        sound: "sounds/family_members/mother.wav"),
    FamilyMemberModel(
        enName: "Ani",
        jpName: "Older Brother",
        image: "assets/images/family_members/family_older_brother.png",
        sound: "sounds/family_members/older sister.wav"),
    FamilyMemberModel(
        enName: "Ane",
        jpName: "Older Sister",
        image: "assets/images/family_members/family_older_sister.png",
        sound: "sounds/family_members/older sister.wav"),
    FamilyMemberModel(
        enName: "Musuko",
        jpName: "Son",
        image: "assets/images/family_members/family_son.png",
        sound: "sounds/family_members/son.wav"),
    FamilyMemberModel(
        enName: "Musume",
        jpName: "Daughter",
        image: "assets/images/family_members/family_daughter.png",
        sound: "sounds/family_members/daughter.wav"),
    FamilyMemberModel(
        enName: "Otōto",
        jpName: "Younger Brother",
        image: "assets/images/family_members/family_younger_brother.png",
        sound: "sounds/family_members/younger brohter.wav"),
    FamilyMemberModel(
        enName: "Imōto",
        jpName: "Younger Sister",
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
