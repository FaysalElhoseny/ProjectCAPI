class TabIconData {
  TabIconData({
    this.imagePath = '',
    this.index = 0,
    this.selectedImagePath = '',
    this.isSelected = false,
  });

  String imagePath;
  String selectedImagePath;
  bool isSelected;
  int index;

  static List<TabIconData> tabIconsList = <TabIconData>[
    TabIconData(
      imagePath: 'assets/Profile_Page/tab_1.png',
      selectedImagePath: 'assets/Profile_Page/tab_1s.png',
      isSelected: true,
    ),
    TabIconData(
      imagePath: 'assets/Profile_Page/tab_2s.png',
      selectedImagePath: 'assets/Profile_Page/tab_2s.png',
      index: 1,
    ),
    TabIconData(
      imagePath: 'assets/images/Twitter.png',
      selectedImagePath: 'assets/Profile_Page/tab_3s.png',
      index: 2,
    ),
    TabIconData(
      imagePath: 'assets/Profile_Page/tab_4s.png',
      selectedImagePath: 'assets/Profile_Page/tab_4s.png',
      index: 3,
    ),
  ];
}
