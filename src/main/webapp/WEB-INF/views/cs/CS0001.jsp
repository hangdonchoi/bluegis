<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title></title>

    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ui.jqgrid.css">
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jqgrid/i18n/grid.locale-kr.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jqgrid/jquery.jqGrid.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("div .exp").css("font-size", 11);
            $("#user_list").jqGrid({
                // ajax 요청주소
                url:"/getCustInfoList",
                // 요청방식
                mtype:"post",
                // 결과물 받을 데이터 타입
                datatype:"json",
                // 그리드 갭션
                caption:"User List",
                // 그리드 높이
                height:"auto",
                // 그리드(페이지)마다 보여줄 행의 수 -> 매개변수이름은 "rows"로 요청된다
                rowNum:10,
                // rowNum변경 옵션
                rowList:[10,15,20],
                // 컬럼명
                colNames:["id","name","email","age"],
                // 컬럼 데이터(추가, 삭제, 수정이 가능하게 하려면 autoincrement컬럼을 제외한 모든 컬럼을 editable:true로 지정)
                // edittyped은 text, password, ... input type명을 사용
                colModel:[
                          {name:"id", index:"id", align:"center"},
                          {name:"name", index:"name", align:"center", editable:true, edittype:"text"},
                          {name:"email", index:"email", align:"center", editable:true, edittype:"text"},
                          {name:"age", index:"age", align:"center", editable:true, edittype:"text"}
                          ],
                // 네비게이션 도구를 보여줄 div요소
                pager:"#pager",
                autowidth:true,
                // 전체 레코드수, 현재레코드 등을 보여줄지 유무
                viewrecords:true,
                // 추가, 수정, 삭제 url
                editurl: "/UserEditAction"
            });
           
            // 네비게시션 도구 설정
            $("#user_list").jqGrid(
                    "navGrid",
                    "#pager",
                    {search:false, edit:true, add:true, del:true},
                    {closeAfterEdit: true, reloadAfterSubmit: true},
                    {closeAfterAdd: true, reloadAfterSubmit: true},
                    {reloadAfterSubmit: true}
            );
        });
    </script>
</head>
<body>
    <div>
        <form id="base">
            <fieldset>
                <legend>회사기본정보</legend>

                <div class="exp">회사명</div>
                <div><input type="text" name="compNm" /></div>
                <div class="exp">업종</div>
                <div>
                    <select>
                        <option value="1">식당</option>
                        <option value="2">휴대폰대리점</option>
                        <option value="3">복사집</option>
                    </select>
                </div>
                <div>
                    <div class="exp">주소</div>
                    <div><input type="text" name="compNm" />x,y좌표</div>

                </div>
                <div>
                    <div class="exp">회사 연락처 </div>
                    <div><input type="text" /><input type="text" /><input type="text" /></div>
                </div>
                <div>
                    <div class="exp">휴대폰</div>
                    <div><input type="text" /><input type="text" /><input type="text" /></div>
                </div>
                <div>
                    <button name="addCompBase">기본정보저장</button>
                </div>
                
            </fieldset>
        </form>
        <div>


        </div>
        <form id="detail">

            <fieldset>
                <legend>판매상품정보</legend>
              
                <div class="exp">상품명</div>
                <div><input type="text" name="prdNm" /></div>
                <div class="exp">상품종류코드</div>
                <div><input type="text" name="prdKdcd" /></div>
                <div class="exp">가격</div>
                <div><input type="text" name="prdPrice" /></div>
                <div class="exp">판매여부</div>
                <div>
                    <select>
                        <option value="1">Y</option>
                        <option value="0">N</option>
                    </select>

                </div>
                <div class="exp">상세내용</div>
                <div><input type="text" name="detailInfo" /></div>
                <div class="exp">세일여부</div>
                <div>
                    <select>
                        <option value="1">Y</option>
                        <option value="0">N</option>
                    </select>
                </div>
                <div class="exp">세일후 가격</div>
                <div><input type="text" name="prdSalePrice" /></div>
                <div class="exp">세일내용</div>
                <div><input type="text" name="detailSaleInfo" /></div>
                <div>
                    <div class="exp">SALE 기간</div>
                    <div><input type="text" /><input type="text" /></div>

                </div>
                <div>
                    <button name="addCompDetail">상세정보저장</button>
                </div>
            </fieldset>
            
            <table id="user_list"></table>
   			 <div id="pager"></div>
        </form>
    </div>
  
</body>
</html>
