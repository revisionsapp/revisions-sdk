import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:revisions/src/data/post_item.dart';
import 'package:url_launcher/url_launcher.dart';

class Post extends StatelessWidget {
  final PostItem post;

  const Post({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Markdown(
      selectable: true,
      shrinkWrap: true,
      data: post.content,
      styleSheet: MarkdownStyleSheet(
        p: theme.textTheme.bodyLarge,
      ),
      onTapLink: (text, href, title) {
        if (href == null) return;
        launchUrl(Uri.parse(href));
      },
      imageBuilder: (uri, title, alt) {
        return InkWell(
          onTap: () {
            showCupertinoModalPopup(
              context: context,
              builder: (context) => CupertinoActionSheet(
                title: CachedNetworkImage(
                  imageUrl: uri.toString(),
                ),
              ),
            );
          },
          child: CachedNetworkImage(
            imageUrl: uri.toString(),
          ),
        );
      },
      extensionSet: md.ExtensionSet(
        md.ExtensionSet.gitHubFlavored.blockSyntaxes,
        [md.EmojiSyntax(), ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes],
      ),
    );
  }
}
