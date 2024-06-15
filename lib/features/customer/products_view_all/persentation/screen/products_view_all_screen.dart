import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_store_app/core/common/widgets/customer_app_bar.dart';
import 'package:grocery_store_app/core/di/injection_container.dart';
import 'package:grocery_store_app/core/extensions/context_extension.dart';
import 'package:grocery_store_app/core/language/lang_keys.dart';
import 'package:grocery_store_app/features/customer/products_view_all/persentation/bloc/products_view_all/products_view_all_bloc.dart';
import 'package:grocery_store_app/features/customer/products_view_all/persentation/bloc/products_view_all/products_view_all_event.dart';
import 'package:grocery_store_app/features/customer/products_view_all/persentation/refactors/products_view_all_body.dart';

class ProductsViewAllScreen extends StatelessWidget {
  const ProductsViewAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<ProductsViewAllBloc>()..add(const GetProductsViewAllEvent()),
      child: Scaffold(
        appBar: CustomAppBar(title: context.translate(LangKeys.viewAll)),
        body: const ProductsViewAllBody(),
      ),
    );
  }
}
