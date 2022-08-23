import 'package:flutter/material.dart';

class BotomnavBar extends StatefulWidget {
  const BotomnavBar({Key? key}) : super(key: key);

  @override
  State<BotomnavBar> createState() => _BotomnavBarState();
}

class _BotomnavBarState extends State<BotomnavBar>
    with SingleTickerProviderStateMixin {
  String title = 'Tabbar/Bottomnavbar';

  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
          controller: _tabController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            TopTabBar(),
            Center(child: Text('Haider')),
            Center(child: Text('Haider')),
            Center(child: Text('Haider')),
          ]),
      bottomNavigationBar: Container(
        color: const Color(0xffFFFFFF),
        child: TabBar(
            unselectedLabelColor: const Color(0xffBBBACD),
            labelColor: const Color(0xff3009CD),
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(width: 0.0),
            ),
            controller: _tabController,
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.home,
                ),
              ),
              Tab(
                icon: Icon(Icons.shopping_bag_outlined),
              ),
              Tab(
                icon: Icon(Icons.settings),
              ),
              Tab(
                icon: Icon(Icons.add),
              )
            ]),
      ),
    );
  }
}

class TopTabBar extends StatefulWidget {
  const TopTabBar({Key? key}) : super(key: key);

  @override
  State<TopTabBar> createState() => _TopTabBarState();
}

class _TopTabBarState extends State<TopTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            child: ListTile(
              trailing: const CircleAvatar(
                backgroundImage: AssetImage('avatar.png'),
              ),
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffF8F8F8)),
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    decoration: const InputDecoration(
                        hintStyle: TextStyle(color: Color(0xffD6D6D6)),
                        hintText: 'Search',
                        focusColor: Color(0xffD6D6D6),
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.close_outlined,
                          color: Color(0xffD6D6D6),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xffD6D6D6),
                        )),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            child: TabBar(
                controller: _tabController,
                labelColor: const Color(0xff212224),
                unselectedLabelColor: const Color(0xffD6D6D6),
                tabs: const [
                  Tab(
                    text: 'Women',
                  ),
                  Tab(
                    text: 'Men',
                  ),
                  Tab(
                    text: 'Chidren',
                  ),
                ]),
          ),
          Expanded(
              child: TabBarView(
            controller: _tabController,
            children: [
              Container(
                color: const Color(0xffF8F8F8),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        color: const Color.fromARGB(252, 255, 255, 254),
                        child: const ListTile(
                          tileColor: Colors.white,
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('oval.png'),
                          ),
                          title: Text('Sandy Williams'),
                          subtitle: Text(
                            'Freelance Tailor ',
                            style: TextStyle(
                              color: Color(0xffD6D6D6),
                            ),
                          ),
                          trailing: Icon(
                            Icons.favorite_sharp,
                            color: Color(0xff3009CD),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        color: Colors.white,
                        child: const Text(
                          'If you are looking for the latest and the most stylish Pakistan lawn collection 2018 with chiffon dupatta, you have come at the right place as Alkaram has brought fully embroidered lawn suits with chiffon and sleeves in its wide range of stitched and unstitched lawn suits.',
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    Stack(
                      children: const [Image(image: AssetImage('Bitmap.png'))],
                    ),
                  ],
                ),
              ),
              const Center(child: Text('By')),
              const Center(child: Text('tay')),
            ],
          ))
        ],
      ),
    );
  }
}
