import 'package:flutter/material.dart';
import 'package:flutter_application_1/Inner_InkWell/Browse_All.dart';
import 'package:flutter_application_1/Models/Product.dart';
import 'package:flutter_application_1/Providers/List_Of_Products.dart';
import 'package:flutter_application_1/Services/tools.dart';
import 'package:flutter_application_1/Widgets/BackLastPage.dart';
import 'package:flutter_application_1/Widgets/Products.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

class ProductByCategory extends StatefulWidget {
  final String? arg;
  const ProductByCategory({Key? key, this.arg}) : super(key: key);

  @override
  State<ProductByCategory> createState() => _ProductByCategoryState();
}

class _ProductByCategoryState extends State<ProductByCategory> {
  final TextEditingController? _searchTextController = TextEditingController();
  final FocusNode _searchTextFocusNode = FocusNode();
  List<ProductModel> listProdcutSearch = [];
  @override
  void dispose() {
    _searchTextController!.dispose();
    _searchTextFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color color = MyTools(context).color;
    Size size = MyTools(context).getScreenSize;
    final productsProvider = Provider.of<ProductsProvider>(context);
    List<ProductModel> productByCat =
        productsProvider.findByCategory(widget.arg!);
    return Scaffold(
      appBar: AppBar(
        leading: const BackLastPage(),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: Text(
          widget.arg!,
          style: TextStyle(
              color: color, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: productByCat.isEmpty
          ? const Center(
              child: Text(
                'No products belong to this category',
              ),
            )
          : SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: kBottomNavigationBarHeight,
                    child: TextField(
                      focusNode: _searchTextFocusNode,
                      controller: _searchTextController,
                      onChanged: (valuee) {
                        setState(() {
                          listProdcutSearch =
                              productsProvider.searchQuery(valuee);
                        });
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Colors.greenAccent, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Colors.greenAccent, width: 1),
                        ),
                        hintText: "What's in your mind",
                        prefixIcon: const Icon(Icons.search),
                        suffix: IconButton(
                          onPressed: () {
                            _searchTextController!.clear();
                            _searchTextFocusNode.unfocus();
                          },
                          icon: Icon(
                            Icons.close,
                            color: _searchTextFocusNode.hasFocus
                                ? Colors.red
                                : color,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                _searchTextController!.text.isNotEmpty &&
                        listProdcutSearch.isEmpty
                    ? const Center(
                        child: Text(
                            'Aucun produit trouvé, veuillez essayer un autre mot-clé'),
                      )
                    : GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        padding: EdgeInsets.zero,
                        childAspectRatio: size.width / (size.height * 0.61),
                        children: List.generate(
                            _searchTextController!.text.isNotEmpty
                                ? listProdcutSearch.length
                                : productByCat.length, (index) {
                          return ChangeNotifierProvider.value(
                            value: _searchTextController!.text.isNotEmpty
                                ? listProdcutSearch[index]
                                : productByCat[index],
                            child: const Products(),
                          );
                        }),
                      ),
              ]),
            ),
    );
  }
}
