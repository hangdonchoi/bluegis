<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1.0, minimum-scale=1" />
	<title>회사조회</title>
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../resources/axisj-1.0.5/ui/AXJ.png" />
    <link rel="apple-touch-icon-precomposed" href="../resources/axisj-1.0.5/ui/AXJ.png" />
    <meta property="og:image" content="/samples/_img/axisj_sns.png" />
    <meta property="og:site_name" content="Axis of Javascript - axisj.com" />
    <meta property="og:description" id="meta_description" content="Javascript UI Library based on JQuery" />

    <!-- css block start-->
    <link rel="stylesheet" type="text/css" href="../resources/axisj-1.0.5/ui/arongi/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../resources/axisj-1.0.5/ui/arongi/page.css">
    <link rel="stylesheet" type="text/css" href="../resources/axisj-1.0.5/ui/arongi/AXJ.min.css">
    <!-- css block end-->
    <!-- js block start-->

    <script type="text/javascript" src="../resources/axisj-1.0.5/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="../resources/axisj-1.0.5/dist/AXJ.min.js"></script>
    <script type="text/javascript" src="../resources/js/AXGrid.js"></script>
     
   <!--   <script type="text/javascript" src="../resources/js/page.js"	></script> -->
    <script type="text/javascript" src="../resources/js/pageTab.js"	></script>
    
    <!-- js block end-->
	
	<!-- mobile setting start-->
	<script type="text/javascript">	
	/* 모바일 스크립트 적용 너비 사용자 설정 구문 */
    AXInput.setConfig({ responsiveMobile: 648 });
    $.arrayToJsonObject = function(array) {
        var object = {};
        $.each(array, function() {
            if (object[this.name]) {
                if (!object[this.name].push) {
                    object[this.name] = [ object[this.name] ];
                }
                object[this.name].push(this.value || '');
            } else {
                object[this.name] = this.value || '';
            }
        });
        return object;
	};
	
	var myGrid = new AXGrid(); // 그리드 변수를 초기화 합니다.
	var fnObj = {
		pageStart: function(){
			myGrid.setConfig({
				targetID : "AXGridTarget",
				colGroup : [
					{key:"cmyMngtNo", label:"회사관리번호", width:"50", align:"right"},
					{key:"cmyNm", label:"회사명", width:"200"},
					{key:"btpyNo", label:"사업자번호", width:"100"}
//				,
//					{key:"regDate", label:"작성일", width:"100"},
//					{key:"price", label:"가격", width:"100", align:"right", formatter:"money"},
//					{key:"amount", label:"수량", width:"80", align:"right", formatter:"money"},
//					{key:"cost", label:"금액", width:"100", align:"right", formatter:function(){
//						return (this.item.price.number() * this.item.amount.number()).money();
//					}},
//					{key:"desc", label:"비고", width:"*"}
				],
				body : {
					onclick: function(){
						toast.push(Object.toJSON(this.item));
					}
				},
				 page:{
                     paging:true,
                     pageNo:1,
                     pageSize:100,
                     status:{formatter: null}
                 }
			});
			
			 myGrid.setList({
                 ajaxUrl:"/gis/cp0002/select", ajaxPars:"param1=1&param2=2", onLoad:function(){
                     //trace(this);
                 }
             });

			
			// $.ajax({
	        //       'type': 'POST',
	        //       'url': "/gis/cp0002/select",
	        //       'contentType': 'application/json',
	         //      'dataType': 'json',
	          //     'data': "",
	         //      'success': function(result){
	            	//   var list = [
	            	//				{cmyMngtNo:"2234@2222.com", cmyNm:"AXGrid 첫번째 줄 입니다.", writer:"김기영", regDate:"2013-01-18", 
	            	//					desc:"myGrid.setList 의 첫번째 사용법 list json 직접 지정 법", price:123000, amount:10}];
	            	
	          //  		console.log(result);
	           // 	   var list =JSON.stringify(result);
	           // 	   
	           // 	  
	           // 	   //list = tmpList.replace(/\"([^(\")"]+)\":/g,"$1:");  //This will remove all the quotes

//	            	   myGrid.setList(true,list);
	//            	   
	  //          	   
		//				console.log("tttt");
	      //         }
	        //}); 
		}	
	};

	$(document.body).ready(function(){
		fnObj.pageStart.delay(0.1);
	});
	</script>
	<!-- mobile setting end-->
	
</head>
<body>
	<div id="AXPage">
        <!-- AXPageBody -->
        <div id="AXPageBody">
        			<div id="AXGridTarget" style="height:400px;"></div>
        	
       	</div>
	</div>
	<div align="right">
		<a href="#ax" class="AXButtonLarge">회사등록</a>
	</div>
</body>
</html>
