using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using L24CM.Models;
using System.Web.Mvc;

namespace L24CMTest.Models
{
    public class HomeContent : BaseContent
    {
        public Link BlogLink { get; set; }
        [UIHint("Html")]
        public string Story { get; set; }
        public Image Image1 { get; set; }

        public HomeContent()
        {
            BlogLink = new Link();
            Image1 = new Image();
        }
    }

    public class HomeModel : ContentModel<HomeContent>
    {

    }
}
