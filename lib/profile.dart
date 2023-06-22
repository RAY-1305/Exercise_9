// ignore_for_file: avoid_print

import 'package:exercise/widget/avatar.dart';
import 'package:exercise/widget/gender.dart';
import 'package:exercise/widget/information.dart';
import 'package:exercise/widget/save_information.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({
    super.key,
  });

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController mailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  late final bool gender = true;

  void save() {
    print('name: ${nameController.text}');
    print('dob: ${dobController.text}');
    print('mail: ${mailController.text}');
    print('adress: ${addressController.text}');
    print('gender: ${gender ? 'male' : 'female'}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.center,
            child: Avatar(
              name: 'hoanganhquy',
              avartarUrl:
                  'https://lh3.googleusercontent.com/a/AAcHTtd7y1CevDMZtJOETlt7Ib6a60VhVwR8esnAUMWJ=s288-c-no',
              phone: '0906167090',
              isUpload: true,
            ),
          ),
          MyTextField(
            labelText: 'Họ & tên',
            controller: nameController,
            textInputType: TextInputType.name,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: MyTextField(
                  controller: dobController,
                  labelText: 'Ngày sinh',
                  textInputType: TextInputType.text,
                  suffixicon: const Icon(
                    Icons.edit_calendar_outlined,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Gender(
                gender: gender,
                onChanged: (value) {
                  print('value: $value');
                },
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          MyTextField(
            controller: mailController,
            textInputType: TextInputType.emailAddress,
            labelText: 'Email (không bắt buộc)',
          ),
          const SizedBox(
            height: 15,
          ),
          MyTextField(
            controller: addressController,
            textInputType: TextInputType.streetAddress,
            labelText: 'Địa chỉ',
          ),
          const SizedBox(
            height: 30,
          ),
          Button(
            onPressed: save,
          ),
        ],
      ),
    );
  }
}
