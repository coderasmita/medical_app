import 'package:medical_app/consts/consts.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    this.onPressed,
    this.icon,
    this.width,
    this.height,
    this.color,
  });
  final String title;
  final Function()? onPressed;
  final Widget? icon;
  final double? width;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          minimumSize:
              Size(width ?? MediaQuery.sizeOf(context).width, height ?? 50)),
      child: Text(title),
    );
  }
}
