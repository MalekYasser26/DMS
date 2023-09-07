import 'package:doctor_management_system/core/constants/assets_data.dart';

class BoardingModel {
  final String image;

  const BoardingModel(this.image);
}

List<BoardingModel> boardingItems = [
  const BoardingModel(AssetsData.boarding1),
  const BoardingModel(AssetsData.boarding2),
  const BoardingModel(AssetsData.boarding3),
];
