﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.18408
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication1.ServiceReference1 {
    using System.Data;
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceReference1.WebService1Soap")]
    public interface WebService1Soap {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/HelloWorld", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        string HelloWorld();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/HelloWorld", ReplyAction="*")]
        System.Threading.Tasks.Task<string> HelloWorldAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/conectarServidor", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool conectarServidor();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/conectarServidor", ReplyAction="*")]
        System.Threading.Tasks.Task<bool> conectarServidorAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Registrar", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool Registrar(string Tabla, string Campos, string Valores);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Registrar", ReplyAction="*")]
        System.Threading.Tasks.Task<bool> RegistrarAsync(string Tabla, string Campos, string Valores);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/VerificarUsuario", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int VerificarUsuario(string Usuario, string Contraseña);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/VerificarUsuario", ReplyAction="*")]
        System.Threading.Tasks.Task<int> VerificarUsuarioAsync(string Usuario, string Contraseña);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/VerificarEmpleadoOAdministrador", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        int VerificarEmpleadoOAdministrador(int codempleado, string Contraseña, string rol);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/VerificarEmpleadoOAdministrador", ReplyAction="*")]
        System.Threading.Tasks.Task<int> VerificarEmpleadoOAdministradorAsync(int codempleado, string Contraseña, string rol);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Pagosiono", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool Pagosiono(int nocasilla, string pago);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/Pagosiono", ReplyAction="*")]
        System.Threading.Tasks.Task<bool> PagosionoAsync(int nocasilla, string pago);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/buscarcliente", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        System.Data.DataSet buscarcliente(string IDMask);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/buscarcliente", ReplyAction="*")]
        System.Threading.Tasks.Task<System.Data.DataSet> buscarclienteAsync(string IDMask);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/CargarCSVImpuesto", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        bool CargarCSVImpuesto(string path);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/CargarCSVImpuesto", ReplyAction="*")]
        System.Threading.Tasks.Task<bool> CargarCSVImpuestoAsync(string path);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface WebService1SoapChannel : WebApplication1.ServiceReference1.WebService1Soap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class WebService1SoapClient : System.ServiceModel.ClientBase<WebApplication1.ServiceReference1.WebService1Soap>, WebApplication1.ServiceReference1.WebService1Soap {
        
        public WebService1SoapClient() {
        }
        
        public WebService1SoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public WebService1SoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public WebService1SoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public WebService1SoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public string HelloWorld() {
            return base.Channel.HelloWorld();
        }
        
        public System.Threading.Tasks.Task<string> HelloWorldAsync() {
            return base.Channel.HelloWorldAsync();
        }
        
        public bool conectarServidor() {
            return base.Channel.conectarServidor();
        }
        
        public System.Threading.Tasks.Task<bool> conectarServidorAsync() {
            return base.Channel.conectarServidorAsync();
        }
        
        public bool Registrar(string Tabla, string Campos, string Valores) {
            return base.Channel.Registrar(Tabla, Campos, Valores);
        }
        
        public System.Threading.Tasks.Task<bool> RegistrarAsync(string Tabla, string Campos, string Valores) {
            return base.Channel.RegistrarAsync(Tabla, Campos, Valores);
        }
        
        public int VerificarUsuario(string Usuario, string Contraseña) {
            return base.Channel.VerificarUsuario(Usuario, Contraseña);
        }
        
        public System.Threading.Tasks.Task<int> VerificarUsuarioAsync(string Usuario, string Contraseña) {
            return base.Channel.VerificarUsuarioAsync(Usuario, Contraseña);
        }
        
        public int VerificarEmpleadoOAdministrador(int codempleado, string Contraseña, string rol) {
            return base.Channel.VerificarEmpleadoOAdministrador(codempleado, Contraseña, rol);
        }
        
        public System.Threading.Tasks.Task<int> VerificarEmpleadoOAdministradorAsync(int codempleado, string Contraseña, string rol) {
            return base.Channel.VerificarEmpleadoOAdministradorAsync(codempleado, Contraseña, rol);
        }
        
        public bool Pagosiono(int nocasilla, string pago) {
            return base.Channel.Pagosiono(nocasilla, pago);
        }
        
        public System.Threading.Tasks.Task<bool> PagosionoAsync(int nocasilla, string pago) {
            return base.Channel.PagosionoAsync(nocasilla, pago);
        }
        
        public System.Data.DataSet buscarcliente(string IDMask) {
            return base.Channel.buscarcliente(IDMask);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> buscarclienteAsync(string IDMask) {
            return base.Channel.buscarclienteAsync(IDMask);
        }
        
        public bool CargarCSVImpuesto(string path) {
            return base.Channel.CargarCSVImpuesto(path);
        }
        
        public System.Threading.Tasks.Task<bool> CargarCSVImpuestoAsync(string path) {
            return base.Channel.CargarCSVImpuestoAsync(path);
        }
    }
}
