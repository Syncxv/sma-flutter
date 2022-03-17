import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:sma_flutter/graphql/query/users.dart';

class TESTING12 extends StatelessWidget {
  const TESTING12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(
          document: gql(getUsers),
        ),
        builder: (QueryResult result,
            {VoidCallback? refetch, FetchMore? fetchMore}) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }
          if (result.isLoading) {
            return const Text('Loading');
          }
          print(result.data);
          return const Text(":O");
        });
  }
}
