﻿var myTabOption = [
	{optionValue:"Default", optionText:"Default", addClass:"", url:"index.html"},
	{optionValue:"scriptTab", optionText:"Script Tab", addClass:"", url:"scriptTab.html"}	
];

var pageTabChange = function(selectedObject, value){
	location.href = selectedObject.url;
};

$(document.body).ready(function(){
	var myPageID = "";
	try{
		myPageID = pageID;
	}catch(e){
		
	}
	$("#demoPageTabTarget").bindTab({
		value: (myPageID||""), 
		overflow: "scroll", 
		options: myTabOption, 
		onchange: pageTabChange
	});
});