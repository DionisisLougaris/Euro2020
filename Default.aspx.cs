using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    eu.dataaccess.footballpool.ws.Info myWS = new eu.dataaccess.footballpool.ws.Info();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false) //Fill this dropdown list only the first time the WS is called
        {
            string[] TeamTable = myWS.TeamNames();
            teamsList.Items.Add("-Choose Team-");
            for(int i = 0; i < TeamTable.Length; i++)
            {
                teamsList.Items.Add(TeamTable[i]);
            }
        }

     }



    protected void teamsList_SelectedIndexChanged(object sender, EventArgs e)
    {
        eu.dataaccess.footballpool.ws.tPlayer[] Playing = myWS.TeamPlayers(teamsList.Text, true);
        eu.dataaccess.footballpool.ws.tPlayer[] NotPlaying = myWS.TeamPlayers(teamsList.Text, false);

        listPLaying.Items.Clear();
        listNotPlaying.Items.Clear();

        for (int i = 0; i < Playing.Length; i++)
            listPLaying.Items.Add(Playing[i].sName);

        for (int i = 0; i < NotPlaying.Length; i++)
            listNotPlaying.Items.Add(NotPlaying[i].sName);        nPlaying.Text = "(" + Convert.ToString(Playing.Length) + "): ";
        nNotPlaying.Text = "(" + Convert.ToString(NotPlaying.Length) + "): ";
    }
}