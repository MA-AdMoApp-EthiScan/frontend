import 'package:flutter/material.dart';
import 'package:ethiscan/domain/entities/firestore/certification.dart';
import 'package:ethiscan/presentation/core/custom_texts.dart';

class CertificationWidget extends StatelessWidget {
  final List<Certification> certifications;

  const CertificationWidget({super.key, required this.certifications});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: certifications.map((certification) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Image.network(
                certification.imageUrl,
                width: 50,
                height: 50,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomH3(certification.name),
                    CustomText(certification.description),
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
