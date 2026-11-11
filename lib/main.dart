import 'package:flutter/material.dart';

void main() {
  runApp(const AlMizanApp());
}

class AlMizanApp extends StatelessWidget {
  const AlMizanApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'تطبيق الميزان',
      debugShowCheckedModeBanner: false,
      // تخصيص الألوان والثيم ليتناسب مع الهوية الفاخرة (أزرق داكن مع لمسات ذهبية)
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFF0F172A), // لون داكن فخم (Dark Theme)
        fontFamily: 'Cairo', // الخط العربي المريح للقرآن والأذكار
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'تطبيق الميزان ⚖️',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF1E293B),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // بطاقة ترحيبية بهوية التطبيق
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF1E293B),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFFD4AF37), width: 1.5), // حدود ذهبية للميزان
              ),
              child: const Column(
                children: [
                  Text(
                    'مرحباً بك في تطبيق الميزان',
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFFD4AF37), // لون ذهبي
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'رفيقك اليومي للقرآن، الأذكار، الأحاديث، وتتبع العبادات بدون إنترنت وبدون إعلانات.',
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            
            // شبكة أقسام التطبيق الرئيسية (أزرار التنقل)
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: [
                  _buildFeatureCard(context, 'القرآن الكريم', Icons.book),
                  _buildFeatureCard(context, 'الأذكار اليومية', Icons.wb_sunny),
                  _buildFeatureCard(context, 'بوصلة القبلة', Icons.explore),
                  _buildFeatureCard(context, 'أحكام التجويد', Icons.school),
                  _buildFeatureCard(context, 'الأحاديث النبوية', Icons.format_quote),
                  _buildFeatureCard(context, 'إعدادات التطبيق', Icons.settings),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // دالة مساعدة لتصميم بطاقات الأقسام بشكل مرتب
  Widget _buildFeatureCard(BuildContext context, String title, IconData icon) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          // سيتم إضافة الانتقال للشاشات لاحقاً
        },
        borderRadius: BorderRadius.circular(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: const Color(0xFFD4AF37)), // أيقونات باللون الذهبي
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
