import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pmm_garden/ui/views/documents/documents.view.dart';

class ScaffoldDestination {
  final String title;
  final IconData icon;

  const ScaffoldDestination({
    required this.title,
    required this.icon,
  });
}

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  int _pageIndex = 0;
  final destinations = [
    const ScaffoldDestination(title: 'Документи', icon: Icons.document_scanner),
    const ScaffoldDestination(title: 'Звіти', icon: Icons.summarize),
  ];
  void _destinationTapped(ScaffoldDestination destination) {
    var idx = destinations.indexOf(destination);
    if (idx != _pageIndex) {
      setState(() {
        _pageIndex = idx;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              child: Center(
                child: Text('ПММ - WARDEN'),
              ),
            ),
            for (var d in destinations)
              ExpansionTile(
                leading: Icon(d.icon),
                title: Text(d.title),
                //selected: destinations.indexOf(d) == _pageIndex,
                //onTap: () => _destinationTapped(d),
              ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              //style: TextButton.styleFrom(foregroundColor: Colors.black),
              onPressed: () => _handleSignOut(),
              child: const Text('Вийти'),
            ),
          )
        ],
      ),
      body: _pageAtIndex(_pageIndex),
      floatingActionButton:
          _hasFloatingActionButton ? _buildFab(context) : null,
    );
  }

  Future<void> _handleSignOut() async {
    var shouldSignOut = await (showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Впевнені, що хочете вийти?'),
        actions: [
          TextButton(
            child: const Text('Ні'),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
          TextButton(
            child: const Text('Так'),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
        ],
      ),
    ));

    if (shouldSignOut == null || !shouldSignOut) {
      return;
    }
  }

  FloatingActionButton _buildFab(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => _handleFabPressed(),
    );
  }

  void _handleFabPressed() {
    if (_pageIndex == 0) {
      debugPrint('handlefabpressed $_pageIndex');
      return;
    }

    if (_pageIndex == 1) {
      debugPrint('handlefabpressed $_pageIndex');
      return;
    }
  }

  static Widget _pageAtIndex(int index) {
    if (index == 0) {
      return const DocumentsView();
    }

    if (index == 1) {
      return const Text('entities');
    }

    return const Center(child: Text('Settings page'));
  }

  bool get _hasFloatingActionButton {
    if (_pageIndex == 2) return false;
    return true;
  }
}
