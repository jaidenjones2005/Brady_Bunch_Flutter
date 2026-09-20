# Brady Bunch Flutter Project

## Phase 1: Asset Configuration \& BradyTile Widget

**How did you configure your pubspec.yaml to register the images?**

I created an assets/images folder and placed the nine Brady Bunch images inside it. I then added the folder under the flutter section in pubspec.yaml and ran flutter pub get so Flutter could recognize the assets.

**What happens when you display a large image without container constraints?**

A large image can take up too much screen space and potentially cause layout overflow. I used a SizedBox to control the size of my BradyTile so the image would fit within the available space.

**How does BoxFit.cover handle scaling?**

BoxFit.cover scales the image while keeping its original proportions. It fills the available space and may crop part of the displayed image if the image and container have different aspect ratios. The original image file remains unchanged.

**Challenges:**

I had to make sure the image folder was registered correctly and that the asset path matched the actual filename. I also learned how to create a reusable StatelessWidget instead of placing all the image styling directly in main.dart.

## Phase 2: Horizontal Flex Layout with Row and Expanded

**What happens if you remove Expanded from one of the three tiles in the Row?**

If I remove Expanded from one tile, it no longer receives an equal share of the available width. This can make the images uneven or cause horizontal overflow if the image takes up too much space.

**How does Expanded communicate size constraints down to your BradyTile?**

Expanded divides the available width between the three BradyTile widgets. Since they all have the same flex value, each tile gets one-third of the Row's available width. This helps the layout adjust to different screen sizes.

**Challenges:**

I implemented a Row with three BradyTile widgets and wrapped each one in Expanded. I also ran into a Flutter file-permission error that prevented me from verifying the layout in Chrome. I plan to resolve that issue before the final submission.

## Phase 3: The Complete 3x3 Flex Grid

**Describe how nesting Expanded widgets both vertically and horizontally enforces Flutter's Golden Rule: "Constraints go down, Sizes go up."**

I used a Column containing three Rows to create the 3x3 grid. Each Row is wrapped in Expanded, which divides the available screen height into three equal sections. Inside each Row, I wrapped the BradyTile widgets in Expanded so they each receive an equal share of the available width.

This demonstrates Flutter's Golden Rule because the parent widgets pass size constraints down to their children. The children determine their sizes within those constraints, and those sizes are reported back up the widget tree.

By using Expanded in both directions, I can create a balanced layout that adjusts to different screen sizes without manually setting the width and height of every image.

**Challenges:**

I combined Row and Column with Expanded to arrange all nine family members. I also continued working around the Flutter file-permission issue that prevented me from testing the app in Chrome. I still need to verify the complete layout before submitting the final project.




## Phase 4: Refactoring to a GridView Architecture

**Compare building a 3x3 grid using nested Row/Column with Expanded versus GridView.count. What are the trade-offs between constraint control, code simplicity, and flexibility?**

Using Row and Column with Expanded gives me more direct control over how the available width and height are divided. However, it requires more nested widgets, which can make the code harder to read as the layout becomes more complicated.

GridView.count simplifies the layout because I can specify three columns and provide the nine BradyTile widgets directly. Flutter handles the arrangement of the grid cells instead of requiring me to create separate Rows.

I used LayoutBuilder to calculate the cell aspect ratio so all three rows could fit within the available screen height. I also used NeverScrollableScrollPhysics to prevent the grid from scrolling.

For this project, GridView.count makes the code easier to organize, while the Row and Column approach helped me better understand how Flutter passes constraints between widgets.

**Challenges:**

I refactored the nested Row and Column layout into GridView.count while keeping my reusable BradyTile widget. I still need to verify the final layout in Chrome because of the earlier Flutter file-permission issue.
