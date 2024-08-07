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

    public partial class WebForm1 : System.Web.UI.Page
    {
        DataTable tablaProducto = new DataTable();

        private string txtCodigo;
        private string txtProducto;
        private string txtPcompra;
        private string txtPventa;
        private string txtExist;
        private bool btnEditF, btnEditT;
        private bool btnElimF, btnElimT;

        protected void Page_Load(object sender, EventArgs e)
        {
            //txtAstr();
            tablaProducto.Columns.Add("CODIGO");
            tablaProducto.Columns.Add("PRODUCTO");
            tablaProducto.Columns.Add("PRECIOcompra");
            tablaProducto.Columns.Add("PRECIOventa");
            tablaProducto.Columns.Add("EXISTENCIA");

            if (!IsPostBack)
            {
                btnOff();
            }
            else
            {
                txtAstr();
            }

            StreamReader leer = new StreamReader(Server.MapPath("~/txt/Productos1.txt"));

            //definiendo columnas de separacion de TIPOS DE datos ingresados
            while (!leer.EndOfStream)
            {
                string linea = leer.ReadLine();
                string[] aux = linea.Split(',');
                tablaProducto.Rows.Add(aux);
            }
            leer.Close();
            //GridView1.DataSource = tablaProducto;
            //GridView1.DataBind();

        }

        public void limpiar()
        {
            //txtAstr();
            TextBoxCodigo.Text = "";
            TextBoxProducto.Text = "";
            TextBoxPcompra.Text = "";
            TextBoxPventa.Text = "";
            TextBoxExistencia.Text = "";
            btnOff();
        }

        public void btnOff()
        {
            //btnElimT = btnELIMINAR.Enabled = true;
            btnElimF = btnELIMINAR.Enabled = false;
            //btnEditT = btnEDITAR.Enabled = true;
            btnEditF = btnEDITAR.Enabled = false;
        }
        public void txtAstr()
        {
            txtCodigo = TextBoxCodigo.Text;
            txtProducto = TextBoxProducto.Text;
            txtPcompra = TextBoxPcompra.Text;
            txtPventa = TextBoxPventa.Text;
            txtExist = TextBoxExistencia.Text;
        }

        protected void btnELIMINAR_Click(object sender, EventArgs e)
        {
            string filePath = Server.MapPath("~/txt/Productos1.txt");

            if (File.Exists(filePath))
            {
                // Leer todas las líneas del archivo
                string[] lineas = File.ReadAllLines(filePath);
                List<string> nuevasLineas = new List<string>();
                bool prodEncontrado = false;

                foreach (string linea in lineas)
                {
                    string[] campos = linea.Split(',');

                    if (campos[0] == txtCodigo)
                    {
                        prodEncontrado = true;
                        // No agregar esta línea a las nuevas líneas, es decir, se elimina
                    }
                    else
                    {
                        nuevasLineas.Add(linea);
                    }
                }

                if (prodEncontrado)
                {
                    // Escribir las nuevas líneas (sin la línea eliminada) de nuevo en el archivo
                    File.WriteAllLines(filePath, nuevasLineas.ToArray());
                    Response.Write("<script language=javascript>alert('Dato eliminado exitosamente')</script>");
                    limpiar();
                }
                else
                {
                    Response.Write("<script language=javascript>alert('No se encontró el producto con el código especificado')</script>");
                }
            }
            else
            {
                // Manejo del caso cuando el archivo no existe
                Response.Write("<script language=javascript>alert('El archivo de datos no existe')</script>");
            }


            //foreach (DataRow fila in tablaProducto.Rows)
            //{
            //    if (fila[0].ToString() == txtCodigo)
            //    {
            //        fila[0] = "";
            //        fila[1] = "";
            //        fila[2] = "";
            //        fila[3] = "";
            //        fila[4] = "";
            //        Response.Write("<script language=javascript>alert('Dato eliminado exitosamente')</script>");
            //        //GridView1.DataBind();
            //        limpiar();
            //        break;
            //    }
            //}
            ////actualizando datos en el txt
            ////new StreamWriter(Server.MapPath("archivos/datos1.txt"), true);        //false para no reescribir
            //StreamWriter escribir = new StreamWriter(Server.MapPath("~/txt/Productos1.txt"), false);

            //foreach (DataRow fila in tablaProducto.Rows)
            //{
            //    string linea = fila[0].ToString() + "," + fila[1].ToString() + "," + fila[2].ToString() + "," + fila[3].ToString() + "," + fila[4].ToString();

            //    escribir.WriteLine(linea);
            //}
            //escribir.Close();
        }

        protected void ButtonBuscar_Click(object sender, EventArgs e)
        {
            bool encontrado = false;
            string filePath = Server.MapPath("~/txt/Productos1.txt");
            if (File.Exists(filePath))
            {
                // Leer todas las líneas del archivo
                string[] lineas = File.ReadAllLines(filePath);

                foreach (string linea in lineas)
                {
                    string[] campos = linea.Split(',');

                    if (campos[0] == TextBoxBuscar.Text)
                    {
                        txtCodigo = campos[0];
                        txtProducto = campos[1];
                        txtPcompra = campos[2];
                        txtPventa = campos[3];
                        txtExist = campos[4];

                        encontrado = true;
                        break;
                    }
                }

                // Habilitar editar y eliminar
                if (encontrado)
                {
                    btnEDITAR.Enabled = true;
                    btnELIMINAR.Enabled = true;

                    // muestra los datos correspondientes
                    TextBoxCodigo.Text = txtCodigo;
                    TextBoxProducto.Text = txtProducto;
                    TextBoxPcompra.Text = txtPcompra;
                    TextBoxPventa.Text = txtPventa;
                    TextBoxExistencia.Text = txtExist;
                }
                else
                {
                    Response.Write("<script language=javascript>alert('No existen productos con el CODIGO ingresado')</script>");
                    btnOff();
                }

                TextBoxBuscar.Text = "";
            }
            else
            {
                // Manejo del caso cuando el archivo no existe
                Response.Write("<script language=javascript>alert('El archivo de datos no existe')</script>");
            }
            
        }

        protected void ButtonLimpiar_Click(object sender, EventArgs e)
        {
            limpiar();
        }

        protected void btnEDITAR_Click(object sender, EventArgs e)
        {
            if (
                (txtCodigo == "") ||
                (txtProducto == "") ||
                (txtPcompra == "") ||
                (txtPventa == "") ||
                (txtExist == ""))
            {
                Response.Write("<script language=javascript>alert('Todos los campos deben estar llenos')</script>");
                return; // Salir del método si algún campo está vacío
            }

            string filePath = Server.MapPath("~/txt/Productos1.txt");

            if (File.Exists(filePath))
            {
                // Leer todas las líneas del archivo
                string[] lineas = File.ReadAllLines(filePath);
                bool prodEncontrado = false;

                for (int i = 0; i < lineas.Length; i++)
                {
                    string[] campos = lineas[i].Split(',');

                    if (campos[0] == txtCodigo)
                    {
                        // Actualizar los campos en la línea
                        lineas[i] = txtCodigo + "," + 
                            txtProducto + "," + 
                            txtPcompra + "," + 
                            txtPventa + "," + 
                            txtExist;
                        prodEncontrado = true;
                        break;
                    }
                }

                if (prodEncontrado)
                {
                    // Escribir las líneas actualizadas de nuevo en el archivo
                    File.WriteAllLines(filePath, lineas);
                    Response.Write("<script language=javascript>alert('Información actualizada exitosamente')</script>");
                    limpiar();
                }
                else
                {
                    Response.Write("<script language=javascript>alert('No se encontró el producto con el código especificado')</script>");
                }
            }
            else
            {
                // Manejo del caso cuando el archivo no existe
                Response.Write("<script language=javascript>alert('El archivo de datos no existe')</script>");
            }

            //foreach (DataRow fila in tablaProducto.Rows)
            //{
            //    if (fila[0].ToString() == txtCodigo)
            //    {
            //        fila[0] = txtCodigo;
            //        fila[1] = txtProducto;
            //        fila[2] = txtPcompra;
            //        fila[3] = txtPventa;
            //        fila[4] = txtExist;
            //        prodEncontrado = true;

            //        Response.Write("<script language=javascript>alert('Informacion actualizada exitosamente')</script>");
            //        //GridView1.DataBind();
            //        limpiar();
            //        break;
            //    }

            //}
            ////actualizando datos en el txt              //FALSE PARA no REESCRIBIR     
            ////new StreamWriter(Server.MapPath("archivos/datos1.txt"), true);
            //StreamWriter escribir = new StreamWriter(Server.MapPath("~/txt/Productos1.txt"), false);

            //foreach (DataRow fila in tablaProducto.Rows)
            //{
            //    string linea = fila[0].ToString() + "," + fila[1].ToString() + "," + fila[2].ToString() + "," + fila[3].ToString() + "," + fila[4].ToString();
            //    escribir.WriteLine(linea);
            //}
            //escribir.Close();
        }

        protected void btnGUARDAR_Click(object sender, EventArgs e)
        {
            txtAstr();

            if ((txtCodigo != "") && 
                (txtProducto != "") && 
                (txtPcompra != "") && 
                (txtPventa != "") && 
                (txtExist != "") )
            {
                //rectificando si no hay codigos repetidos
                bool codDuplicado = false;
                foreach (DataRow fila in tablaProducto.Rows)
                {
                    if (fila[0].ToString() == txtCodigo)
                    {
                        codDuplicado = true;
                        break;
                    }
                }

                if (codDuplicado)
                {
                    Response.Write("<script language=javascript>alert('Un producto con este CODIGO ya ha sido registrado. Intente con otro CODIGO.')</script>");
                    limpiar();
                }

                else
                {
                    tablaProducto.Rows.Add(txtCodigo, txtProducto, txtPcompra, txtPventa, txtExist);
                    //agrega los datos al grid
                    //GridView1.DataBind();

                    //agregar datos al archivo txt
                    string linea = txtCodigo + "," + txtProducto + "," + txtPcompra + "," + txtPventa + "," + txtExist;
                    StreamWriter escribir = new StreamWriter(Server.MapPath("~/txt/Productos1.txt"), true);
                    escribir.WriteLine(linea);
                    escribir.Close();
                    Response.Write("<script language=javascript>alert('Se ha ingresado el producto exitosamente')</script>");
                    limpiar();
                }
            }

            else
            {
                Response.Write("<script language=javascript>alert('Algunos campos están vacíos')</script>");
            }
        }





    }
}