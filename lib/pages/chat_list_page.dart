import 'package:flutter/material.dart';
import 'chat_room_page.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> chats = [
      {'name': 'Budi Santoso', 'msg': 'Halo Pendri, tugas mobile aman?', 'time': '12:30', 'unread': 2},
      {'name': 'Sari Utami', 'msg': 'Oke siap, nanti ketemu di kampus', 'time': '11:00', 'unread': 0},
      {'name': 'Mas Client 150 Produk', 'msg': 'SEO tag-nya sudah saya cek ya', 'time': 'Yesterday', 'unread': 0},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp'),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: ListView.separated(
        itemCount: chats.length,
        separatorBuilder: (_, __) => const Divider(indent: 72, height: 1),
        itemBuilder: (context, index) {
          final chat = chats[index];
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text(chat['name'], style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(chat['msg'], maxLines: 1, overflow: TextOverflow.ellipsis),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(chat['time'], style: const TextStyle(fontSize: 12, color: Colors.grey)),
                const SizedBox(height: 4),
                if (chat['unread'] > 0)
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: const Color(0xFF25D366),
                    child: Text('${chat['unread']}', style: const TextStyle(fontSize: 10, color: Colors.white)),
                  ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatRoomPage(name: chat['name']),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF25D366),
        onPressed: () {},
        child: const Icon(Icons.chat, color: Colors.white),
      ),
    );
  }
}