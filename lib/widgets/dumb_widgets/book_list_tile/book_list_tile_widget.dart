import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thuprai_stacked_app/views/home/model/book_model.dart';

class BookListTile extends StatefulWidget {
  const BookListTile({super.key, this.books});
  final Books? books;
  @override
  State<BookListTile> createState() => _BookListTileState();
}

class _BookListTileState extends State<BookListTile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        height: 0.23.sh,
        padding: EdgeInsets.all(5.sp),
        child: Row(
          children: [
            Container(
              height: 0.2.sh,
              width: 0.3.sw,
              padding: EdgeInsets.all(5.sp),
              child: CachedNetworkImage(
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                imageUrl: widget.books?.frontCover ??
                    'https://via.placeholder.com/200x150',
              ),
            ),
            SizedBox(
              width: 0.01.sw,
            ),
            Container(
              height: 0.2.sh,
              width: 0.6.sw,
              padding: EdgeInsets.all(5.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.books?.title ?? "Book Name"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
