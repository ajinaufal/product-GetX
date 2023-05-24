import 'package:cart_product_test/core/data/models/database/cart_isar.dart';
import 'package:cart_product_test/core/helper/currency_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListTileCustomCart extends StatelessWidget {
  const ListTileCustomCart({
    super.key,
    required this.cart,
    required this.onTapRemove,
    required this.onTapAdd,
    required this.onTapDelete,
  });

  final CartDatabase cart;
  final void Function(CartDatabase) onTapRemove;
  final void Function(CartDatabase) onTapAdd;
  final void Function(CartDatabase) onTapDelete;
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
                    cart.product?.thumbnail ?? '',
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
                      cart.product?.title ?? '',
                      style: Theme.of(context).textTheme.titleMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '${cart.product?.stock} - ${cart.product?.brand}',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Text(
                      CurrencyHelper.convertToIdr(cart.product?.price),
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
            child: Row(
              children: [
                buttonIcon(
                  onTap: cart.total > 1 ? () => onTapRemove(cart) : null,
                  icon: cart.total > 1 ? Icons.remove : null,
                ),
                infoStock(context: context),
                buttonIcon(
                  onTap: (cart.product?.stock ?? 0) > 0
                      ? () => onTapAdd(cart)
                      : null,
                  icon: (cart.product?.stock ?? 0) > 0 ? Icons.add : null,
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => onTapDelete(cart),
                  iconSize: 32.r,
                  constraints: BoxConstraints(minWidth: 36.w, minHeight: 36.h),
                  icon: const Icon(Icons.delete),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buttonIcon({
    void Function()? onTap,
    IconData? icon,
  }) {
    return IconButton.filled(
      padding: EdgeInsets.zero,
      iconSize: 16.r,
      constraints: BoxConstraints(minWidth: 32.w, minHeight: 22.h),
      style: IconButton.styleFrom(
        backgroundColor: Colors.grey.shade400,
        padding: EdgeInsets.zero,
        disabledBackgroundColor: Colors.grey.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.r),
        ),
      ),
      color: Colors.black,
      onPressed: onTap,
      icon: icon == null ? const SizedBox() : Icon(icon),
    );
  }

  Widget infoStock({required BuildContext context}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Text(
        cart.total.toString(),
        style: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}
