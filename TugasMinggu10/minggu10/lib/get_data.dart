import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:minggu10/get_detail_screen.dart';

class GetDataSreen extends StatefulWidget {
  const GetDataSreen({Key? key}) : super(key: key);

  @override
  _GetDataSreenState createState() => _GetDataSreenState();
}

class _GetDataSreenState extends State<GetDataSreen> {
  final String url = "https://reqres.in/api/users?page=2";
  List? data;
  @override
  void initState() {
    _getRefreshData();
    super.initState();
  }

  Future<void> _getRefreshData() async {
    this.getJsonData(context);
  }

  Future<void> getJsonData(BuildContext context) async {
    var response = await http.get(Uri.parse(url), headers: {
      "Accept": "aplication/json",
    });
    print(response.body);
    setState(() {
      var convertDataToJson = jsonDecode(response.body);
      data = convertDataToJson['data'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get data api regres"),
      ),
      body: RefreshIndicator(
          onRefresh: _getRefreshData,
          child: data == null
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
              itemCount: data == null ? 0 : data!.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GetDataDetailScreen(
                                value: data![index]["id"])),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              ClipRect(
                                child: Image.network(
                                  data![index]["avatar"],
                                  height: 80,
                                  width: 80,
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                children: [
                                  Text(data![index]["first_name"] +
                                    " " +
                                    data![index]["last_name"]),
                                  Text(data![index]["email"]),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider()
                    ],
                  ),
                );
              }),
          ));
  }
}
