<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        string dateStr = "2019/12/12T10:00:00+8:00";

        DateTime dUtc = DateTime.SpecifyKind(DateTime.Parse(dateStr), DateTimeKind.Utc);

        //1
        //DateTime twd =
        //    TimeZoneInfo.ConvertTimeFromUtc(dUtc, TimeZoneInfo.Local);

        //2
        //https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-vista/cc749073(v=ws.10)
        DateTime twd =
            TimeZoneInfo.ConvertTimeFromUtc(dUtc, TimeZoneInfo.FindSystemTimeZoneById("Taipei Standard Time"));

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
