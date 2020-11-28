
import 'model/user_model.dart';
import 'model/comment_model.dart';
import 'model/post_model.dart';

class DemoValues {
  static final List<UserModel> users = [
    UserModel(
      id: "1",
      name: "Miko Cuevas",
      email: "jmartist@gmail.com",
      image: "assets/artist.png",
      followers: 123,
      joined: DateTime(2020, 4, 30),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "Christian Olo",
      email: "music@gmail.com",
      image: "assets/artist.png",
      followers: 456,
      joined: DateTime(2020, 5, 30),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "Catherine Castro",
      email: "dance@gmail.com",
      image: "assets/artist.png",
      followers: 789,
      joined: DateTime(2020, 6, 30),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "Alex Sean Rosimo",
      email: "art@gmail.com",
      image: "assets/artist.png",
      followers: 789,
      joined: DateTime(2020, 6, 30),
      posts: 14,
    ),
  ];

  static final String _body =
      """Aspernatur omnis consequatur dignissimos recusandae non. Praesentium nihil earum. Porro perspiciatis a velit doloremque consequatur impedit. Autem odio sed qui consequatur laboriosam sapiente omnis sit. Tenetur blanditiis iure molestias quidem odit numquam sunt aliquam.

Vitae libero perferendis voluptate et quasi aut impedit fuga. Maiores suscipit fugiat a est molestiae voluptas quasi earum recusandae. Ut omnis excepturi ut dolore ab.
 
Quia quo quisquam velit adipisci dolorem adipisci voluptatem. Eum ut quae et dolorem sapiente. Ut reprehenderit et ut voluptatum saepe et voluptatem. Sit eveniet quaerat.

Sit necessitatibus voluptatem est iste nihil nulla. Autem quasi sit et. Qui veniam fugit autem. Minima error deserunt fuga dolorum rerum provident velit.
 
Quod necessitatibus vel laboriosam ut id. Ab eaque eos voluptatem beatae tenetur repellendus adipisci repudiandae quisquam. Quis quam harum aspernatur nulla. Deleniti velit molestiae.
 
Repudiandae sint soluta ullam sunt eos id laborum. Veniam molestiae ipsa odit soluta in rerum amet. Deserunt rerum vero est eaque voluptas aspernatur ut voluptatem. Sint sed enim.""";

  static final List<CommentModel> _comments = <CommentModel>[
    CommentModel(
      comment:
          "Et hic et sequi inventore. Molestiae laboriosam commodi exercitationem eum. ",
      user: users[0],
      time: DateTime(2020, 4, 30),
    ),
    CommentModel(
      comment: "Unde id provident ut sunt in consequuntur qui sed. ",
      user: users[1],
      time: DateTime(2020, 5, 30),
    ),
    CommentModel(
      comment: "Eveniet nesciunt distinctio sint ut. ",
      user: users[0],
      time: DateTime(2020, 6, 30),
    ),
    CommentModel(
      comment: "Et facere a eos accusantium culpa quaerat in fugiat suscipit. ",
      user: users[2],
      time: DateTime(2020, 4, 30),
    ),
    CommentModel(
      comment: "Necessitatibus pariatur harum deserunt cum illum ut.",
      user: users[1],
      time: DateTime(2020, 5, 30),
    ),
    CommentModel(
      comment:
          "Accusantium neque quis provident voluptatem labore quod dignissimos eum quaerat. ",
      user: users[2],
      time: DateTime(2020, 6, 30),
    ),
    CommentModel(
      comment:
          "Accusantium neque quis provident voluptatem labore quod dignissimos eum quaerat. ",
      user: users[1],
      time: DateTime(2020, 4, 30),
    ),
    CommentModel(
      comment: "Neque est ut rerum vel sunt harum voluptatibus et. ",
      user: users[0],
      time: DateTime(2020, 5, 30),
    ),
    CommentModel(
      comment:
          "Hic accusantium minus fuga exercitationem id aut expedita doloribus. ",
      user: users[1],
      time: DateTime(2020, 6, 30),
    ),
  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "1",
      author: users[0],
      title: "Art for a Cause",
      summary: "Vector portrait commission and artworks for sale! All proceeds will go to the people affected by typhoon.",
      body: "The vector portrait commission minimum worth is 100php, for other artworks and more information, kindly direct an email message to me. Hoping for your support on this cause!",
      imageURL: "assets/artist.png",
      postTime: DateTime(2020, 11, 27, 7, 36),
      reacts: 123,
      views: 456,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "The Basics of Guitar",
      summary: "Hey, there! Learn the basics of guitar ...",
      body: _body,
      imageURL: "assets/artist.png",
      postTime: DateTime(2020, 4, 13),
      reacts: 321,
      views: 654,
      comments: _comments,
    ),
    PostModel(
      id: "3",
      author: users[2],
      title: "Dance Workshop",
      summary: "caption here...",
      body: _body * 2,
      imageURL: "assets/artist.png",
      postTime: DateTime(2020, 1, 12),
      reacts: 213,
      views: 546,
      comments: _comments,
    ),
    PostModel(
      id: "4",
      author: users[3],
      title: "UI Design",
      summary: "captionhere...",
      body: _body * 2,
      imageURL: "assets/artist.png",
      postTime: DateTime(2020, 1, 12),
      reacts: 213,
      views: 546,
      comments: _comments,
    ),
  ];
}
