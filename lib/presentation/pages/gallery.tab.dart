import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/data/datasource/local_data_source.dart';
import 'package:portfolio/presentation/state_management/cubit/gallery_cubit.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

List<String> choices = [
  'All',
  'Cedrique Alvarez',
  'Jelica Panzuelo',
  'Norly Villanueva',
  'Janeth Ayura',
  'Marc Abanggo',
];

class GalleryTab extends StatelessWidget {
  const GalleryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      final selectedPerson =
          context.select((GalleryCubit gallery) => gallery.state);
      print(selectedPerson);
      return Padding(
        padding: EdgeInsets.all(1.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton(
              focusColor: Colors.transparent,
              underline: const SizedBox.shrink(),
              value: selectedPerson,
              hint: const Text('Filter Gallery'),
              items: choices.map((e) {
                return DropdownMenuItem(
                  value: e,
                  child: Text(e),
                );
              }).toList(),
              onChanged: (v) {
                context.read<GalleryCubit>().pickPerson(person: v!);
              },
            ),
            SizedBox(height: 1.h),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.zero,
                crossAxisCount: 5,
                mainAxisSpacing: 0.5.h,
                crossAxisSpacing: 0.5.h,
                children: selectedPerson == null
                    ? LocalDataSource.galleryPics.map((e) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(
                                e.image,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }).toList()
                    : LocalDataSource.galleryPics
                        .where(
                            (element) => element.name.contains(selectedPerson))
                        .map((e) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(
                                e.image,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }).toList(),
              ),
            ),
          ],
        ),
      );
    });
  }
}
