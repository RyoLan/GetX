import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Metronic Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Metronic Flutter'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications action
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Handle user profile action
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Metronic',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboards'),
              onTap: () {
                // Handle dashboard tap
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('eCommerce'),
              onTap: () {
                // Handle eCommerce tap
              },
            ),
            // Add more list items as needed
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '69',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Active Projects',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 16),
                            LinearProgressIndicator(
                              value: 0.72,
                              backgroundColor: Colors.white.withOpacity(0.5),
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '43 Pending',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '72%',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '357',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Professionals',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Today’s Heroes',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.orange,
                                  child: Text('A'),
                                ),
                                SizedBox(width: 8),
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/avatars/300-11.jpg'),
                                ),
                                SizedBox(width: 8),
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  child: Text('S'),
                                ),
                                SizedBox(width: 8),
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/avatars/300-2.jpg'),
                                ),
                                SizedBox(width: 8),
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  child: Text('P'),
                                ),
                                SizedBox(width: 8),
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/avatars/300-12.jpg'),
                                ),
                                SizedBox(width: 8),
                                CircleAvatar(
                                  backgroundColor: Colors.black,
                                  child: Text('+42', style: TextStyle(color: Colors.white)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Add more widgets as needed
          ],
        ),
      ),
    );
  }
}