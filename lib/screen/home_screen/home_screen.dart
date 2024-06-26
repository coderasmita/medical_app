import 'package:medical_app/components/custom_text_field.dart';
import 'package:medical_app/consts/colors.dart';
import 'package:medical_app/consts/consts.dart';
import 'package:medical_app/consts/list.dart';
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
      body: SingleChildScrollView(
        child: Column(
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
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 10),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.blueColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            margin: const EdgeInsets.only(right: 8),

                            // constraints:
                            //     const BoxConstraints(maxHeight: 10, minHeight: 10),

                            child: Column(
                              children: [
                                Image.asset(
                                  iconsList[index],
                                  width: 50,
                                ),
                                5.heightBox,
                                AppStyles.normal(
                                  title: iconsTitleList[index],
                                  size: AppSizes.size18,
                                  color: const Color(0xffffffff),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  20.heightBox,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: AppStyles.bold(
                      title: "Favorite Doctor",
                      color: AppColors.textColor,
                      size: AppSizes.size18,
                    ),
                  ),
                  // List view icon and name
                  10.heightBox,
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.only(right: 8),
                          height: 100,
                          width: 100,
                          child: Column(
                            children: [
                              Image.asset(
                                AppAssets.doctor,
                                width: 50,
                              ),
                              Divider(),
                              AppStyles.normal(
                                title: "Doctor Name",
                              ),
                              AppStyles.normal(
                                title: "Category",
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: AppStyles.normal(
                          title: "View All", color: AppColors.blueColor),
                    ),
                  ),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      4,
                      (index) => Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 100,
                        child: Column(
                          children: [
                            Image.asset(
                              AppAssets.isHeart,
                              width: 50,
                            ),
                            5.heightBox,
                            AppStyles.normal(
                              title: "Lab Test",
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
