import 'package:flutter/material.dart';

class FacultyDataModel {
  final String name, thainame, imageUrl, link;

  FacultyDataModel(this.name, this.thainame, this.imageUrl, this.link);
}

class FacultyDetail extends StatelessWidget {
  final FacultyDataModel facultyDataModel;
  const FacultyDetail({Key? key, required this.facultyDataModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(facultyDataModel.name),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.black12,
            ),
            child: Text(
              facultyDataModel.link,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            facultyDataModel.thainame,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Image.network(facultyDataModel.imageUrl,
              width: double.infinity, height: 300),
        ],
      ),
    );
  }
}

class FacultyList extends StatefulWidget {
  const FacultyList({Key? key}) : super(key: key);

  @override
  _FacultyListState createState() => _FacultyListState();
}

class _FacultyListState extends State<FacultyList> {
  static List<String> facultyname = ['Engineering', 'Medicine', 'Architecture'];
  static List<String> facultyThainame = [
    'วิศวกรรมศาสตร์',
    'แพทยศาสตร์',
    'สถาปัตยกรรมศาสตร์'
  ];
  static List url = [
    'https://www.u-review.in.th/uploads/contents/20150721171737FK9z2x2.jpg',
    'https://admissions.kku.ac.th/wp-content/uploads/2021/08/03.jpg',
    'https://f.ptcdn.info/233/005/000/1368755964-PC130225JP-o.jpg',
  ];

  final List<FacultyDataModel> facultyData = List.generate(
      facultyname.length,
          (index) => FacultyDataModel(facultyname[index], facultyThainame[index],
          '${url[index]}', '${url[index]}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KKU Faculties'),
      ),
      body: ListView.builder(
          itemCount: facultyData.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(facultyData[index].name),
                leading: const Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          FacultyDetail(facultyDataModel: facultyData[index]),
                    ),
                  );
                },
              ),
            );
          }),
    );
  }
}
