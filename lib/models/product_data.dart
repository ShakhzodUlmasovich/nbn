import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
    Product({
        this.status,
        this.data,
        this.message,
    });

    int? status;
    List<Datum>? data;
    String? message;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
    };
}

class Datum {
    Datum({
        this.productId,
        this.productName,
        this.productPrice,
        this.productImage,
        this.shopId,
        this.isActive,
        this.createdAt,
        this.shopName,
    });

    String? productId;
    String? productName;
    String? productPrice;
    String? productImage;
    String? shopId;
    bool? isActive;
    DateTime? createdAt;
    String? shopName;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        productId: json["product_id"],
        productName: json["product_name"],
        productPrice: json["product_price"],
        productImage: json["product_image"],
        shopId: json["shop_id"],
        isActive: json["is_active"],
        createdAt: DateTime.parse(json["created_at"]),
        shopName: json["shop_name"],
    );

    Map<String, dynamic> toJson() => {
        "product_id": productId,
        "product_name": productName,
        "product_price": productPrice,
        "product_image": productImage,
        "shop_id": shopId,
        "is_active": isActive,
        "created_at": createdAt!.toIso8601String(),
        "shop_name": shopName,
    };
}
