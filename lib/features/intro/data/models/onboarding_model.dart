import 'package:doctor_management_system/core/constants/assets/assets_images.dart';

class BoardingModel {
  final String image;

  const BoardingModel(this.image);
}

List<BoardingModel> boardingItems = [
  const BoardingModel(AssetsImages.boarding1),
  const BoardingModel(AssetsImages.boarding2),
  const BoardingModel(AssetsImages.boarding3),
];
