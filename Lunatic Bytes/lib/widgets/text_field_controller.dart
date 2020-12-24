part of 'widgets.dart';

class TextFieldController extends StatelessWidget {
  final TextEditingController controller;
  final String labelHint;
  final bool obsecure;

  TextFieldController({
    @required this.controller,
    @required this.labelHint,
    @required this.obsecure,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        labelText: labelHint,
        hintText: labelHint,
      ),
      obscureText: obsecure,
    );
  }
}
