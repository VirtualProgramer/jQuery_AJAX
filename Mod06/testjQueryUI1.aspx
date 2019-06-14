<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/themes/sunny/jquery-ui.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>Date:
                <input type="text" id="datepicker" /></p>
        </div>
    </form>

    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/jquery-ui-1.12.1.min.js"></script>
    <script>
        $(function () {
            $("#datepicker").datepicker();
        });
    </script>
</body>
</html>
