import 'package:flutter/material.dart';
import 'animal_list_item.dart';

Container buildAnimalListContainer(List animal) {
  return Container(
    height: 175.0,
    margin: const EdgeInsets.only(left: 12.0),
    child: ListView.builder(
      itemCount: animal.length,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          child: buildItem(index, animal, context),
        );
      },
    ),
  );
}

