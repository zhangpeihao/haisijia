$(document).ready(function () {
	App.setPage("elements");
	App.init();
});

/**
* 绑定页面上页、下页、第一页、最后一页、搜索、去任意页事件处理函数
* 【闫涛 2015.12.06】初始版本
*/
function bindPageNavBtns() {
    $("#goDestPage").bind("click", goDestPage);
    $("#firstPage").bind("click", goFirstPage);
    $("#prevPage").bind("click", goPrevPage);
    $("#nextPage").bind("click", goNextPage);
    $("#lastPage").bind("click", goLastPage);
}
/**
* 生成页面导航部分内容
* 【闫涛 2015.10.04】初始版本
*/
function prepagePageNavigation() {
    g_pageCount = Math.ceil(g_total / g_recsPerPage);
    $("#totalRecs").text("" + g_total);
    $("#pageCount").text("" + g_pageCount);
    $("#pageSeq").text("" + g_pageSeq);
    $("#currPage").text("" + g_pageSeq);
    $("#destPage").val("" + g_pageSeq);
    if (1 == g_pageSeq) {
        $("#prevPage").css("display", "none");
    } else {
        $("#prevPage").css("display", "");
    }
    if (g_pageSeq == g_pageCount) {
        $("#nextPage").css("display", "none");
    } else {
        $("#nextPage").css("display", "");
    }
}

function goDestPage() {
    var pageSeq = $("#destPage").val();
    if (pageSeq < 1) {
        pageSeq = 1;
    }
    if (pageSeq > g_pageCount) {
        pageSeq = g_pageCount;
    }
    goSpecificPage(pageSeq);
}

function goFirstPage() {
    goSpecificPage(1);
}

function goPrevPage() {
    var pageSeq = g_pageSeq - 1;
    if (pageSeq < 1) {
        pageSeq = 1;
    }
    goSpecificPage(pageSeq);
}

function goNextPage() {
    var pageSeq = g_pageSeq + 1;
    if (pageSeq > g_pageCount) {
        pageSeq = g_pageCount;
    }
    goSpecificPage(pageSeq);
}

function goLastPage() {
    goSpecificPage(g_pageCount);
}

/**
* 去往指定页面，在具体页面中的goSpecificPage函数中，形成reqUrl，并指定本页面内的onOk,onError函数
* 【闫涛 2015.12.06】初始版本
*/
function goSpecificPageBase(pageSeq, reqUrl, onOk, onError) {
    $.ajax({
        url: reqUrl,
        type: 'GET',
        /*data: {
            jsonReq: JSON.stringify(g_pqov_json)
        },*/
        dataType: 'json',
        success: onOk,
        error: onError
    });
}   



/**
* 初始化界面中的日期选择控件
* 【闫涛 2016.01.25】初始版本
*/
function setupDatePickers() {
    $(".datepicker").datepicker();
    $(".inlinepicker").datepicker({
        inline: true,
        showOtherMonths: true
    });
    $(".datepicker-fullscreen").pickadate();
    $(".timepicker-fullscreen").pickatime();
}


/**
* 取出日期控件中的值并将其转化为2016-01-26格式
* 【闫涛 2016-01-25】初始版本
*/
function getDatePickerValue(elementId) {
	var raw = $("#" + elementId).val();
	var year = raw.substr(6);
	var month = raw.substr(0, 2);
	var date = raw.substr(3, 2);
	return year + "-" + month + "-" + date;
}