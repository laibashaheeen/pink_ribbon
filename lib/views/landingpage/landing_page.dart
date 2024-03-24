import 'package:flutter/material.dart';
import 'package:pink_ribbon/data/app_colors.dart';
import 'package:pink_ribbon/data/typography.dart';
import 'package:pink_ribbon/views/homepage/home_page.dart';

// import 'package:stylish/views/homepage/homepage_view.dart';
// import 'package:stylish/views/shoppage/shoppage_view.dart';
// import 'package:stylish/views/trending/trendingpage_view.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _HomePageState();
}

class _HomePageState extends State<LandingPage> {
  int _currentIndex = 0;
  bool isSelected = false;

  List<Widget> pages = [
    // const HomePage(),
    // const WishlistPage(),
    const HomePage(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
     
      body: pages[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isSelected = !isSelected;

          setState(() {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => const ShopPage()));
            Navigator.push(context, MaterialPageRoute(builder: (context) => Container()));
          });
        },
        backgroundColor: AppColors.kPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
                      'Give',
                      style: AppTypography.kSemiBold14
                          .copyWith(color: AppColors.kWhite)
                    ),
      ),
      bottomNavigationBar: BottomNavigationBar(
       
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.kPrimary,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home,
            color: AppColors.kPrimary,
            size: 26,
            ),
            icon: Icon(Icons.home_outlined,
            color: AppColors.kAppBarGrey,
            size: 26,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.menu_book_outlined,
            color: AppColors.kPrimary,
            size: 26,
            ),
            
            icon: Icon(Icons.menu_book_outlined,
            color: AppColors.kAppBarGrey,
            size: 26,
            ),
            label: 'Education',
          ),
          const BottomNavigationBarItem(
            icon: SizedBox(width: 0),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.calendar_month,
            color: AppColors.kPrimary,
            size: 26,
            ),
            icon: Icon(Icons.calendar_month_outlined,
            color: AppColors.kAppBarGrey,
            size: 26,
            ),
            label: 'Calender',
          ),
          BottomNavigationBarItem(
             activeIcon: Icon(Icons.more_vert,
            color: AppColors.kPrimary,
            size: 26,
            ),
            icon: Icon(Icons.more_vert,
            color: AppColors.kAppBarGrey,
            size: 26,
            ),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
