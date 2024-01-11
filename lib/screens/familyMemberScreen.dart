import 'package:flutter/material.dart';
import 'package:tuko_app/component/ItemWidget.dart';
import 'package:tuko_app/models/Item Model.dart';

class FamilyMemberScreen extends StatelessWidget {
  const FamilyMemberScreen({super.key});

  final List<ItemModel> family = const [
    ItemModel(
        enName: "Sofu",
        jpName: "Grandfather",
        image: "assets/images/family_members/family_grandfather.png",
        sound: "sounds/family_members/grand father.wav"),
    ItemModel(
        enName: "Sobo",
        jpName: "Grandmother",
        image: "assets/images/family_members/family_grandmother.png",
        sound: "sounds/family_members/grand mother.wav"),
    ItemModel(
        enName: "Chichioya",
        jpName: "Father",
        image: "assets/images/family_members/family_father.png",
        sound: "sounds/family_members/father.wav"),
    ItemModel(
        enName: "Hahaoya",
        jpName: "Mother",
        image: "assets/images/family_members/family_mother.png",
        sound: "sounds/family_members/mother.wav"),
    ItemModel(
        enName: "Ani",
        jpName: "Older Brother",
        image: "assets/images/family_members/family_older_brother.png",
        sound: "sounds/family_members/older sister.wav"),
    ItemModel(
        enName: "Ane",
        jpName: "Older Sister",
        image: "assets/images/family_members/family_older_sister.png",
        sound: "sounds/family_members/older sister.wav"),
    ItemModel(
        enName: "Musuko",
        jpName: "Son",
        image: "assets/images/family_members/family_son.png",
        sound: "sounds/family_members/son.wav"),
    ItemModel(
        enName: "Musume",
        jpName: "Daughter",
        image: "assets/images/family_members/family_daughter.png",
        sound: "sounds/family_members/daughter.wav"),
    ItemModel(
        enName: "Otōto",
        jpName: "Younger Brother",
        image: "assets/images/family_members/family_younger_brother.png",
        sound: "sounds/family_members/younger brohter.wav"),
    ItemModel(
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
