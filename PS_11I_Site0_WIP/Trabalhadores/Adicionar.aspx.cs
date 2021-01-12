using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PS_11I_Site0_WIP.Trabalhadores
{
    public partial class Adicionar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //dados do formulario
            string nome = tbNome.Text;
            DateTime data =DateTime.Parse( tbData.Text);
            decimal vencimento = Decimal.Parse(tbVencimento.Text);
            string morada = tbMorada.Text;
            string cp = tbCodPostal.Text;
            string contacto = tbContacto.Text;

            //ligação à bd
            string strligacao = ConfigurationManager.ConnectionStrings["servidor"].ToString();
            SqlConnection ligacaoBD=new SqlConnection(strligacao);
            ligacaoBD.Open();

            //insert
            string strSQL = $@"INSERT INTO Trabalhadores(nome,
                            data_nascimento,vencimento,
                            morada,codigo_postal,contacto)
                            VALUES(@nome,@data_nascimento,
                            @vencimento,@morada,@codigo_postal,
                            @contacto)";
            SqlCommand comando = new SqlCommand(strSQL, ligacaoBD);
            List<SqlParameter> parametros = new List<SqlParameter>()
            {
                //nome
                new SqlParameter()
                {
                    ParameterName="@nome",
                    SqlDbType=System.Data.SqlDbType.VarChar,
                    Value=nome
                },
                 //data_nascimento
                new SqlParameter()
                {
                    ParameterName="@data_nascimento",
                    SqlDbType=System.Data.SqlDbType.Date,
                    Value=data
                },
                 //vencimento
                new SqlParameter()
                {
                    ParameterName="@vencimento",
                    SqlDbType=System.Data.SqlDbType.Money,
                    Value=vencimento
                },
                 //morada
                new SqlParameter()
                {
                    ParameterName="@morada",
                    SqlDbType=System.Data.SqlDbType.VarChar,
                    Value=morada
                },
                 //codigo_postal
                new SqlParameter()
                {
                    ParameterName="@codigo_postal",
                    SqlDbType=System.Data.SqlDbType.VarChar,
                    Value=cp
                },
                 //contacto
                new SqlParameter()
                {
                    ParameterName="@contacto",
                    SqlDbType=System.Data.SqlDbType.VarChar,
                    Value=contacto
                },
            };
            //executar
            comando.Parameters.AddRange(parametros.ToArray());
            comando.ExecuteNonQuery();
            comando.Dispose();
            comando = null;
            //limpar form
            tbCodPostal.Text = "";
            tbContacto.Text = "";
            tbData.Text = "";
            tbMorada.Text = "";
            tbNome.Text = "";
            tbVencimento.Text = "";

        }
    }
}