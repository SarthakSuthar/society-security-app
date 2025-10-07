import 'package:flutter/material.dart';
import 'package:society_security_app/utils/app_utils.dart';
import 'package:society_security_app/widgets/input_box.dart';
import 'package:society_security_app/widgets/app_button.dart';
import 'package:society_security_app/widgets/app_container.dart';

void addPost(BuildContext context) {
  TextEditingController titleController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.grey[100],
    useRootNavigator: true, // Important: ensures it appears above the tab bar
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 5,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(height: 16),
            Text('Create Post', style: Theme.of(context).textTheme.titleLarge),

            const SizedBox(height: 16),

            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    'assets/images/man_avatar.jpg',
                    fit: BoxFit.scaleDown,
                    height: 40,
                    width: 40,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  "Sarthak Suthar",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Spacer(),

                AppContainer(
                  child: DropdownButton<String>(
                    isDense: true,
                    dropdownColor: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                    underline: Container(),
                    icon: const Icon(Icons.keyboard_arrow_down_rounded),
                    value: 'Notice',
                    onChanged: (String? newValue) {
                      // Handle dropdown value change
                    },
                    items: <String>['Notice', 'Announcement']
                        .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        })
                        .toList(),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            InputBox(contrller: titleController, hintText: "Title"),
            const SizedBox(height: 16),
            InputBox(
              contrller: messageController,
              hintText: "Message",
              minLines: 2,
            ),

            const SizedBox(height: 16),
            AppButton(
              text: "Post",
              onPressed: () {
                showlog("Add post button pressed!");
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      );
    },
  );
}
