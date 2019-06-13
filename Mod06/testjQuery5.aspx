<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="w3-container">
                <h2>Avatar List</h2>
                <p>You can combine w3-ul and the w3-bar classes to create an avatar list:</p>
                <ul class="w3-ul w3-card-4" id="myUL">

                    
                </ul>
            </div>
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

                    $(data.d).each(function (index, item) {

                        $("#myUL").append(`
                            <li class="w3-bar">
                                <span onclick="this.parentElement.style.display='none'" class="w3-bar-item w3-button w3-white w3-xlarge w3-right">×</span>
                                <img src="img_avatar5.png" class="w3-bar-item w3-circle w3-hide-small" style="width: 85px"/>
                                <div class="w3-bar-item">
                                    <span class="w3-large">${item.Name}</span><br/>
                                    <span>Web Designer ${item.ID}</span>
                                </div>
                            </li>`);

                    });
                }
            });
        });

    </script>
</body>
</html>
