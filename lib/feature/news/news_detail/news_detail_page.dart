import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:kids_trakr/feature/news/news_detail/news_detail_controller.dart';
import 'package:kids_trakr/feature/news/widgets/content_background.dart';
import 'package:kids_trakr/gen/assets.gen.dart';
import 'package:kids_trakr/utils/theme/app_color.dart';
import 'package:kids_trakr/utils/widgets/primary_appbar.dart';
import 'package:kids_trakr/utils/widgets/primary_button.dart';

class NewsDetailPage extends GetView<NewsDetailController> {
  const NewsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        title: "News",
        showBackButton: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ContentBackground(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      Assets.images.firstNews.path,
                      width: double.infinity,
                      height: 170,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        width: double.infinity,
                        height: 170,
                        color: Colors.grey.shade200,
                        child: const Icon(
                          Icons.image_not_supported,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Undangan Pentas Anak",
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  const Divider(
                    color: AppColors.text30,
                    thickness: 1,
                    height: 24,
                    indent: 16,
                    endIndent: 16,
                  ),
                  const SizedBox(height: 8),
                  Html(
                    data: controller.dummyHtmlContent,
                    style: {
                      "body": Style(
                        margin: Margins.zero,
                        padding: HtmlPaddings.zero,
                        color: Colors.black87,
                        fontSize: FontSize(14.0),
                      ),
                      "p": Style(
                        margin: Margins.only(bottom: 12.0),
                        textAlign: TextAlign.justify,
                        lineHeight: LineHeight.em(1.5),
                      ),
                    },
                  ),
                  const SizedBox(height: 36),
                ],
              ),
            ),

            Positioned(
              bottom: 16,
              right: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: PrimaryButton(text: "Unduh Undangan", onPressed: () {}),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
