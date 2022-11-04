variable "filename" {
  default = "pets.txt"
}
variable "content" {
  default="We love pets!"
}
variable "filename1" {
  default = "pets1.txt"
  type= string
}
variable "content1" {
  default="We love pets1!"
  type=string
  description = "this is the pets1.txt content"
}
# variable "input_filename"{
# }
# variable "input_content" {
# }

variable var_tuple{
  type = tuple([string,number])
  default =["abc",123]
}
variable var_list{
  type = list(number)
  default =[123,123,345]
}




