import 'package:flutter/material.dart';

List<String> getListElements(i) {
  var items = List<String>.generate(i, (counter) => "Problem ${counter + 1}");
  return items;
}

Widget getListView(int i) {
  var listElem = getListElements(i);

  var listView = ListView.builder(
    itemCount: listElem.length,
    itemBuilder: (context, index) {
      if (index.isOdd) {
        return ListTile(
          leading: const Icon(Icons.arrow_right),
          trailing: const Icon(Icons.star),
          title: Text(listElem[index]),
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Problem ${listElem[index]} is my favorite"),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {},
              ),
          )));
      }
      else {
        return ListTile(
          leading: const Icon(Icons.arrow_right),
          title: Text(listElem[index]),
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Problem ${listElem[index]} is selected"),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {},
            ),
          )));
      }
    }
  );
  return listView;
}