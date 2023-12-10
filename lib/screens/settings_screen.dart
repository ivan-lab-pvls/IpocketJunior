import 'package:calculator/constants/colors.dart';
import 'package:calculator/widgets/half_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:in_app_review/in_app_review.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Einstellungen",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  'Datenschutzrichtlinie',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ShowView(
                              content:
                                  'https://docs.google.com/document/d/12p544HgtJxDSVs_fq2U240OWn7_r5QzPwpFZnWJj2nU/edit?usp=sharing')));
                },
              ),
              _buildDivider(),
              ListTile(
                title: Text(
                  'Nutzungsbedingungen',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ShowView(
                              content:
                                  'https://docs.google.com/document/d/1TR3bGqOrUUUYXWXSuzPPOtRTX5i5aQ3gUiZsxNbQGe8/edit?usp=sharing')));
                },
              ),
              _buildDivider(),
              ListTile(
                title: Text(
                  'Bewerten Sie unsere App im AppStore',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  InAppReview.instance.openStoreListing(
                    appStoreId: '6474095943',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildDivider() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 16.0),
    width: double.infinity,
    height: 0.5,
    color: Colors.grey,
  );
}
