import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 控制菜单展开收起
final menuToggleProvider = StateProvider.autoDispose((ref) => false);

class FirstPage extends ConsumerWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuVisible = ref.watch(menuToggleProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('riverpod_demo'),
      ),
      body: Center(
        child: PortalTarget(
          visible: menuVisible,
          anchor: const Aligned(
            follower: Alignment.topLeft,
            target: Alignment.topRight,
          ),
          portalFollower: Material(
            elevation: 8,
            child: IntrinsicWidth(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  ListTile(title: Text('加操作')),
                  ListTile(title: Text('减操作')),
                ],
              ),
            ),
          ),
          child: ElevatedButton(
            onPressed: () {
              ref.watch(menuToggleProvider.notifier).update((state) => !state);
            },
            child: Text(menuVisible ? 'hide menu' : 'show menu'),
          ),
        ),
      ),
    );
  }
}
