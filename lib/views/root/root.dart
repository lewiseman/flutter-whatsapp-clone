import 'package:flutter/material.dart';
import 'package:whatsapp/views/root/calls/root.dart';
import 'package:whatsapp/views/root/camera/root.dart';
import 'package:whatsapp/views/root/chats/root.dart';
import 'package:whatsapp/views/root/status/root.dart';

class WhatsApp extends StatefulWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> with TickerProviderStateMixin {
  late final TabController _tabController = TabController(
    initialIndex: 1,
    length: 4,
    vsync: this,
  );

  late Widget? floatingAction = chatFloatingBar;

  @override
  void initState() {
    super.initState();
    _buildFloatingBar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text('WhatsApp'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Icon(Icons.camera_alt_rounded),
            Tab(text: 'CHATS'),
            Tab(text: 'STATUS'),
            Tab(text: 'CALLS'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [Cam(), Chats(), Status(), Calls()],
      ),
      floatingActionButton: floatingAction,
    );
  }

  Widget chatFloatingBar = FloatingActionButton(
    child: const Icon(Icons.message),
    onPressed: () {},
  );

  Widget statusFloatingBar = Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      FloatingActionButton(
        mini: true,
        backgroundColor: Colors.grey.shade300,
        child: Icon(
          Icons.edit,
          color: Colors.grey.shade900,
        ),
        onPressed: () {},
      ),
      const SizedBox(height: 12),
      FloatingActionButton(
        child: const Icon(Icons.camera_alt_rounded),
        onPressed: () {},
      ),
    ],
  );

  Widget callFloatingBar = FloatingActionButton(
    child: const Icon(Icons.wifi_calling),
    onPressed: () {},
  );

  void _buildFloatingBar() {
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        setState(() {
          floatingAction = chatFloatingBar;
        });
      } else if (_tabController.index == 2) {
        setState(() {
          floatingAction = statusFloatingBar;
        });
      } else if (_tabController.index == 3) {
        setState(() {
          floatingAction = callFloatingBar;
        });
      } else {
        setState(() {
          floatingAction = null;
        });
      }
    });
  }
}
