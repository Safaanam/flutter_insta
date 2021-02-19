class Post {
  String authorName;
  String authorImageUrl;
  String timeAgo;
  String imageUrl;

  Post({
    this.authorName,
    this.authorImageUrl,
    this.timeAgo,
    this.imageUrl,
  });
}

final List<Post> posts = [
  Post(
    authorName: 'Sam Martin',
    authorImageUrl: 'assets/images/user00.jpg',
    timeAgo: '5 min',
    imageUrl: 'assets/images/post0.jpg',
  ),
  Post(
    authorName: 'Sam Martin',
    authorImageUrl: 'assets/images/user00.jpg',
    timeAgo: '10 min',
    imageUrl: 'assets/images/post1.jpg',
  ),
];

final List<String> stories = [
  'assets/images/user01.jpg',
  'assets/images/user02.jpg',
  'assets/images/user03.jpg',
  'assets/images/user04.jpg',
  'assets/images/user00.jpg',
  'assets/images/user01.jpg',
  'assets/images/user02.jpg',
  'assets/images/user03.jpg',
];