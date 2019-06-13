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

            var ary = ["aa", "bb", "cc"];

            $(ary).each(function (index,item) {
                console.log($(this));
                //console.log(item);
                //$("#myUL").append("<li>" + item + "</li>");
            });

        });

    </script>
</body>
</html>
