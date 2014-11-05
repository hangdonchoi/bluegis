﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1.0, minimum-scale=1" />
	<title>AXGrid RWD - AXGrid</title>
    <link rel="shortcut icon" href="../../ui/axisj.ico" type="image/x-icon" />
    <link rel="icon" href="../../ui/axisj.ico" type="image/x-icon" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../../ui/AXJ.png" />
    <link rel="apple-touch-icon-precomposed" href="../../ui/AXJ.png" />
    <meta property="og:image" content="/samples/_img/axisj_sns.png" />
    <meta property="og:site_name" content="Axis of Javascript - axisj.com" />
    <meta property="og:description" id="meta_description" content="Javascript UI Library based on JQuery" />

      <!-- css block -->
    <link rel="stylesheet" type="text/css" href="resources/axisj-1.0.5/ui/arongi/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="resources/axisj-1.0.5/ui/arongi/page.css">
    <link rel="stylesheet" type="text/css" href="resources/axisj-1.0.5/ui/arongi/AXJ.min.css">

    <script type="text/javascript" src="resources/axisj-1.0.5/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="resources/axisj-1.0.5/dist/AXJ.min.js"></script>
    <script type="text/javascript" src="resources/js/page.js"></script>
    <script type="text/javascript" src="resources/js/pageTab.js"></script>
    <!-- js block -->
	
	<script type="text/javascript">
	var pageID = "AXGrid";
	var myGrid = new AXGrid();
	var itemSum = 0;
	var fnObj = {
		pageStart: function(){

			myGrid.setConfig({
				targetID : "AXGridTarget",
				theme : "AXGrid",
				//viewMode: "grid", // ["grid","icon","mobile"]
				// 브라우저 사이즈에 따른 changeGridView 설정
                mediaQuery: {
                    mx:{min:0, max:600}, dx:{min:600}
                },
				colGroup : [
					{key:"no", label:"번호", width:"40", align:"center", formatter:"money"}, 
					{key:"title", label:"제목", width:"200"},
					{key:"writer", label:"작성자", width:"100", align:"center"},
					{key:"date", label:"작성일", width:"100", align:"center"},
					{key:"desc", label:"비고", width:"*"}
				],
				
				body : {			
					onclick: function(){
						toast.push(Object.toJSON({index:this.index, item:this.item}));
						//alert(this.list);
						//alert(this.page);
					}
				},
				page:{
					paging:false,
					status:{formatter: null}
				}
			});
			
			var list = [
				{no:1, title:"AXGrid 첫번째 줄 입니다.AXGrid 첫번째 줄 입니다.AXGrid 첫번째 줄 입니다.", 
					writer:"장기영", img:"img/1.jpg", desc:"많은 글을 담고 있는 내용 입니다. 자연스럽게 줄이 넘어가고 표현되는 것이 관건 입니다.",
					category:"액시스제이", date:"2014-04-02"
				}, // item
				{no:2, title:"AXGrid 두번째 줄 입니다.", writer:"장기영", img:"img/2.jpg", category:"액시스제이", date:"2014-04-02"},
				{no:3, title:"AXGrid 세번째 줄 입니다.", writer:"장기영", img:"img/3.jpg", category:"액시스제이", date:"2014-04-02"},
				{no:4, title:"AXGrid 세번째 줄 입니다.", writer:"장기영", img:"img/4.jpg", category:"액시스제이", date:"2014-04-02"},
				{no:5, title:"AXGrid 세번째 줄 입니다.", writer:"장기영", img:"img/5.jpg", category:"액시스제이", date:"2014-04-02"},
				{no:6, title:"AXGrid 세번째 줄 입니다.", writer:"장기영", img:"img/6.jpg", category:"액시스제이", date:"2014-04-02"},
				{no:7, title:"AXGrid 세번째 줄 입니다.", writer:"장기영", img:"img/7.jpg", category:"액시스제이", date:"2014-04-02"},
				{no:8, title:"AXGrid 첫번째 줄 입니다.", writer:"장기영", img:"img/8.jpg", category:"액시스제이", date:"2014-04-02"},
				{no:9, title:"AXGrid 두번째 줄 입니다.", writer:"장기영", img:"img/9.jpg", category:"액시스제이", date:"2014-04-02"},
				{no:10, title:"AXGrid 세번째 줄 입니다.", writer:"장기영", img:"img/10.jpg", category:"액시스제이", date:"2014-04-02"},
				{no:11, title:"AXGrid 세번째 줄 입니다.", writer:"장기영", img:"img/11.jpg", category:"액시스제이", date:"2014-04-02"},
				{no:12, title:"AXGrid 세번째 줄 입니다.", writer:"장기영", img:"img/12.jpg", category:"액시스제이", date:"2014-04-02"},
				{no:13, title:"AXGrid 세번째 줄 입니다.", writer:"장기영", img:"img/13.jpg", category:"액시스제이", date:"2014-04-02"},
				{no:14, title:"AXGrid 세번째 줄 입니다.", writer:"장기영", img:"img/14.jpg", category:"액시스제이", date:"2014-04-02"},
				{no:15, title:"AXGrid 두번째 줄 입니다.", writer:"장기영", img:"img/15.jpg", category:"액시스제이", date:"2014-04-02"},
				{no:16, title:"AXGrid 세번째 줄 입니다.", writer:"장기영", img:"img/16.jpg", category:"액시스제이", date:"2014-04-02"},
				{no:17, title:"AXGrid 세번째 줄 입니다.", writer:"장기영", img:"img/17.jpg", category:"액시스제이", date:"2014-04-02"},
				{no:18, title:"AXGrid 세번째 줄 입니다.", writer:"장기영", img:"img/18.jpg", category:"액시스제이", date:"2014-04-02"},
				{no:19, title:"AXGrid 세번째 줄 입니다.", writer:"장기영", img:"img/19.jpg", category:"액시스제이", date:"2014-04-02"},
				{no:20, title:"AXGrid 세번째 줄 입니다.", writer:"장기영", img:"img/20.jpg", category:"액시스제이", date:"2014-04-02"}
			];
			myGrid.setList(list);
			
		}
	};

    jQuery(document).ready(fnObj.pageStart.delay(0.1));
	</script>
	<!-- js block -->
	
</head>
<body>

<div id="AXPage">

    <div id="AXPageBody" class="SampleAXSelect">

        <div id="demoPageTabTarget" class="AXdemoPageTabTarget"></div>
        <div class="AXdemoPageContent">

            <h1>AXGrid RWD</h1>
            <h3>브라우저 너비를 줄이거나 늘려서 반응형 환경을 만들어 보세요.</h3>
            <div id="AXGridTarget"></div>

        </div>
    </div>
</div>

</body>
</html>
