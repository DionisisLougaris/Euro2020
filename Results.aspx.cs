using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Results : System.Web.UI.Page
{
    eu.dataaccess.footballpool.ws.Info fbWS = new
                   eu.dataaccess.footballpool.ws.Info();
    protected void Page_Load(object sender, EventArgs e)
    {

        lblScore1.Visible = lblScore2.Visible =
            lblPenalty.Visible = lblPen1.Visible = lblPen2.Visible = false;
        if (IsPostBack == false)
        {
            string[] TeamTable = fbWS.TeamNames();
            lstTeamNames.Items.Add("‐Choose National Team‐");
            lstTeam2Names.Items.Add("‐Choose National Team‐");
            for (int i = 0; i < TeamTable.Length; i++)
            {
                lstTeamNames.Items.Add(TeamTable[i]);
                lstTeam2Names.Items.Add(TeamTable[i]);
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        eu.dataaccess.footballpool.ws.tGameResult[] ApotelTable =
                                 fbWS.ResultsAllGames(0, 0);
        int id = Convert.ToInt16(TextBox1.Text) ;
        if (id >= 0 && id <= 50)
        {
            emfanisi_apotelesmatos(ApotelTable[id]);
            // οι λίστες εμφανίζουν τις αντίστοιχες ομάδες
            lstTeamNames.Text = ApotelTable[id].sTeamName1;
            lstTeam2Names.Text = ApotelTable[id].sTeamName2;
        }
        else
            //αναζήτηση με βάση τις ομάδες στις λίστες 
            for (int i = 0; i < ApotelTable.Length; i++)
                if (ApotelTable[i].sTeamName1 == lstTeamNames.Text &&
                       ApotelTable[i].sTeamName2 == lstTeam2Names.Text)
                {
                    emfanisi_apotelesmatos(ApotelTable[i]);
                    TextBox1.Text = Convert.ToString(ApotelTable[i].iGameNumber);
                }
    }
    protected void emfanisi_apotelesmatos(eu.dataaccess.footballpool.ws.tGameResult Apotel)
    {
        lblScore1.Text = Convert.ToString(Apotel.iScoreTeam1);
        lblScore2.Text = Convert.ToString(Apotel.iScoreTeam2);
        lblScore1.Visible = lblScore2.Visible = true;
        // checking for penalties
        if (Apotel.iPenaltiesWonTeam1 != 0 ||
               Apotel.iPenaltiesWonTeam2 != 0)
        {
            lblPen1.Text = Convert.ToString(Apotel.iPenaltiesWonTeam1);
            lblPen2.Text = Convert.ToString(Apotel.iPenaltiesWonTeam2);
            lblPenalty.Visible = true;
            lblPen1.Visible = true;
            lblPen2.Visible = true;
        }
    }
    protected void lstTeamNames_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = "0";
    }
    protected void lstTeam2Names_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = "0";
    }
}