class Rating {
	double? rate;
	int? count;

	Rating({this.rate, this.count});

	factory Rating.fromJson(Map<String, dynamic> json) => Rating(
				rate: (json['rate'] as num?)?.toDouble(),
				count: json['count'] as int?,
			);

	Map<String, dynamic> toJson() => {
				'rate': rate,
				'count': count,
			};
}
