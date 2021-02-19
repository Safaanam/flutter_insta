class Comment {
  String authorName;
  String authorImageUrl;
  String text;

  Comment({
    this.authorName,
    this.authorImageUrl,
    this.text,
  });
}

final List<Comment> comments = [
  Comment(
    authorName: 'Angel',
    authorImageUrl: 'assets/images/user02.jpg',
    text: 'Loving this photo!!',
  ),
  Comment(
    authorName: 'Charlie',
    authorImageUrl: 'assets/images/user03.jpg',
    text: 'One of the best photos ...',
  ),
  Comment(
    authorName: 'Angelina Martin',
    authorImageUrl: 'assets/images/user04.jpg',
    text: 'Can\'t wait for you to post more!',
  ),
  Comment(
    authorName: 'Jax',
    authorImageUrl: 'assets/images/user01.jpg',
    text: 'Nice job',
  ),
  Comment(
    authorName: 'Sam Martin',
    authorImageUrl: 'assets/images/user00.jpg',
    text: 'Thanks everyone :)',
  ),
];