# Individual Assignment ICM661

This is a FlutterFlow-exported Flutter project for the ICM661 individual assignment.

## App Function

The app is a simple to-do list with:

- Add task
- Delete task
- Edit/update task
- Select/update due date using a calendar date picker
- Local persistence through FlutterFlow app state/shared preferences

## Main Files

- `lib/pages/home_page/home_page_widget.dart`
- `lib/components/addtaskform_widget.dart`
- `lib/components/addtaskform_model.dart`
- `lib/app_state.dart`
- `lib/backend/schema/structs/task_type_struct.dart`

## Fixes Included

- The delete button removes from `myTasks`, which is the list shown on the HomePage.
- Editing a task updates the selected task instead of adding a duplicate.
- The selected due date is saved into each task.
- The HomePage displays the actual due date instead of fixed placeholder text.

## How To Put On GitHub

1. Create a new GitHub repository.
2. Upload all files and folders from this project folder.
3. Commit the files on GitHub.
4. In FlutterFlow, open the Developer Menu.
5. Choose `Connect GitHub Repo`.
6. Select the repository you created.

## Project Name

Individual Assignment ICM661
