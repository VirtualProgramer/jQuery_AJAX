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
                url: '/WebService.asmx/GetMembers',
                contentType: "application/json;charset=utf-8",
                success: function (data) {
                    //console.log(data.d);
                    //alert(data.d[0].Name);

                    $(data.d).each(function (index, item) {

                        $("#myUL").append(`<li>${item.ID}-${item.Name}</li>`+
                            `<div style="background-color:pink;height:50px"></div>`
                        );

                    });
                }
            });
        });

    </script>
</body>
</html>
