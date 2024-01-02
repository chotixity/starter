import 'package:json_annotation/json_annotation.dart';
part 'recipe_model.g.dart';

@JsonSerializable()
class APIRecipeQuery {
// TODO: Add APIRecipeQuery.fromJson
  factory APIRecipeQuery.fromJson(Map<String, dynamic> json) =>
      _$APIRecipeQueryFromJson(json);
  Map<String, dynamic> toJson() => _$APIRecipeQueryToJson(this);
// TODO: Add fields here
  @JsonKey(name: 'q')
  String query;
  int from;
  int to;
  bool more;
  int count;
  List<APIHits> hits;
// TODO: Add APIRecipeQuery constructor
  APIRecipeQuery({
    required this.query,
    required this.from,
    required this.to,
    required this.more,
    required this.count,
    required this.hits,
  });
}

// TODO: Add @JsonSerializable() class APIHits
@JsonSerializable()
class APIHits {
// 2
  APIRecipe recipe;
// 3
  APIHits({
    required this.recipe,
  });
// 4
  factory APIHits.fromJson(Map<String, dynamic> json) =>
      _$APIHitsFromJson(json);
  Map<String, dynamic> toJson() => _$APIHitsToJson(this);
}

// TODO: Add @JsonSerializable() class APIRecipe
@JsonSerializable()
class APIRecipe {
// 1
  String label;
  String image;
  String url;
// 2
  List<APIIngredients> ingredients;
  double calories;
  double totalWeight;
  double totalTime;
  APIRecipe({
    required this.label,
    required this.image,
    required this.url,
    required this.ingredients,
    required this.calories,
    required this.totalWeight,
    required this.totalTime,
  });
// 3
  factory APIRecipe.fromJson(Map<String, dynamic> json) =>
      _$APIRecipeFromJson(json);
  Map<String, dynamic> toJson() => _$APIRecipeToJson(this);
}

// TODO: Add global Helper Functions
// 4
String getCalories(double? calories) {
  if (calories == null) {
    return '0 KCAL';
  }
  return '${calories.floor()} KCAL';
}

// 5
String getWeight(double? weight) {
  if (weight == null) {
    return '0g';
  }
  return '${weight.floor()}g';
}

// TODO: Add @JsonSerializable() class APIIngredients
@JsonSerializable()
class APIIngredients {
// 6
  @JsonKey(name: 'text')
  String name;
  double weight;
  APIIngredients({
    required this.name,
    required this.weight,
  });
// 7
  factory APIIngredients.fromJson(Map<String, dynamic> json) =>
      _$APIIngredientsFromJson(json);
  Map<String, dynamic> toJson() => _$APIIngredientsToJson(this);
}
