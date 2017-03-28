using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TruongTieuHoc.Models
{
    public class FormatDate
    {
        public static string DDMMYYYY(DateTime value)
        {
            return value.Day + "/" + value.Month + "/" + value.Year;
        }
    }
}