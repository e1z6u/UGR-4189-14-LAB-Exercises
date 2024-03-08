// Exercise 2

import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  try {
    // Make the HTTP request
    final response = await http.get(Uri.parse(url));

    // Check if the request was successful (status code 200)
    if (response.statusCode == 200) {
      // Write the response to a file
      File file = File(savePath);
      await file.writeAsBytes(response.bodyBytes);
      print('File downloaded successfully to: $savePath');
    } else {
      print('Failed to download the file. Status code: ${response.statusCode}');
    }
  } catch (error) {
    print('Error during download: $error');
  }
}

void main() async {
  // URL of the file to download
  String fileUrl = 'https://example.com/path/to/file.zip';

  // Path to save the downloaded file
  String savePath = 'downloaded_file.zip';

  // Use async and await to wait for the download process to complete
  await downloadFile(fileUrl, savePath);
}
