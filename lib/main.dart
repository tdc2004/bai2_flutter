import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false; // Biến kiểm tra chế độ sáng/tối

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(), // Áp dụng theme
      home: Scaffold(
        appBar: AppBar(title: const Text('Bài 2')), // Thanh tiêu đề
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Tống Doanh Chính - PH40493'), // Văn bản hiển thị
              const SizedBox(height: 10),
              Image.network(
                'https://cuahangconggiao.com/wp-content/uploads/2023/02/hinh-anh-chua-giesu-dep-12.jpg', // Đường dẫn hình ảnh mẫu
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Dialog'),
                      content: const Text('Đây là hộp thoại'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Close'),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text('Hiển thị Dialog'), 
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Dark Mode'),
                  Switch(
                    value: isDarkMode, 
                    onChanged: (value) {
                      setState(() {
                        isDarkMode = value; 
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
