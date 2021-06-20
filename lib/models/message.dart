class Message {
  final String imageUrl;
  final String name;
  final String message;
  final String time;
  final bool unread;

  Message({
    required this.imageUrl,
    required this.name,
    required this.message,
    required this.time,
    required this.unread,
  });
}

List<Message> friendMessages = [
  Message(
    imageUrl: 'assets/images/friend1.png',
    name: 'Joshuer',
    message: 'Sorry, you’re not my ty...',
    time: 'Now',
    unread: true,
  ),
  Message(
    imageUrl: 'assets/images/friend2.png',
    name: 'Gabriella',
    message: 'I saw it clearly and mig...',
    time: '02:30',
    unread: false,
  ),
];

List<Message> groupMessages = [
  Message(
    imageUrl: 'assets/images/group1.png',
    name: 'Jakarta Fair',
    message: 'Why does everyone ca...',
    time: '11:11',
    unread: false,
  ),
  Message(
    imageUrl: 'assets/images/group3.png',
    name: 'Angga',
    message: 'Here here we can go...',
    time: '07:11',
    unread: false,
  ),
  Message(
    imageUrl: 'assets/images/group2.png',
    name: 'Bentley',
    message: 'The car which does not...',
    time: '07:11',
    unread: false,
  ),
];
