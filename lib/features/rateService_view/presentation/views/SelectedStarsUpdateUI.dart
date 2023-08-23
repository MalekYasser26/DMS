List<bool> selectedStars = List.generate(5, (index) => false);
void updateSelectedStars(int selectedStarIndex) {
  for (int i = 0; i < selectedStars.length; i++) {
    selectedStars[i] = i <= selectedStarIndex;
  }
}