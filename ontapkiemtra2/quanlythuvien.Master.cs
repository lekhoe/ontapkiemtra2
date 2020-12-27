using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ontapkiemtra2
{
    public partial class quanlythuvien : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            randomimg();
        }

        private void randomimg()
        {
            Random r = new Random();
            int n = r.Next(1, 6);
            img.ImageUrl = "xe/" + n + ".jpg";
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            randomimg();
        }
    }
}