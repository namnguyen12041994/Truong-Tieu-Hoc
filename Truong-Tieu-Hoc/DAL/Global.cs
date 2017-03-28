using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TruongTieuHoc
{
    public partial class Global
    {
       public static string CatChuoi(string str, int len)
        {
            if (str.Length < len)
            {
                return str;
            }
            return str.Substring(0, len)+"...";
        }
    }
}