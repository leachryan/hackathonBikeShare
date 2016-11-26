using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net.Http;
using System.Runtime.Serialization.Json;
using System.IO;
using System.Text;
using System.Windows.Input;
using System.Net;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Web.Script.Serialization;

namespace bikeShareWebApp
{
    public partial class index : System.Web.UI.Page
    {
        private HttpClient client = new HttpClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            //global boolean flag for hibernation
            bool hibernationFlag;

            #region station information
            //initialize stations
            var listOfStations = new List<Station>();

            //load data on load
            var stationData = WebRequest.Create("https://gbfs.bcycle.com/bcycle_greatrides/station_information.json");
            string stationInformationJSON;
            var stationDataResponse = (HttpWebResponse)stationData.GetResponse();
            
            using (var sr = new StreamReader(stationDataResponse.GetResponseStream()))
            {
                //this is the big ass string
                stationInformationJSON = sr.ReadToEnd();
                //testBox.Text = stationInformationJSON;
            }

            testBox.Text = stationInformationJSON;

            JObject stationJsonObject = JObject.Parse(stationInformationJSON);

            IList<JToken> resultString = stationJsonObject["data"]["stations"].Children().ToList();
            string resultCount = Convert.ToString(resultString.Count()); //good to here

            List<JToken> jsonList = new List<JToken>();

            string textholder = "";
            IList<Station> stationResults = new List<Station>();
            foreach(JToken variable in resultString)
            {
                textholder += Convert.ToString(variable);
                //testBox.Text = textholder;
                Station stationResult = JsonConvert.DeserializeObject<Station>(variable.ToString());
                stationResults.Add(stationResult);
            }
            
            //flag test here
            if(stationResults.Count == 0)
            {
                stationNameLabel1.Text = "flag tripped";
                mainTable.Visible = false;
                mainDiv.InnerHtml =
                    "<h2>The bikes are hibernating for the winter. Check back in the spring!</h2>";
            }
            else
            {
                #region station names and labels
                //create list of station names
                List<string> nameList = new List<string>();
                foreach (Station stationObj in stationResults)
                {
                    nameList.Add(stationObj.name);
                }
                stationNameLabel1.Text = nameList[0];
                stationNameLabel2.Text = nameList[1];
                stationNameLabel3.Text = nameList[2];
                stationNameLabel4.Text = nameList[3];
                stationNameLabel5.Text = nameList[4];
                stationNameLabel6.Text = nameList[5];
                stationNameLabel7.Text = nameList[6];
                stationNameLabel8.Text = nameList[7];
                stationNameLabel9.Text = nameList[8];
                stationNameLabel10.Text = nameList[9];
                stationNameLabel11.Text = nameList[10];

                #endregion
                #region station addresses and labels
                //create list of station names
                List<string> addrList = new List<string>();
                foreach (Station stationObj in stationResults)
                {
                    addrList.Add(stationObj.address);
                }
                addrLabel1.Text = addrList[0];
                addrLabel2.Text = addrList[1];
                addrLabel3.Text = addrList[2];
                addrLabel4.Text = addrList[3];
                addrLabel5.Text = addrList[4];
                addrLabel6.Text = addrList[5];
                addrLabel7.Text = addrList[6];
                addrLabel8.Text = addrList[7];
                addrLabel9.Text = addrList[8];
                addrLabel10.Text = addrList[9];
                addrLabel11.Text = addrList[10];

                #endregion

            };

            #endregion
            #region bike information
            //load data on load
            var bikeData = WebRequest.Create("https://gbfs.bcycle.com/bcycle_greatrides/station_status.json");
            string bikeInformationJSON;
            var bikeDataResponse = (HttpWebResponse)bikeData.GetResponse();
            
            using (var bk = new StreamReader(bikeDataResponse.GetResponseStream()))
            {
                //this is the big ass string
                bikeInformationJSON = bk.ReadToEnd();
                //testBox.Text = stationInformationJSON;
            }

            //testBox.Text = stationInformationJSON;

            JObject bikeJsonObject = JObject.Parse(bikeInformationJSON);

            IList<JToken> bikeResultString = bikeJsonObject["data"]["stations"].Children().ToList();
            string bikeResultCount = Convert.ToString(resultString.Count()); //good to here

            List<JToken> bikeJsonList = new List<JToken>();

            string bikeTextholder = "";
            IList<Bike> bikeResults = new List<Bike>();
            foreach (JToken variable in bikeResultString)
            {
                bikeTextholder += Convert.ToString(variable);
                //testBox.Text = textholder;
                Bike bikeResult = JsonConvert.DeserializeObject<Bike>(variable.ToString());
                bikeResults.Add(bikeResult);
            }
            
            if(bikeResults.Count == 0)
            {
                //trip flag
                avail1.Text = "flag tripped";
            }
            else
            {
                #region bike avail and labels
                //create list of bike names
                List<string> availList = new List<string>();
                foreach (Bike bikeObj in bikeResults)
                {
                    availList.Add(bikeObj.num_bikes_available);
                }
                avail1.Text = availList[0];
                avail2.Text = availList[1];
                avail3.Text = availList[2];
                avail4.Text = availList[3];
                avail5.Text = availList[4];
                avail6.Text = availList[5];
                avail7.Text = availList[6];
                avail8.Text = availList[7];
                avail9.Text = availList[8];
                avail10.Text = availList[9];
                avail11.Text = availList[10];

                #endregion
                #region bike dock and labels
                //create list of bike names
                List<string> dockList = new List<string>();
                foreach (Bike bikeObj in bikeResults)
                {
                    dockList.Add(bikeObj.num_docks_available);
                }
                docks1.Text = dockList[0];
                docks2.Text = dockList[1];
                docks3.Text = dockList[2];
                docks4.Text = dockList[3];
                docks5.Text = dockList[4];
                docks6.Text = dockList[5];
                docks7.Text = dockList[6];
                docks8.Text = dockList[7];
                docks9.Text = dockList[8];
                docks10.Text = dockList[9];
                docks11.Text = dockList[10];

                #endregion
            }

            #endregion

        }
        /*
        protected async void testButton_Click(object sender, EventArgs e)
        {
            var testRequest = WebRequest.Create("https://gbfs.bcycle.com/bcycle_greatrides/station_status.json");
            string testText;
            var response = (HttpWebResponse)testRequest.GetResponse();

            using (var sr = new StreamReader(response.GetResponseStream()))
            {
                testText = sr.ReadToEnd();
            }
            //testBox.Text = sr.ReadToEnd();
            testBox.Text = testText;
        }
        */
        /*
        protected void bikeDataButton_Click(object sender, EventArgs e)
        {
            //refresh data
            string x = "1";
        }*/
    }
}
