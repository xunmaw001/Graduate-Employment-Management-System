<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">


<head>
    <%@ include file="../../static/head.jsp" %>
    <!-- font-awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
</head>
<style>

</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">
                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">就业信息管理</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">就业信息管理</li>
                        <li class="breadcrumb-item active">就业信息列表</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">就业信息列表</h3>
                        <div class="table-responsive mb-3">
                            <div class="col-sm-12">
                                                                                                                                 
                                            <label>
                                                就业地区
                                                <select name="diquTypesSelectSearch" style="width: 100px;" id="diquTypesSelectSearch" class="form-control form-control-sm"
                                                        aria-controls="tableId">
                                                </select>
                                            </label>
                                 
                                        <label>
                                            公司名称
                                            <input type="text" id="gongsiNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="公司名称" aria-controls="tableId">
                                        </label>
                                                                                                 
                                            <label>
                                                担任职位
                                                <select name="zhiweiTypesSelectSearch" style="width: 100px;" id="zhiweiTypesSelectSearch" class="form-control form-control-sm"
                                                        aria-controls="tableId">
                                                </select>
                                            </label>
                                                                
                                                                                                                                                                                                 
                                            <label>
                                                姓名
                                                <input type="text" id="nameSearch"  style="width: 120px;" class="form-control form-control-sm"
                                                       placeholder="姓名" aria-controls="tableId">
                                            </label>

                                            <label>
                                                学校
                                                <select name="xuexiaoTypesSelectSearch"  style="width: 150px;" id="xuexiaoTypesSelectSearch" class="form-control form-control-sm"
                                                        aria-controls="tableId">
                                                </select>
                                            </label>
                                                                                                                                                                                                                                                 
                                            <label>
                                                身份证号
                                                <input type="text" id="idNumberSearch"  style="width: 120px;" class="form-control form-control-sm"
                                                       placeholder="身份证号" aria-controls="tableId">
                                            </label>
                                                 
                                            <label>
                                                手机号
                                                <input type="text" id="phoneSearch"  style="width: 120px;" class="form-control form-control-sm"
                                                       placeholder="手机号" aria-controls="tableId">
                                            </label>
                                                                                                                                                                                                
                                <button onclick="search()" type="button" class="btn btn-primary">查询</button>
                                <button onclick="add()" type="button" class="btn btn-success 新增">添加</button>
                                <button onclick="graph_diqu()" type="button" class="btn btn-success 报表">地区就业统计报表</button>
                                <button onclick="graph_xuexiao()" type="button" class="btn btn-success 报表">学校毕业数统计报表</button>
                                <button onclick="graph_yes_no()" type="button" class="btn btn-success 报表">是否毕业统计人数报表</button>
                                <button onclick="deleteMore()" type="button" class="btn btn-danger 删除">批量删除</button>
                                <span ><b size="4" style="float:right;margin-right: 40px;margin-top: 30px;color: red" id="jiuyelv">就业999</b></span>
                            </div>
                            <table id="tableId" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th class="no-sort" style="min-width: 35px;">
                                        <div class="custom-control custom-checkbox">
                                            <input class="custom-control-input" type="checkbox" id="select-all"
                                                   onclick="chooseAll()">
                                            <label class="custom-control-label" for="select-all"></label>
                                        </div>
                                    </th>

                                    <th >姓名</th>
                                    <th >学校</th>
                                    <th >学院</th>
                                    <th >专业</th>
                                    <th >身份证号</th>
                                    <th >手机号</th>
                                    <th >是否就业</th>
                                    <th >就业地区</th>
                                    <th >公司名称</th>
                                    <th >公司负责人姓名</th>
                                    <th >担任职位</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody id="thisTbody">
                                </tbody>
                            </table>
                            <div class="col-md-6 col-sm-3">
                                <div class="dataTables_length" id="tableId_length">

                                    <select name="tableId_length" aria-controls="tableId" id="selectPageSize"
                                            onchange="changePageSize()">
                                        <option value="10">10</option>
                                        <option value="25">25</option>
                                        <option value="50">50</option>
                                        <option value="100">100</option>
                                    </select>
                                    条 每页

                                </div>
                            </div>
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-end">
                                    <li class="page-item" id="tableId_previous" onclick="pageNumChange('pre')">
                                        <a class="page-link" href="#" tabindex="-1">上一页</a>
                                    </li>

                                    <li class="page-item" id="tableId_next" onclick="pageNumChange('next')">
                                        <a class="page-link" href="#">下一页</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->

    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script language="javascript" type="text/javascript"
        src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>

