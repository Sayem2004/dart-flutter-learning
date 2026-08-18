void main(){

List<String> names =["rahim", "karim", "hasan"];


var result = names.map((name) {
  return name.toUpperCase();
});

print(result);

}