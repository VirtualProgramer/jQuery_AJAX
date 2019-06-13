using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Member
{
    public Member(int iD, string name)
    {
        ID = iD;
        Name = name;
    }

    public int ID { get; set; }
    public string Name { get; set; }


}