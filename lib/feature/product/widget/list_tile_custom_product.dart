import 'package:cart_product_test/core/domain/entities/product_entities.dart';
import 'package:cart_product_test/core/helper/currency_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListTileCustomProduct extends StatelessWidget {
  const ListTileCustomProduct({
    super.key,
    required this.product,
    required this.onTap,
  });

  final ProductEntities product;
  final void Function(ProductEntities) onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Colors.grey.shade200,
      ),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: Image.network(
                    product.thumbnail ?? '',
                    width: 100.r,
                    height: 100.r,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title ?? '',
                      style: Theme.of(context).textTheme.titleMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '${product.stock} - ${product.brand}',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Text(
                      CurrencyHelper.convertToIdr(product.price),
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    EdgeInsets.symmetric(vertical: 9.0.h, horizontal: 12.0.w),
                backgroundColor: Colors.blueAccent,
                disabledBackgroundColor: Colors.grey.shade300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.r),
                ),
              ),
              onPressed: () => onTap(product),
              child: Text(
                'Add to cart',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
