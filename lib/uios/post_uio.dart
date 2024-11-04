import 'package:biteflavor/uios/author_uio.dart';
import 'package:biteflavor/uios/category_uio.dart';
import 'package:hive/hive.dart';

part 'post_uio.g.dart';

@HiveType(typeId: 1)
class PostUio {
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? title;
  @HiveField(2)
  final String? htmlContent;
  @HiveField(3)
  final List<CategoryUio>? categories;
  @HiveField(4)
  final String? picture;
  @HiveField(5)
  final DateTime? date;
  @HiveField(6)
  final AuthorUio? author;
  @HiveField(7)
  final String? link;

  const PostUio({
    this.id,
    this.title,
    this.htmlContent,
    this.categories,
    this.picture,
    this.date,
    this.author,
    this.link,
  });

  static List<PostUio> mock = [
    PostUio(
      id: 1,
      title: "Coconut Macaroons drizzled with Chocolate",
      htmlContent:
          "\n<p>Add some of that tropical sweetness to your dessert table with these chewy chocolate-drizzled coconut macaroons! These macaroons are so simple to make yet irresistable for an easy snack or a dessert tableau.</p>\n\n\n\n<p class=\"has-medium-font-size\"><strong>Ingredients:</strong></p>\n\n\n\n<p>3 cups coconut — shredded (unsweetened or sweetened, your choice)</p>\n\n\n\n<p>⅓ cup sweetened condensed milk</p>\n\n\n\n<p>1 teaspoon vanilla extract</p>\n\n\n\n<p>a ¼ teaspoon almond extract (or not, you know you, but it adds a little depth);</p>\n\n\n\n<p>2 large egg whites</p>\n\n\n\n<p>Pinch of salt</p>\n\n\n\n<p>1/2 cup chocolate chips, dark or milk (for drizzling)</p>\n\n\n\n<p class=\"has-medium-font-size\"><strong>Instructions:</strong></p>\n\n\n\n<p><strong>Prepare the Oven and Baking Sheet:</strong></p>\n\n\n\n<p>Set your oven to 325 degrees (160°C). To keep the foil from sticking, line a baking sheet with parchment paper.</p>\n\n\n\n<p><strong>Mix the Coconut Base:</strong></p>\n\n\n\n<p>In a giant mixing bowl, combine dried out coconut, sweetened condensed milk, vanilla extract and also almond extract (if using). Stir until well incorporated.</p>\n\n\n\n<p><strong>Beat the Egg Whites:</strong></p>\n\n\n\n<p>In another bowl, whip the egg whites and a pinch of salt until soft peaks trend. Carefully mix through the egg whites into the coconut mixture.</p>\n\n\n\n<p><strong>Shape the Macaroons:</strong></p>\n\n\n\n<p>Spoon or cookie scoop rounding tablespoon-fulls of the mixture on to the prepared baking sheet, about 1 inch apart.</p>\n\n\n\n<p><strong>Bake:</strong></p>\n\n\n\n<p>Transfer to a preheated oven, bake for 18-20 mins or until the tops are brown.</p>\n\n\n\n<p><strong>Cool and Drizzle with Chocolate:</strong></p>\n\n\n\n<p>Allow the macaroons to cool completely. Meanwhile, melt the chocolate chips in the microwave in 15-second intervals, stirring between each interval until smooth. Drizzle the melted chocolate over the cooled macaroons for a finishing touch.</p>\n\n\n\n<p><strong>Serve and Enjoy!</strong></p>\n\n\n\n<p>Let the chocolate set, then serve these delightful bites and watch them disappear!</p>\n\n\n\n<p class=\"has-medium-font-size\"><strong>BiteFlavor Tips:</strong></p>\n\n\n\n<p><strong>Texture Preference:</strong> For a chewier macaroon, use sweetened coconut. For a drier, crisper texture, go with unsweetened.<br><strong>Chocolate Drizzle Variation:</strong> Try white chocolate for a sweeter finish, or mix in a hint of sea salt for an extra flavor pop.</p>\n\n\n\n<p><br>Enjoy the sweet, chewy delight of these chocolate-drizzled coconut macaroons with friends, family, or just as a special treat for yourself!</p>\n\n\n\n<p></p>\n",
      categories: CategoryUio.mock,
      picture:
          "https://www.biteflavor.com/wp-content/uploads/2024/11/pexels-polina-tankilevitch-5848182-768x512.jpg",
      date: DateTime(2022),
      author: AuthorUio.mock,
    ),
    PostUio(
      id: 2,
      title: "title 2",
      htmlContent: "content2",
      categories: CategoryUio.mock,
      picture:
          "https://img.freepik.com/free-photo/gray-wall-textures-background_74190-4389.jpg",
      date: DateTime(2022),
      author: AuthorUio.mock,
    ),
    PostUio(
      id: 3,
      title: "title 3",
      htmlContent: "content3",
      categories: CategoryUio.mock,
      picture:
          "https://img.freepik.com/free-photo/gray-wall-textures-background_74190-4389.jpg",
      date: DateTime(2022),
      author: AuthorUio.mock,
    ),
    PostUio(
      id: 4,
      title: "title 4",
      htmlContent: "content4",
      categories: CategoryUio.mock,
      picture:
          "https://img.freepik.com/free-photo/gray-wall-textures-background_74190-4389.jpg",
      date: DateTime(2022),
      author: AuthorUio.mock,
    ),
    PostUio(
      id: 5,
      title: "title 5",
      htmlContent: "content5",
      categories: CategoryUio.mock,
      picture:
          "https://img.freepik.com/free-photo/gray-wall-textures-background_74190-4389.jpg",
      date: DateTime(2022),
      author: AuthorUio.mock,
    ),
  ];
}
