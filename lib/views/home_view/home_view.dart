import 'package:medical_app/components/custom_text_field.dart';
import 'package:medical_app/consts/colors.dart';
import 'package:medical_app/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColors.blueColor,
        title: AppStyles.bold(
            title: "${AppStrings.welcome} User",
            size: AppSizes.size18,
            color: const Color(0xffffffff)),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 120,
            color: AppColors.blueColor,
            child: const CustomTextField(
              hintText: AppStrings.search,
              suffixIcon: Icon(Icons.search),
            ),
          ),
          20.heightBox,
          Expanded(
            child: ListView.separated(
              itemCount: 5,
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(right: 10),
                  height: 44,
                  width: 44,
                  constraints:
                      const BoxConstraints(maxHeight: 44, minHeight: 44),
                  color: AppColors.yelloColor,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
