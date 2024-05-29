import 'package:anbar/common_widgets/background_widget.dart';
import 'package:anbar/consts/consts.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: notification.text.white.fontFamily(medium).make(),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Container(
        ),
      ),
    );
  }
}
