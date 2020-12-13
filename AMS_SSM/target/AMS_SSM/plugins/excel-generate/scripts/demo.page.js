$(document).ready(function () {
    excel = new ExcelGen({
        "src_id": "dataList",
        "show_header": true
    });
    $("#generate-excel").click(function () {
        excel.generate();
    });
});