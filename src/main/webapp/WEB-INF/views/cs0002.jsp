<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
<link rel = "stylesheet" type = "text/css" media = "screen" href = "resources/css/jquery-ui-1.10.4.custom.min.css"/>
<link rel = "stylesheet" type = "text/css" media = "screen" href = "resources/css/ui.jqgrid.css"/>
 
<script src = "resources/js/jquery-1.11.0.min.js" type = "text/javascript"></script>
<script src = "resources/js/i18n/grid.locale-kr.js" type = "text/javascript"></script>
<script src = "resources/js/jquery.jqGrid.min.js" type = "text/javascript"></script>
 
<script>
    $(window.document).ready(function() {
    	$("#selBoard").click(function(){
    		
	        $("#grid").jqGrid({
	            url : 'boardList',
	            caption : '회사 상품리스트',    // caption : 그리드의 제목을 지정한다.
	            datatype : 'json',               // datatype : 데이터 타입을 지정한다.
	                                                    // (json 으로 외부에 요청을 보내면 보안정책에 위배되어 요청이 나가질 않는다.
	                                                    //  따라서 datatype 을 jsonp로 변경하고 보내야 한다.)
	 
	            mtype : 'post',                     // mtype : 데이터 전송방식을 지정한다.
	            height : '500px',                 // height : 그리드의 높이를 지정한다.
	            pager : '#pager',               // pager : 도구 모임이 될 div 태그를 지정한다.
	            rowNum : 1,                      // rowNum : 한 화면에 표시할 행 개수를 지정한다.
	            loadonce : true,                // loadonce : rowNum 설정을 사용하기 위해서 true로 지정한다.
	            rowList : [1, 2, 3],       // rowList : rowNum을 선택할 수 있는 옵션을 지정한다.
	            editurl : 'boardEdit',
	            gridview:true,
	            jaxGridOptions: { contentType: 'application/json; charset=utf-8' },
	            serializeGridData: function (postData) {return JSON.stringify(postData);},
	            // colNames : 열의 이름을 지정한다.
	            colNames : [ '상품코드', '상품명', '유효개시일자', '유효종료일자', '가격', '할인여부', '할인후 가격', '삭제여부', '입력자' ],
	            colModel : [
	                        { name : 'prodCd',index :'prodCd', width : 70,align : 'center',editable:true, editoptions: {size:10, maxlength: 15} },
	                        { name : 'prodNm',         index : 'prodNm',            width : 100,align : 'left', editable: true,edittype:'textarea' ,editoptions: {rows:"2",cols:"10"}  },
	                        { name : 'vldStdt',             index : 'vldStdt',                width : 100, editable: true,   align : 'left'   },
	                        { name : 'vldEddt',         index : 'vldEddt',            width : 200, editable: true,   align : 'left'   },
	                        { name : 'price',             index : 'price',            width : 100, editable: true,   align : 'center' },
	                        { name : 'saleYn',    index : 'saleYn',    width : 100,  editable: true,  align : 'center' },
	                        { name : 'saleAftPrice',     index : 'saleAftPrice',         width : 100,  editable: true,  align : 'center' },
	                        { name : 'delYn',         index : 'delYn',         width : 100, editable: true,   align : 'center' },
	                        { name : 'inppCd',         index : 'inppCd',         width : 100,  editable: true,  align : 'center' }
	                        ],
	            
	            // jqGrid 에서 default 형태의 JSON 이 아닌 소셜픽만의 고유의 json 형태로 날아오기에.
	            // 소셜픽의 API 를 바꿀 순 없어, jqGrid 에서 json을 
	            // customizing하여 사용하기 위해 jsonReader를 사용했다.
	            
	            
	            jsonReader : {
	                            repeatitems : false,
	  //                          id : "rank",
	   //                         root : function (obj) { return obj.socialpick.item; },
	    //                        page : function (obj) { return 1; },
	     //                       total : function (obj) { return 1; },
	      //                      records : function (obj) {return obj.socialpick.item.length; }
	            }
	 
	        // navGrid() 메서드는 검색 및 기타기능을 사용하기위해 사용된다.
	        }).navGrid('#pager', {
	            search : true,
	            edit : true,
	            add : true,
	            del : true
	        });
    	});
    	
    	
    });
    jQuery.extend(jQuery.jgrid.edit, {
        closeAfterAdd: true,
        closeAfterEdit:true,
        recreateForm: true,
        reloadAfterSubmit: false,
        left : 300,
        top :  200,
        mtype : 'post',
        ajaxEditOptions: { contentType: "application/json" },
        serializeEditData: function (postData) {
             return JSON.stringify(postData);
        },
        afterComplete: function (response,postdata,formid){
         var result = jQuery.parseJSON(response.responseText).success;
         if (result){
           switch (jQuery.parseJSON(response.responseText).oper){
            case 'add':  alert ("저장 되었습니다 !");
            break;
            case 'edit': alert ("수정 되었습니다 !");
            break;
            case 'del':  alert ("삭제 되었습니다 !");
            break;
           }
           jQuery('#selBoard').trigger('reloadGrid');
         } else {
          
         }
        },
        afterShowForm : function (formid){
        },
        beforeSubmit : function(postdata, formid) {
         success = true;
         message = "저장되었습니다!";
           return[success,message];
        }
}); 
</script>
<title>jqGrid</title>
</head>
<body>
	<button id ="selBoard"></button>
    <table id = "grid"></table>
    <div id = "pager"></div>
</body>
</html>