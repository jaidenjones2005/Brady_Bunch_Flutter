# Brady Bunch Flutter Project

## Phase 1: Asset Configuration & BradyTile Widget

**How did you configure your pubspec.yaml to register the images?**

I created an assets/images folder and placed the nine Brady Bunch images inside it. I then added the folder under the flutter section in pubspec.yaml and ran flutter pub get so Flutter could recognize the assets.

**What happens when you display a large image without container constraints?**

A large image can take up too much screen space and potentially cause layout overflow. I used a SizedBox to control the size of my BradyTile so the image would fit within the available space.

**How does BoxFit.cover handle scaling?**

BoxFit.cover scales the image while keeping its original proportions. It fills the available space and may crop part of the displayed image if the image and container have different aspect ratios. The original image file remains unchanged.

**Challenges:**

I had to make sure the image folder was registered correctly and that the asset path matched the actual filename. I also learned how to create a reusable StatelessWidget instead of placing all the image styling directly in main.dart.
