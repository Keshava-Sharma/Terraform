# This cretaes the test files with the file name

resource "local_file" "text_file" {
  content  = "Hi this is Nov"
  filename = "text_file1.tx"
  file_permission = "0776"
}

resource "local_file" "text_file_2" {
  content  = "Hi this is Nov, no shave nov"
  filename = "text_file2.tx"
  file_permission = "0776"
}

