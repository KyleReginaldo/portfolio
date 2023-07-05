import 'package:flutter/material.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/data/datasource/local_data_source.dart';
import 'package:portfolio/presentation/extension/pdf.viewer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ResumeTab extends StatelessWidget {
  const ResumeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: LocalDataSource.persons.map((e) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(e.firstPicture),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (ctx) => PdfViewer(
                            pdf: e.pdf!,
                            name: e.name,
                          )));
            },
            contentPadding: EdgeInsets.all(1.h),
            title: Text(e.name),
            subtitle: Text(e.description),
            trailing: const TextButton(
              style: ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(primaryColor)),
              onPressed: null,
              child: Text('view pdf'),
            ),
          );
        }).toList(),
      ),
    );
  }
}
