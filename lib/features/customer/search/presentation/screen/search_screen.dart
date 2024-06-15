import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_store_app/core/common/widgets/customer_app_bar.dart';
import 'package:grocery_store_app/core/di/injection_container.dart';
import 'package:grocery_store_app/features/customer/search/presentation/bloc/search/search_bloc.dart';
import 'package:grocery_store_app/features/customer/search/presentation/refactors/search_body.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SearchBloc>(),
      child: const Scaffold(
        appBar: CustomAppBar(title: 'Search'),
        body: SearchBody(),
      ),
    );
  }
}
