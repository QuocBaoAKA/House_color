using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace GUI
{
    public class ketnoi
    {
        public SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=DACN;Integrated Security=True");
    }
}