<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul id="myUL">
            </ul>
        </div>
    </form>

    <script src="Scripts/jquery-3.4.1.min.js"></script>

    <script>

        $(function () {

            $.ajax({
                type: 'POST',
                url: '/WebService.asmx/HelloWorld',
                contentType: "application/json;charset=utf-8",
                success: function (data) {
                    //data.d
                    alert(data.d);
                }
            });
        });

    </script>
</body>
</html>
