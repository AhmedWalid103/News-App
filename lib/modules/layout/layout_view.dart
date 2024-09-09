import 'package:flutter/material.dart';
import 'package:flutter/material.dart%20%20';
import 'package:news_app/data/data_view.dart';
import 'package:news_app/modules/layout/item.dart';
import 'package:news_app/modules/theme/color_palette.dart';

import 'item_data.dart';
class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  List<ItemData> itemData=[
    ItemData(
        ItemId: "sports",
        ItemName: "Sports",
        ItemImage: "assets/images/sports.png",
        ItemColor: const Color(0xFFC91C22)
    ),
    ItemData(
        ItemId: "general",
        ItemName: "Politics",
        ItemImage: "assets/images/Politics.png",
        ItemColor: const Color(0xFF003E90)
    ),ItemData(
        ItemId: "health",
        ItemName: "Health",
        ItemImage: "assets/images/health.png",
        ItemColor: const Color(0xFFED1E79)
    ),ItemData(
        ItemId: "business",
        ItemName: "Business ",
        ItemImage: "assets/images/bussines.png",
        ItemColor: const Color(0xFFCF7E48)
    ),ItemData(
        ItemId: "technology",
        ItemName: "Environment",
        ItemImage: "assets/images/environment.png",
        ItemColor: const Color(0xFF4882CF)
    ),ItemData(
        ItemId: "science",
        ItemName: "Science",
        ItemImage: "assets/images/science.png",
        ItemColor: const Color(0xFFF2D352)
    ),
  ];
  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.of(context);
    var theme = Theme.of(context);
    return  Container(
      decoration: BoxDecoration(
        color: ColorPalette.secondaryColor,
        image:const DecorationImage(
            image: AssetImage("assets/images/pattern.png")),
      ),

      child: Scaffold(
        appBar:
        AppBar(
            title:  Text(selectedItem==null?"News App":selectedItem!.ItemName),
          actions: [
             if(selectedItem!=null)
               IconButton(onPressed: (){}, icon: const Icon(Icons.search_rounded,size: 35,color: Colors.white,))
          ],
          centerTitle: true,
          ),
         drawer:Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: ColorPalette.primaryColor
                ),
                child:
              Center(
                child: Text("News App!",style: theme.textTheme.bodyLarge?.
                copyWith(color: ColorPalette.secondaryColor),
                ),
              ),
              ),
              InkWell(
                onTap: ()
                {
                  Navigator.pop(context);
                  onCategoriesClicked();
                },
                child: ListTile(
                  leading: const Icon(Icons.menu,size: 35,color: Color(0xFF303030),),
                title: Text("Categories",style: theme.textTheme.bodyLarge),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.settings,size: 35,color: Color(0xFF303030),),
                title: Text("Settings",style: theme.textTheme.bodyLarge),
              ),
            ],
          ),
           ),
        body: selectedItem==null? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Pick your category \n of interest",
                style: theme.textTheme.bodyMedium?.copyWith(color: const Color(0xFF4F5A69)),),
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1
              ),
                itemCount: itemData.length,
                itemBuilder: (context, index) =>  Item(items: itemData[index],
                  onItemClicked: onItemClicked, index: index,),
              ),
            ),
          ],
        ): DataView(item: selectedItem!, ),
         )
        );
  }

   ItemData? selectedItem;

  void onItemClicked(ItemData data)
 {
   setState(() {
     selectedItem=data;
   });
 }
void onCategoriesClicked()
{
  setState(() {
    selectedItem=null;
  });
}

}
