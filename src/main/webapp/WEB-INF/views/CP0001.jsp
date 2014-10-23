<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1.0, minimum-scale=1" />
	<title>회사등록</title>
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
    <script type="text/javascript" src="../resources/js/page.js"></script>
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
	var pageID = "AXValidator";
	var myValidator = new AXValidator(); // Validator 선언
	var myModal = new AXModal();
	var fnObj = {
			pageStart: function(){
				
				myValidator.setConfig({
					targetFormName : "myForm",
				});
				myModal.setConfig({windowID:"myModal"});
			},
			addr: {
				search: function(){
					myModal.open({
						method:"get",
						url:"../cm/addr",
						pars:"",
						top:50, width:500
					});				
				},
				set: function(obj){
					myForm.zipnum.value = obj.zipnum;
					myForm.addr.value = obj.addr;
					myForm.dtlsaddr.focus();	

				}	
			},
			saveForm: function(){
				var validateResult = myValidator.validate();
				if (!validateResult) {
					var msg = myValidator.getErrorMessage();
					AXUtil.alert(msg);
					myValidator.getErrorElement().focus();
					return false;
				}else{
					console.log(myForm);
					alert(	validateResult );
					//$.arrayToJsonObject($("#myForm").serializeArray());
					var jsonStr = Object.toJSON($.arrayToJsonObject($("#myForm").serializeArray()));
					
			        $.ajax({
			               'type': 'POST',
			               'url': "/gis/cp0001/insert",
			               'contentType': 'application/json',
			               'dataType': 'json',
			               'data': jsonStr,
			               'success': function(result){
			                       alert(result.user_name+"님 환영합니다");
			               }
			        }); 
			        
			        
				}
			}
		}

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
            <div class="AXdemoPageContent">
                <h2>회사기본정보 등록</h2>

                <div style="padding:0px;width:800px;">
                    <form id ="myForm" name="myForm" action="/gis/cp0001/insert" method="POST">
                    <table class="AXFormTable">
                        <colgroup>
                            <col width="100" />
                            <col />
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>
                                    <div class="tdRel">회사관리코드</div>
                                </th>
                                <td class="last">
                                    <div class="tdRel">
                                        <input type="text" name="cmyMngtNo" id="cmyMngtCd" value="" class="AXInput W200" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tdRel">회사명</div>
                                </th>
                                <td class="last">
                                    <div class="tdRel">
                                        <input type="text" name="cmyNm" id="cmyNm" placeholder="회사명" value="" class="AXInput W200 av-required" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tdRel">업종</div>
                                </th>
                                <td class="last">
                                    <div class="tdRel">
                                    	<select id="bstpCd" name="bstpCd">
											<option value="00001">음식점</option>                                    	
											<option value="00002">주점</option>                                    	
											<option value="00003">숙박업소</option>                                    	
											<option value="00004">기타</option>                                    	
                                    	</select>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tdRel">email</div>
                                </th>
                                <td class="last">
                                    <div class="tdRel">
                                        <input type="text" name="emlAdr" id="emlAdr" placeholder="email주소" value="" class="AXInput W200 av-email" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tdRel">사업자번호 </div>
                                </th>
                                <td class="last">
                                    <div class="tdRel">
                                        <input type="text" name="btpyNo" id="btpyNo" placeholder="사업자번호" value="" class="AXInput W200 av-required" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tdRel">회사 연락처01</div>
                                </th>
                                <td class="last">
                                    <div class="tdRel">
                                        <input type="text" name="cmyCntp01" id="cmyCntp01" placeholder="회사 연락처01" value="" class="AXInput W200 av-required" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tdRel">회사 연락처02</div>
                                </th>
                                <td class="last">
                                    <div class="tdRel">
                                        <input type="text" name="cmyCntp02" id="cmyCntp02" placeholder="회사 연락처02" value="" class="AXInput W200" />
                                    </div>
                                </td>
                            </tr>
							<tr>
		                        <th>
		                            <div class="tdRel">우편번호</div>
		                        </th>
		                        <td class="last">
		                            <div class="tdRel">
		                                <input type="text" name="adrFrtNo"  id="adrFrtNo" value="" class="AXInput W60" readonly="readonly" />
		                                <input type="button" value="주소검색창 열기" class="AXButton" onclick="fnObj.addr.search();" />
		                            </div>
		                        </td>
		                    </tr>
		                    <tr>
		                        <th>
		                            <div class="tdRel">주소</div>
		                        </th>
		                        <td class="last">
		                            <div class="tdRel">
		                                <input type="text" name="bscAdr" id="bscAdr" value="" class="AXInput W200" readonly="readonly" />
		                                <input type="text" name="dtlAdr" id="dtlAdr" value="" class="AXInput W200" />
		                            </div>
		                        </td>
                    		</tr>
                        </tbody>
                    </table>
                    </form>

                    <div style="padding:10px;">
                        <button class="AXButton Blue" onclick="fnObj.saveForm();">저장</button>
                    </div>

                </div>

            </div>
        </div>
    </div>
</body>
</html>
