using System.Web.Mvc;

namespace L24CMTest.Areas.L24CM
{
    public class L24CMAreaRegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "L24CM";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            //context.MapRoute(
            //    "L24CM_default",
            //    "L24CM/{controller}/{action}/{id}",
            //    new { action = "Index", id = UrlParameter.Optional }
            //);
        }
    }
}
