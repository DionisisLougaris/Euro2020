using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Stadiums : System.Web.UI.Page
{
    eu.dataaccess.footballpool.ws.Info myWS = new eu.dataaccess.footballpool.ws.Info();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        { 
            string[] StadiumTable = myWS.StadiumNames();
            listStadiums.Items.Add("‐Choose stadium‐");
            for (int i = 0; i < StadiumTable.Length; i++)

                listStadiums.Items.Add(StadiumTable[i]);
        }
    }

    protected void listStadiums_SelectedIndexChanged(object sender, EventArgs e)
    {
        eu.dataaccess.footballpool.ws.tStadiumInfo Stadio =
                             myWS.StadiumInfo(listStadiums.Text);
        lblStadioName.Text = Stadio.sName + ",";
        lblStadioCity.Text = Stadio.sCityName + ",";
        lblStadioSeats.Text = Convert.ToString(Stadio.iSeatsCapacity) +  " seats";
        HyperLink1.NavigateUrl = Stadio.sGoogleMapsURL;
        lnkStWiki.Text = Stadio.sWikipediaURL;
        lnkStWiki.NavigateUrl = Stadio.sWikipediaURL;

        //adding wiki iframe
        iFramePH.Controls.Add(new LiteralControl("<iframe src=\"" +
                       Stadio.sWikipediaURL + "\" width=\"600\"" +
                       "height=\"300\"runat=\"server\"></iframe>"));
    }
}