import 'package:doctor_management_system/core/constants/assets.dart';

class BoardingModel {
  final String image;

  BoardingModel(this.image);
}

List<BoardingModel> boardingItems = [
  BoardingModel(AssetsData.boarding1),
  BoardingModel(AssetsData.boarding2),
  BoardingModel(AssetsData.boarding3),
];