<script>
    <%@ include file="../../utils/menu.jsp"%>
            <%@ include file="../../static/setMenu.js"%>
            <%@ include file="../../utils/baseUrl.jsp"%>
            <%@ include file="../../static/getRoleButtons.js"%>
            <%@ include file="../../static/crossBtnControl.js"%>
    var tableName = "jiuye";
    var pageType = "list";
    var searchForm = {key: ""};
    var pageIndex = 1;
    var pageSize = 10;
    var totalPage = 0;
    var dataList = [];
    var sortColumn = '';
    var sortOrder = '';
    var ids = [];
    var checkAll = false;

     var sexTypesOptions = [];
     var xuexiaoTypesOptions = [];

    var diquTypesOptions = [];
    var zhiweiTypesOptions = [];

    function init() {
        // 满足条件渲染提醒接口
    }

    // 改变每页记录条数
    function changePageSize() {
        var selection = document.getElementById('selectPageSize');
        var index = selection.selectedIndex;
        pageSize = selection.options[index].value;
        getDataList();
    }



    // 查询
    function search() {
        searchForm = {key: ""};

        <!-- 级联表的级联字典表 -->
                                                                                 
                        //姓名
        var nameSearchInput = $('#nameSearch');
        if( nameSearchInput != null){
            if (nameSearchInput.val() != null && nameSearchInput.val() != '') {
                searchForm.name = $('#nameSearch').val();
            }
        }
                     
        var sexTypesSelectSearchInput = document.getElementById("sexTypesSelectSearch");
        if(sexTypesSelectSearchInput != null){
            var sexTypesIndex = sexTypesSelectSearchInput.selectedIndex;
            if( sexTypesIndex  != 0){
                searchForm.sexTypes = document.getElementById("sexTypesSelectSearch").options[sexTypesIndex].value;
            }
        }
                                                                                                     
        var xuexiaoTypesSelectSearchInput = document.getElementById("xuexiaoTypesSelectSearch");
        if(xuexiaoTypesSelectSearchInput != null){
            var xuexiaoTypesIndex = xuexiaoTypesSelectSearchInput.selectedIndex;
            if( xuexiaoTypesIndex  != 0){
                searchForm.xuexiaoTypes = document.getElementById("xuexiaoTypesSelectSearch").options[xuexiaoTypesIndex].value;
            }
        }
                                                                                                     
                        //身份证号
        var idNumberSearchInput = $('#idNumberSearch');
        if( idNumberSearchInput != null){
            if (idNumberSearchInput.val() != null && idNumberSearchInput.val() != '') {
                searchForm.idNumber = $('#idNumberSearch').val();
            }
        }
                     
                        //手机号
        var phoneSearchInput = $('#phoneSearch');
        if( phoneSearchInput != null){
            if (phoneSearchInput.val() != null && phoneSearchInput.val() != '') {
                searchForm.phone = $('#phoneSearch').val();
            }
        }
                                                                                    <!-- 本表的查询条件 -->

                 
            //就业地区
        var diquTypesSelectSearchInput = document.getElementById("diquTypesSelectSearch");
        if(diquTypesSelectSearchInput != null){
            var diquTypesIndex = diquTypesSelectSearchInput.selectedIndex;
            if( diquTypesIndex  != 0){
                searchForm.diquTypes= document.getElementById("diquTypesSelectSearch").options[diquTypesIndex].value;
            }
        }
     
        //公司名称
        var gongsiNameSearchInput = $('#gongsiNameSearch');
        if( gongsiNameSearchInput != null){
            if (gongsiNameSearchInput.val() != null && gongsiNameSearchInput.val() != '') {
                searchForm.gongsiName = $('#gongsiNameSearch').val();
            }
        }
             
            //担任职位
        var zhiweiTypesSelectSearchInput = document.getElementById("zhiweiTypesSelectSearch");
        if(zhiweiTypesSelectSearchInput != null){
            var zhiweiTypesIndex = zhiweiTypesSelectSearchInput.selectedIndex;
            if( zhiweiTypesIndex  != 0){
                searchForm.zhiweiTypes= document.getElementById("zhiweiTypesSelectSearch").options[zhiweiTypesIndex].value;
            }
        }
                getDataList();
    }

    // 获取数据列表
    function getDataList() {
        http("jiuye/page", "GET", {
            page: pageIndex,
            limit: pageSize,
            sort: sortColumn,
            order: sortOrder,
            //本表的
            diquTypes: searchForm.diquTypes,
            gongsiName: searchForm.gongsiName,
            zhiweiTypes: searchForm.zhiweiTypes,
            //级联表的
                        name: searchForm.name,
                        sexTypes: searchForm.sexTypes,
                        xuexiaoTypes: searchForm.xuexiaoTypes,
                        idNumber: searchForm.idNumber,
                        phone: searchForm.phone,


        }, (res) => {
            if(res.code == 0) {
                clear();
                $("#thisTbody").html("");
                dataList = res.data.list;
                totalPage = res.data.totalPage;
                for (var i = 0; i < dataList.length; i++) { //遍历一下表格数据  
                    var trow = setDataRow(dataList[i], i); //定义一个方法,返回tr数据 
                    $('#thisTbody').append(trow);
                }
                $("#jiuyelv").html(res.jiuyelv);
                pagination(); //渲染翻页组件
                getRoleButtons();// 权限按钮控制
            }
        });
    }

    // 渲染表格数据
    function setDataRow(item, number) {
        //创建行 
        var row = document.createElement('tr');
        row.setAttribute('class', 'useOnce');
        //创建勾选框
        var checkbox = document.createElement('td');
        var checkboxDiv = document.createElement('div');
        checkboxDiv.setAttribute("class", "custom-control custom-checkbox");
        var checkboxInput = document.createElement('input');
        checkboxInput.setAttribute("class", "custom-control-input");
        checkboxInput.setAttribute("type", "checkbox");
        checkboxInput.setAttribute('name', 'chk');
        checkboxInput.setAttribute('value', item.id);
        checkboxInput.setAttribute("id", number);
        checkboxDiv.appendChild(checkboxInput);
        var checkboxLabel = document.createElement('label');
        checkboxLabel.setAttribute("class", "custom-control-label");
        checkboxLabel.setAttribute("for", number);
        checkboxDiv.appendChild(checkboxLabel);
        checkbox.appendChild(checkboxDiv);
        row.appendChild(checkbox)


                //姓名
        var nameCell = document.createElement('td');
        nameCell.innerHTML = item.name;
        row.appendChild(nameCell);

                    //学校
        var xuexiaoTypesCell = document.createElement('td');
        xuexiaoTypesCell.innerHTML = item.xuexiaoValue;
        row.appendChild(xuexiaoTypesCell);

                    //学院
        var xueyuanTypesCell = document.createElement('td');
        xueyuanTypesCell.innerHTML = item.xueyuanValue;
        row.appendChild(xueyuanTypesCell);

                    //专业
        var zhuanyeTypesCell = document.createElement('td');
        zhuanyeTypesCell.innerHTML = item.zhuanyeValue;
        row.appendChild(zhuanyeTypesCell);

                //身份证号
        var idNumberCell = document.createElement('td');
        idNumberCell.innerHTML = item.idNumber;
        row.appendChild(idNumberCell);


                //手机号
        var phoneCell = document.createElement('td');
        phoneCell.innerHTML = item.phone;
        row.appendChild(phoneCell);




        //是否就业
        var jiuyeTypesCell = document.createElement('td');
        jiuyeTypesCell.innerHTML = item.jiuyeValue;
        row.appendChild(jiuyeTypesCell);


        //就业地区
        var diquTypesCell = document.createElement('td');
        diquTypesCell.innerHTML = item.diquValue;
        row.appendChild(diquTypesCell);


        //公司名称
        var gongsiNameCell = document.createElement('td');
        gongsiNameCell.innerHTML = item.gongsiName;
        row.appendChild(gongsiNameCell);


        //公司负责人姓名
        var fuzerenNameCell = document.createElement('td');
        fuzerenNameCell.innerHTML = item.fuzerenName;
        row.appendChild(fuzerenNameCell);


        //担任职位
        var zhiweiTypesCell = document.createElement('td');
        zhiweiTypesCell.innerHTML = item.zhiweiValue;
        row.appendChild(zhiweiTypesCell);




        //每行按钮
        var btnGroup = document.createElement('td');

        //详情按钮
        var detailBtn = document.createElement('button');
        var detailAttr = "detail(" + item.id + ')';
        detailBtn.setAttribute("type", "button");
        detailBtn.setAttribute("class", "btn btn-info btn-sm 查看");
        detailBtn.setAttribute("onclick", detailAttr);
        detailBtn.innerHTML = "查看"
        btnGroup.appendChild(detailBtn)
        //修改按钮
        var editBtn = document.createElement('button');
        var editAttr = 'edit(' + item.id + ')';
        editBtn.setAttribute("type", "button");
        editBtn.setAttribute("class", "btn btn-warning btn-sm 修改");
        editBtn.setAttribute("onclick", editAttr);
        editBtn.innerHTML = "修改"
        btnGroup.appendChild(editBtn)
        //删除按钮
        var deleteBtn = document.createElement('button');
        var deleteAttr = 'remove(' + item.id + ')';
        deleteBtn.setAttribute("type", "button");
        deleteBtn.setAttribute("class", "btn btn-danger btn-sm 删除");
        deleteBtn.setAttribute("onclick", deleteAttr);
        deleteBtn.innerHTML = "删除"
        btnGroup.appendChild(deleteBtn)

        row.appendChild(btnGroup)
        return row;
    }


    // 翻页
    function pageNumChange(val) {
        if (val == 'pre') {
            pageIndex--;
        } else if (val == 'next') {
            pageIndex++;
        } else {
            pageIndex = val;
        }
        getDataList();
    }

    // 下载
    function download(url) {
        window.open(url);
    }

    // 渲染翻页组件
    function pagination() {
        var beginIndex = pageIndex;
        var endIndex = pageIndex;
        var point = 4;
        //计算页码
        for (var i = 0; i < 3; i++) {
            if (endIndex == totalPage) {
                break;
            }
            endIndex++;
            point--;
        }
        for (var i = 0; i < 3; i++) {
            if (beginIndex == 1) {
                break;
            }
            beginIndex--;
            point--;
        }
        if (point > 0) {
            while (point > 0) {
                if (endIndex == totalPage) {
                    break;
                }
                endIndex++;
                point--;
            }
            while (point > 0) {
                if (beginIndex == 1) {
                    break;
                }
                beginIndex--;
                point--
            }
        }
        // 是否显示 前一页 按钮
        if (pageIndex > 1) {
            $('#tableId_previous').show();
        } else {
            $('#tableId_previous').hide();
        }
        // 渲染页码按钮
        for (var i = beginIndex; i <= endIndex; i++) {
            var pageNum = document.createElement('li');
            pageNum.setAttribute('onclick', "pageNumChange(" + i + ")");
            if (pageIndex == i) {
                pageNum.setAttribute('class', 'paginate_button page-item active useOnce');
            } else {
                pageNum.setAttribute('class', 'paginate_button page-item useOnce');
            }
            var pageHref = document.createElement('a');
            pageHref.setAttribute('class', 'page-link');
            pageHref.setAttribute('href', '#');
            pageHref.setAttribute('aria-controls', 'tableId');
            pageHref.setAttribute('data-dt-idx', i);
            pageHref.setAttribute('tabindex', 0);
            pageHref.innerHTML = i;
            pageNum.appendChild(pageHref);
            $('#tableId_next').before(pageNum);
        }
        // 是否显示 下一页 按钮
        if (pageIndex < totalPage) {
            $('#tableId_next').show();
            $('#tableId_next a').attr('data-dt-idx', endIndex + 1);
        } else {
            $('#tableId_next').hide();
        }
        var pageNumInfo = "当前第 " + pageIndex + " 页，共 " + totalPage + " 页";
        $('#tableId_info').html(pageNumInfo);
    }

    // 跳转到指定页
    function toThatPage() {
        //var index = document.getElementById('pageIndexInput').value;
        if (index < 0 || index > totalPage) {
            alert('请输入正确的页码');
        } else {
            pageNumChange(index);
        }
    }

    // 全选/全不选
    function chooseAll() {
        checkAll = !checkAll;
        var boxs = document.getElementsByName("chk");
        for (var i = 0; i < boxs.length; i++) {
            boxs[i].checked = checkAll;
        }
    }

    // 批量删除
    function deleteMore() {
        ids = []
        var boxs = document.getElementsByName("chk");
        for (var i = 0; i < boxs.length; i++) {
            if (boxs[i].checked) {
                ids.push(boxs[i].value)
            }
        }
        if (ids.length == 0) {
            alert('请勾选要删除的记录');
        } else {
            remove(ids);
        }
    }

    // 删除
    function remove(id) {
        var mymessage = confirm("真的要删除吗？");
        if (mymessage == true) {
            var paramArray = [];
            if (id == ids) {
                paramArray = id;
            } else {
                paramArray.push(id);
            }
            httpJson("jiuye/delete", "POST", paramArray, (res) => {
                if(res.code == 0){
                    getDataList();
                    alert('删除成功');
                }
            });
        } else {
            alert("已取消操作");
        }
    }

    // 用户登出
    <%@ include file="../../static/logout.jsp"%>

    //修改
    function edit(id) {
        window.sessionStorage.setItem('updateId', id)
        window.location.href = "add-or-update.jsp"
    }

    //清除会重复渲染的节点
    function clear() {
        var elements = document.getElementsByClassName('useOnce');
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    //添加
    function add() {
        window.sessionStorage.setItem("addjiuye", "addjiuye");
        window.location.href = "add-or-update.jsp"
    }

    //报表
    function graph_diqu() {
        window.location.href = "graph_diqu.jsp"
    }
    //报表
    function graph_xuexiao() {
        window.location.href = "graph_xuexiao.jsp"
    }
    //报表
    function graph_yes_no() {
        window.location.href = "graph_yes_no_biyesheng.jsp"
    }

    // 查看详情
    function detail(id) {
        window.sessionStorage.setItem("updateId", id);
        window.location.href = "info.jsp";
    }

    //填充级联表搜索下拉框
                                                                                 
                     
        function sexTypesSelectSearch() {
            var sexTypesSelectSearch = document.getElementById('sexTypesSelectSearch');
            if(sexTypesSelectSearch != null) {
                sexTypesSelectSearch.add(new Option('-请选择-',''));
                if (sexTypesOptions != null && sexTypesOptions.length > 0){
                    for (var i = 0; i < sexTypesOptions.length; i++) {
                            sexTypesSelectSearch.add(new Option(sexTypesOptions[i].indexName, sexTypesOptions[i].codeIndex));
                    }
                }
            }
        }
                                                                                                     
        function xuexiaoTypesSelectSearch() {
            var xuexiaoTypesSelectSearch = document.getElementById('xuexiaoTypesSelectSearch');
            if(xuexiaoTypesSelectSearch != null) {
                xuexiaoTypesSelectSearch.add(new Option('-请选择-',''));
                if (xuexiaoTypesOptions != null && xuexiaoTypesOptions.length > 0){
                    for (var i = 0; i < xuexiaoTypesOptions.length; i++) {
                            xuexiaoTypesSelectSearch.add(new Option(xuexiaoTypesOptions[i].indexName, xuexiaoTypesOptions[i].codeIndex));
                    }
                }
            }
        }
                                                                                                     
                     
                                                                                
    //填充本表搜索下拉框
                 
        function diquTypesSelectSearch() {
            var diquTypesSelectSearch = document.getElementById('diquTypesSelectSearch');
            if(diquTypesSelectSearch != null) {
                diquTypesSelectSearch.add(new Option('-请选择-',''));
                if (diquTypesOptions != null && diquTypesOptions.length > 0){
                    for (var i = 0; i < diquTypesOptions.length; i++) {
                            diquTypesSelectSearch.add(new Option(diquTypesOptions[i].indexName,diquTypesOptions[i].codeIndex));
                    }
                }
            }
        }
     
             
        function zhiweiTypesSelectSearch() {
            var zhiweiTypesSelectSearch = document.getElementById('zhiweiTypesSelectSearch');
            if(zhiweiTypesSelectSearch != null) {
                zhiweiTypesSelectSearch.add(new Option('-请选择-',''));
                if (zhiweiTypesOptions != null && zhiweiTypesOptions.length > 0){
                    for (var i = 0; i < zhiweiTypesOptions.length; i++) {
                            zhiweiTypesSelectSearch.add(new Option(zhiweiTypesOptions[i].indexName,zhiweiTypesOptions[i].codeIndex));
                    }
                }
            }
        }
        
    //查询级联表搜索条件所有列表
        function sexTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=sex_types", "GET", {}, (res) => {
                if(res.code == 0){
                    sexTypesOptions = res.data.list;
                }
            });
        }
        function xuexiaoTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=xuexiao_types", "GET", {}, (res) => {
                if(res.code == 0){
                    xuexiaoTypesOptions = res.data.list;
                }
            });
        }

    //查询当前表搜索条件所有列表
        function diquTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=diqu_types", "GET", {}, (res) => {
                if(res.code == 0){
                    diquTypesOptions = res.data.list;
                }
            });
        }
        function zhiweiTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=zhiwei_types", "GET", {}, (res) => {
                if(res.code == 0){
                    zhiweiTypesOptions = res.data.list;
                }
            });
        }


    $(document).ready(function () {
        //激活翻页按钮
        $('#tableId_previous').attr('class', 'paginate_button page-item previous')
        $('#tableId_next').attr('class', 'paginate_button page-item next')
        //隐藏原生搜索框
        $('#tableId_filter').hide()
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        setMenu();
        init();

        //查询级联表的搜索下拉框
        sexTypesSelect();
        xuexiaoTypesSelect();

        //查询当前表的搜索下拉框
        diquTypesSelect();
        zhiweiTypesSelect();
        getDataList();

        //级联表的下拉框赋值
                                                                                                 
                         
    sexTypesSelectSearch();
                                                                                                                         
    xuexiaoTypesSelectSearch();
                                                                                                                         
                         
                                                                                                
        //当前表的下拉框赋值
                                                 
            diquTypesSelectSearch();
             
                                     
            zhiweiTypesSelectSearch();
                        
    <%@ include file="../../static/myInfo.js"%>
    });
</script>
</body>

</html>