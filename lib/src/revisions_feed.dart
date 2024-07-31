import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:revisions/src/data/post_item.dart';
import 'package:revisions/src/network/client.dart';
import 'package:revisions/src/widgets/_post.dart';

/// A widget that displays a feed of posts from a Revisions instance.
class RevisionsFeed extends StatefulWidget {
  /// The domain or subdomain of the Revisions instance.
  /// For example, `acme.revisions.me` or `acme.io`.
  final String domain;

  const RevisionsFeed({
    Key? key,
    required this.domain,
  }) : super(key: key);

  @override
  State<RevisionsFeed> createState() => _RevisionsFeedState();
}

class _RevisionsFeedState extends State<RevisionsFeed> {
  List<PostItem>? posts;

  @override
  void initState() {
    super.initState();
    RevisionsClient(domain: widget.domain).getPosts().then((value) {
      setState(() {
        posts = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (posts == null) {
      return const Center(child: CircularProgressIndicator());
    }
    if (posts!.isEmpty) {
      return const Center(child: Text('No posts found'));
    }
    final theme = Theme.of(context);
    return ListView.separated(
      itemCount: posts!.length,
      padding: const EdgeInsets.all(8),
      separatorBuilder: (context, index) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        final post = posts![index];
        return Card(
          child: Column(
            children: [
              Post(
                post: post,
              ),
              const Divider(),
              Row(
                children: [
                  // if (date
                  //     .isAfter(DateTime.now().subtract(const Duration(days: 7))))
                  //   const FeaturePreviewBadge(
                  //     text: 'New',
                  //     color: Colors.pink,
                  //   ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      DateFormat.yMMMMd().format(post.createdAt),
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
            ],
          ),
        );
      },
    );
  }
}
