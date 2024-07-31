import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:revisions/src/data/post_item.dart';
import 'package:revisions/src/network/client.dart';
import 'package:revisions/src/widgets/_post.dart';

/// A widget that displays a posts from a Revisions instance in a timeline.
class RevisionsTimeline extends StatefulWidget {
  /// The domain or subdomain of the Revisions instance.
  /// For example, `acme.revisions.me` or `acme.io`.
  final String domain;

  const RevisionsTimeline({
    Key? key,
    required this.domain,
  }) : super(key: key);

  @override
  State<RevisionsTimeline> createState() => _RevisionsTimelineState();
}

class _RevisionsTimelineState extends State<RevisionsTimeline> {
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
    return ListView.builder(
      itemCount: posts!.length,
      padding: const EdgeInsets.all(8),
      itemBuilder: (context, index) {
        final post = posts![index];
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: theme.colorScheme.inversePrimary,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              width: 100,
              height: 20,
              child: Text(
                DateFormat.yMMMMd().format(post.createdAt),
                style: theme.textTheme.bodySmall,
              ),
            ),
            Container(
              width: 8,
              height: 1,
              margin: const EdgeInsets.symmetric(vertical: 8),
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
            ),
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .secondary
                          .withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                ),
                child: Post(
                  post: post,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
