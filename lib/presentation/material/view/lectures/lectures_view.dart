import 'dart:io';
import 'package:fci/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

class LecturesView extends StatefulWidget {
  const LecturesView({Key? key}) : super(key: key);

  @override
  _LecturesViewState createState() => _LecturesViewState();
}

class _LecturesViewState extends State<LecturesView> {
  List<FileItem> _files = [];

  void _addFile(FileItem fileItem) {
    setState(() {
      _files.add(fileItem);
    });
  }

  void _deleteFile(int index) {
    setState(() {
      _files.removeAt(index);
    });
  }

  Future<void> _downloadFile(FileItem fileItem) async {
    final directory = await getApplicationDocumentsDirectory();
    final fileName = path.basename(fileItem.file.path);
    final filePath = '${directory.path}/$fileName';
    final newFile = File(filePath);
    await newFile.writeAsBytes(await fileItem.file.readAsBytes());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.firstGradient1,
      body: ListView.builder(
        itemCount: _files.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    topRight:Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: ListTile(
                  title: Text(
                    path.basename(_files[index].file.path),
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.download),
                        onPressed: () => _downloadFile(_files[index]),
                      ),
                      SizedBox(width: 10),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => _deleteFile(index),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey),
        ),
        child: FloatingActionButton(
          onPressed: () async {
            FilePickerResult? result = await FilePicker.platform.pickFiles();
            if (result != null) {
              String? filePath = result.files.single.path;
              if (filePath != null) {
                File file = File(filePath);
                FileItem fileItem = FileItem(file: file);
                _addFile(fileItem);
              }
            }
          },
          tooltip: 'Upload File',
          child: Icon(
            Icons.add,
            color: Colors.grey,
          ),
          backgroundColor: ColorManager.lightBlue,
          elevation: 0,
        ),
      ),
    );
  }
}

class FileItem {
  final File file;

  FileItem({required this.file});
}