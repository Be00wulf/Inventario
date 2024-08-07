using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PuntoDeVenta.PuntoDeVenta
{
    public partial class Registros : System.Web.UI.Page
    {
        DataTable tablaProducto = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

            tablaProducto.Columns.Add("CODIGO");
            tablaProducto.Columns.Add("PRODUCTO");
            tablaProducto.Columns.Add("PRECIOcompra");
            tablaProducto.Columns.Add("PRECIOventa");
            tablaProducto.Columns.Add("EXISTENCIA");

            //leyendo datos
            StreamReader leer = new StreamReader(Server.MapPath("~/txt/Productos1.txt"));

            //definiendo columnas de separacion de TIPOS DE datos ingresados
            while (!leer.EndOfStream)
            {
                string linea = leer.ReadLine();
                string[] aux = linea.Split(',');
                tablaProducto.Rows.Add(aux);
            }
            leer.Close();
            GridView1.DataSource = tablaProducto;
            GridView1.DataBind();
        }

        
    }
}