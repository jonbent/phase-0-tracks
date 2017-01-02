console.log("Hello World.");

var h1_elements = document.getElementsByTagName("h1");

var chosen_element = h1_elements[0];

chosen_element.style.color = "pink";
var all_lists = document.getElementsByTagName("a");
var second_list = document.getElementById("list_2");

var p_tags = document.getElementsByTagName("p")
var p_tag = p_tags[0]

var i = 0;
var navbar_length = all_lists.length;

while (navbar_length > 0) {
	all_lists[i].style.color = "purple";
	all_lists[i].style.color = "purple";
	i += 1;
	navbar_length -= 1
}

second_list.style.color = "red";


function changeLinkColorOnClick(event) {
	event.target.style.color = "red";
}

p_tag.addEventListener("click", changeLinkColorOnClick);