import 'package:flutter/material.dart';
import 'package:flutter_medical_ui/pages/view.dart';

import '../widgets/doctor_item.dart';
import '../widgets/specialist_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month_outlined,
              color: Colors.black54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline,
              color: Colors.black54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.black54,
            ),
            label: '',
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 12),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Xin chào,",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Pesulap Merah",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage("assets/pm.png"),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 223, 200, 228),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/surgeon.png",
                      width: 92,
                      height: 100,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "bạn cảm thấy thế nào?",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const SizedBox(
                          width: 120,
                          child: Text(
                            "Điền thông tin y tế của bạn",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 150,
                          height: 35,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(12.0)),
                          child: const Center(
                            child: Text(
                              "bắt đầu ",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 16),
                height: 64,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(95, 179, 173, 173),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 32,
                      color: Colors.black54,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Chúng Tôi Có Thể Giúp Gì Cho Bạn ?",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    SpecialistItem(
                      imagePath: "assets/clean.png",
                      imageName: "Nha Sĩ",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    SpecialistItem(
                      imagePath: "assets/knife.png",
                      imageName: "Bác sĩ Phẫu Thuật",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    SpecialistItem(
                      imagePath: "assets/lungs.png",
                      imageName: "Trị Liệu",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    SpecialistItem(
                      imagePath: "assets/hormones.png",
                      imageName: "Nhà Sinh Lý Học",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Danh Sách Bác Sĩ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Xem Tất Cả",
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle click event for the first DoctorItem
                        // For example, you can navigate to a new screen or show a dialog.
                      },
                      child: const DoctorItem(
                        image: "assets/1.png",
                        name: "Nycta Gina",
                        specialist: "Bác Sĩ Nhi Khoa",
                      ),
                    ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewView(textToShow: "Hoàng Sơn"),
                            ),
                          );// Handle click event for the second DoctorItem
                        },
                        child: const DoctorItem(
                          image: "assets/son.jpg",
                          name: "Mr Son",
                          specialist: "Bác Sĩ Nội Khoa",
                        ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle click event for the third DoctorItem
                      },
                      child: const DoctorItem(
                        image: "assets/3.png",
                        name: "Reisa Broto Asmoro",
                        specialist: "Bác Sĩ Phẫu Thuật",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle click event for the fourth DoctorItem
                      },
                      child: const DoctorItem(
                        image: "assets/2.png",
                        name: "Indah Kusumaningrum",
                        specialist: "Bác Sĩ Nha Khoa",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle click event for the fifth DoctorItem
                      },
                      child: const DoctorItem(
                        image: "assets/4.png",
                        name: "Mesty Ariotedjo",
                        specialist: "Bác Sĩ Nhãn Khoa",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
