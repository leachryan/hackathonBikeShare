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


namespace bikeShareWebApp
{
    public class Station
    {
        
        //[JsonProperty("stations")]
        public string lon { get; set; }
        public string lat { get; set; }
        public string address { get; set; }
        public string name { get; set; }
        public string station_id { get; set; }

        /*
        public override string ToString()
        {
            return "lon:" + 
        }*/
    }
}