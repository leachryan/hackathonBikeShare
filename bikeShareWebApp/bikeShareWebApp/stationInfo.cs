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
    public class stationInfo
    {
        public List<Station> Station { get; set; }
    }
}