using CaptchaFacil;
using System;
using System.Web.UI;

namespace CaptchaFacilExemplo2WebForms
{
    public partial class _Default : Page
    {
        CaptchaImage captcha = new CaptchaImage();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarregarCaptcha();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string usuario = txtLogin.Text;
            string senha = txtSenha.Text;
            string entradaCaptcha = txtCaptcha.Text;

            string valorCaptcha = Session["Captcha"] as string;

            if (usuario == "" && senha == "" && entradaCaptcha == valorCaptcha)
            {
            }
            else
            {
                CarregarCaptcha();
            }
        }

        private void CarregarCaptcha()
        {
            try
            {
                CaptchaResult captchaResult = captcha.GenerateImage();
                byte[] captchaImageBytes = captchaResult.ImageBytes;
                string base64String = Convert.ToBase64String(captchaImageBytes, 0, captchaImageBytes.Length);
                imgCaptcha.ImageUrl = "data:image/png;base64," + base64String;

                Session["Captcha"] = captchaResult.CaptchaText;
            }
            catch (Exception ex)
            {
            }
        }
    }
}
