﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.18408
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Practica1.ordenar {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(Namespace="http://localhost:1240/Service.asmx", ConfigurationName="ordenar.ServiceSoap")]
    public interface ServiceSoap {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://localhost:1240/Service.asmx/conectarServidor", ReplyAction="*")]
        bool conectarServidor();
        
        // CODEGEN: Se está generando un contrato de mensaje, ya que el nombre de elemento Tabla del espacio de nombres http://localhost:1240/Service.asmx no está marcado para aceptar valores nil.
        [System.ServiceModel.OperationContractAttribute(Action="http://localhost:1240/Service.asmx/Registrar", ReplyAction="*")]
        Practica1.ordenar.RegistrarResponse Registrar(Practica1.ordenar.RegistrarRequest request);
        
        // CODEGEN: Se está generando un contrato de mensaje, ya que el nombre de elemento IDMask del espacio de nombres http://localhost:1240/Service.asmx no está marcado para aceptar valores nil.
        [System.ServiceModel.OperationContractAttribute(Action="http://localhost:1240/Service.asmx/BuscarLibro", ReplyAction="*")]
        Practica1.ordenar.BuscarLibroResponse BuscarLibro(Practica1.ordenar.BuscarLibroRequest request);
        
        // CODEGEN: Se está generando un contrato de mensaje, ya que el nombre de elemento IDMask del espacio de nombres http://localhost:1240/Service.asmx no está marcado para aceptar valores nil.
        [System.ServiceModel.OperationContractAttribute(Action="http://localhost:1240/Service.asmx/BuscarLibroautor", ReplyAction="*")]
        Practica1.ordenar.BuscarLibroautorResponse BuscarLibroautor(Practica1.ordenar.BuscarLibroautorRequest request);
        
        // CODEGEN: Se está generando un contrato de mensaje, ya que el nombre de elemento FechahoyResult del espacio de nombres http://localhost:1240/Service.asmx no está marcado para aceptar valores nil.
        [System.ServiceModel.OperationContractAttribute(Action="http://localhost:1240/Service.asmx/Fechahoy", ReplyAction="*")]
        Practica1.ordenar.FechahoyResponse Fechahoy(Practica1.ordenar.FechahoyRequest request);
        
        // CODEGEN: Se está generando un contrato de mensaje, ya que el nombre de elemento ordenarResult del espacio de nombres http://localhost:1240/Service.asmx no está marcado para aceptar valores nil.
        [System.ServiceModel.OperationContractAttribute(Action="http://localhost:1240/Service.asmx/ordenar", ReplyAction="*")]
        Practica1.ordenar.ordenarResponse ordenar(Practica1.ordenar.ordenarRequest request);
        
        // CODEGEN: Se está generando un contrato de mensaje, ya que el nombre de elemento NombreLibro del espacio de nombres http://localhost:1240/Service.asmx no está marcado para aceptar valores nil.
        [System.ServiceModel.OperationContractAttribute(Action="http://localhost:1240/Service.asmx/Update", ReplyAction="*")]
        Practica1.ordenar.UpdateResponse Update(Practica1.ordenar.UpdateRequest request);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class RegistrarRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="Registrar", Namespace="http://localhost:1240/Service.asmx", Order=0)]
        public Practica1.ordenar.RegistrarRequestBody Body;
        
        public RegistrarRequest() {
        }
        
        public RegistrarRequest(Practica1.ordenar.RegistrarRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://localhost:1240/Service.asmx")]
    public partial class RegistrarRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string Tabla;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=1)]
        public string Campos;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=2)]
        public string Valores;
        
        public RegistrarRequestBody() {
        }
        
        public RegistrarRequestBody(string Tabla, string Campos, string Valores) {
            this.Tabla = Tabla;
            this.Campos = Campos;
            this.Valores = Valores;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class RegistrarResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="RegistrarResponse", Namespace="http://localhost:1240/Service.asmx", Order=0)]
        public Practica1.ordenar.RegistrarResponseBody Body;
        
        public RegistrarResponse() {
        }
        
        public RegistrarResponse(Practica1.ordenar.RegistrarResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://localhost:1240/Service.asmx")]
    public partial class RegistrarResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=0)]
        public bool RegistrarResult;
        
        public RegistrarResponseBody() {
        }
        
        public RegistrarResponseBody(bool RegistrarResult) {
            this.RegistrarResult = RegistrarResult;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class BuscarLibroRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="BuscarLibro", Namespace="http://localhost:1240/Service.asmx", Order=0)]
        public Practica1.ordenar.BuscarLibroRequestBody Body;
        
        public BuscarLibroRequest() {
        }
        
        public BuscarLibroRequest(Practica1.ordenar.BuscarLibroRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://localhost:1240/Service.asmx")]
    public partial class BuscarLibroRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string IDMask;
        
        public BuscarLibroRequestBody() {
        }
        
        public BuscarLibroRequestBody(string IDMask) {
            this.IDMask = IDMask;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class BuscarLibroResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="BuscarLibroResponse", Namespace="http://localhost:1240/Service.asmx", Order=0)]
        public Practica1.ordenar.BuscarLibroResponseBody Body;
        
        public BuscarLibroResponse() {
        }
        
        public BuscarLibroResponse(Practica1.ordenar.BuscarLibroResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://localhost:1240/Service.asmx")]
    public partial class BuscarLibroResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public System.Data.DataSet BuscarLibroResult;
        
        public BuscarLibroResponseBody() {
        }
        
        public BuscarLibroResponseBody(System.Data.DataSet BuscarLibroResult) {
            this.BuscarLibroResult = BuscarLibroResult;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class BuscarLibroautorRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="BuscarLibroautor", Namespace="http://localhost:1240/Service.asmx", Order=0)]
        public Practica1.ordenar.BuscarLibroautorRequestBody Body;
        
        public BuscarLibroautorRequest() {
        }
        
        public BuscarLibroautorRequest(Practica1.ordenar.BuscarLibroautorRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://localhost:1240/Service.asmx")]
    public partial class BuscarLibroautorRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string IDMask;
        
        public BuscarLibroautorRequestBody() {
        }
        
        public BuscarLibroautorRequestBody(string IDMask) {
            this.IDMask = IDMask;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class BuscarLibroautorResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="BuscarLibroautorResponse", Namespace="http://localhost:1240/Service.asmx", Order=0)]
        public Practica1.ordenar.BuscarLibroautorResponseBody Body;
        
        public BuscarLibroautorResponse() {
        }
        
        public BuscarLibroautorResponse(Practica1.ordenar.BuscarLibroautorResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://localhost:1240/Service.asmx")]
    public partial class BuscarLibroautorResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public System.Data.DataSet BuscarLibroautorResult;
        
        public BuscarLibroautorResponseBody() {
        }
        
        public BuscarLibroautorResponseBody(System.Data.DataSet BuscarLibroautorResult) {
            this.BuscarLibroautorResult = BuscarLibroautorResult;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class FechahoyRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="Fechahoy", Namespace="http://localhost:1240/Service.asmx", Order=0)]
        public Practica1.ordenar.FechahoyRequestBody Body;
        
        public FechahoyRequest() {
        }
        
        public FechahoyRequest(Practica1.ordenar.FechahoyRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute()]
    public partial class FechahoyRequestBody {
        
        public FechahoyRequestBody() {
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class FechahoyResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="FechahoyResponse", Namespace="http://localhost:1240/Service.asmx", Order=0)]
        public Practica1.ordenar.FechahoyResponseBody Body;
        
        public FechahoyResponse() {
        }
        
        public FechahoyResponse(Practica1.ordenar.FechahoyResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://localhost:1240/Service.asmx")]
    public partial class FechahoyResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string FechahoyResult;
        
        public FechahoyResponseBody() {
        }
        
        public FechahoyResponseBody(string FechahoyResult) {
            this.FechahoyResult = FechahoyResult;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class ordenarRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="ordenar", Namespace="http://localhost:1240/Service.asmx", Order=0)]
        public Practica1.ordenar.ordenarRequestBody Body;
        
        public ordenarRequest() {
        }
        
        public ordenarRequest(Practica1.ordenar.ordenarRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute()]
    public partial class ordenarRequestBody {
        
        public ordenarRequestBody() {
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class ordenarResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="ordenarResponse", Namespace="http://localhost:1240/Service.asmx", Order=0)]
        public Practica1.ordenar.ordenarResponseBody Body;
        
        public ordenarResponse() {
        }
        
        public ordenarResponse(Practica1.ordenar.ordenarResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://localhost:1240/Service.asmx")]
    public partial class ordenarResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public System.Data.DataSet ordenarResult;
        
        public ordenarResponseBody() {
        }
        
        public ordenarResponseBody(System.Data.DataSet ordenarResult) {
            this.ordenarResult = ordenarResult;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class UpdateRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="Update", Namespace="http://localhost:1240/Service.asmx", Order=0)]
        public Practica1.ordenar.UpdateRequestBody Body;
        
        public UpdateRequest() {
        }
        
        public UpdateRequest(Practica1.ordenar.UpdateRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://localhost:1240/Service.asmx")]
    public partial class UpdateRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=0)]
        public int prestamolibro;
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=1)]
        public string NombreLibro;
        
        public UpdateRequestBody() {
        }
        
        public UpdateRequestBody(int prestamolibro, string NombreLibro) {
            this.prestamolibro = prestamolibro;
            this.NombreLibro = NombreLibro;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class UpdateResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="UpdateResponse", Namespace="http://localhost:1240/Service.asmx", Order=0)]
        public Practica1.ordenar.UpdateResponseBody Body;
        
        public UpdateResponse() {
        }
        
        public UpdateResponse(Practica1.ordenar.UpdateResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://localhost:1240/Service.asmx")]
    public partial class UpdateResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public System.Data.DataSet UpdateResult;
        
        public UpdateResponseBody() {
        }
        
        public UpdateResponseBody(System.Data.DataSet UpdateResult) {
            this.UpdateResult = UpdateResult;
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ServiceSoapChannel : Practica1.ordenar.ServiceSoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ServiceSoapClient : System.ServiceModel.ClientBase<Practica1.ordenar.ServiceSoap>, Practica1.ordenar.ServiceSoap {
        
        public ServiceSoapClient() {
        }
        
        public ServiceSoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public ServiceSoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ServiceSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ServiceSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public bool conectarServidor() {
            return base.Channel.conectarServidor();
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        Practica1.ordenar.RegistrarResponse Practica1.ordenar.ServiceSoap.Registrar(Practica1.ordenar.RegistrarRequest request) {
            return base.Channel.Registrar(request);
        }
        
        public bool Registrar(string Tabla, string Campos, string Valores) {
            Practica1.ordenar.RegistrarRequest inValue = new Practica1.ordenar.RegistrarRequest();
            inValue.Body = new Practica1.ordenar.RegistrarRequestBody();
            inValue.Body.Tabla = Tabla;
            inValue.Body.Campos = Campos;
            inValue.Body.Valores = Valores;
            Practica1.ordenar.RegistrarResponse retVal = ((Practica1.ordenar.ServiceSoap)(this)).Registrar(inValue);
            return retVal.Body.RegistrarResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        Practica1.ordenar.BuscarLibroResponse Practica1.ordenar.ServiceSoap.BuscarLibro(Practica1.ordenar.BuscarLibroRequest request) {
            return base.Channel.BuscarLibro(request);
        }
        
        public System.Data.DataSet BuscarLibro(string IDMask) {
            Practica1.ordenar.BuscarLibroRequest inValue = new Practica1.ordenar.BuscarLibroRequest();
            inValue.Body = new Practica1.ordenar.BuscarLibroRequestBody();
            inValue.Body.IDMask = IDMask;
            Practica1.ordenar.BuscarLibroResponse retVal = ((Practica1.ordenar.ServiceSoap)(this)).BuscarLibro(inValue);
            return retVal.Body.BuscarLibroResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        Practica1.ordenar.BuscarLibroautorResponse Practica1.ordenar.ServiceSoap.BuscarLibroautor(Practica1.ordenar.BuscarLibroautorRequest request) {
            return base.Channel.BuscarLibroautor(request);
        }
        
        public System.Data.DataSet BuscarLibroautor(string IDMask) {
            Practica1.ordenar.BuscarLibroautorRequest inValue = new Practica1.ordenar.BuscarLibroautorRequest();
            inValue.Body = new Practica1.ordenar.BuscarLibroautorRequestBody();
            inValue.Body.IDMask = IDMask;
            Practica1.ordenar.BuscarLibroautorResponse retVal = ((Practica1.ordenar.ServiceSoap)(this)).BuscarLibroautor(inValue);
            return retVal.Body.BuscarLibroautorResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        Practica1.ordenar.FechahoyResponse Practica1.ordenar.ServiceSoap.Fechahoy(Practica1.ordenar.FechahoyRequest request) {
            return base.Channel.Fechahoy(request);
        }
        
        public string Fechahoy() {
            Practica1.ordenar.FechahoyRequest inValue = new Practica1.ordenar.FechahoyRequest();
            inValue.Body = new Practica1.ordenar.FechahoyRequestBody();
            Practica1.ordenar.FechahoyResponse retVal = ((Practica1.ordenar.ServiceSoap)(this)).Fechahoy(inValue);
            return retVal.Body.FechahoyResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        Practica1.ordenar.ordenarResponse Practica1.ordenar.ServiceSoap.ordenar(Practica1.ordenar.ordenarRequest request) {
            return base.Channel.ordenar(request);
        }
        
        public System.Data.DataSet ordenar() {
            Practica1.ordenar.ordenarRequest inValue = new Practica1.ordenar.ordenarRequest();
            inValue.Body = new Practica1.ordenar.ordenarRequestBody();
            Practica1.ordenar.ordenarResponse retVal = ((Practica1.ordenar.ServiceSoap)(this)).ordenar(inValue);
            return retVal.Body.ordenarResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        Practica1.ordenar.UpdateResponse Practica1.ordenar.ServiceSoap.Update(Practica1.ordenar.UpdateRequest request) {
            return base.Channel.Update(request);
        }
        
        public System.Data.DataSet Update(int prestamolibro, string NombreLibro) {
            Practica1.ordenar.UpdateRequest inValue = new Practica1.ordenar.UpdateRequest();
            inValue.Body = new Practica1.ordenar.UpdateRequestBody();
            inValue.Body.prestamolibro = prestamolibro;
            inValue.Body.NombreLibro = NombreLibro;
            Practica1.ordenar.UpdateResponse retVal = ((Practica1.ordenar.ServiceSoap)(this)).Update(inValue);
            return retVal.Body.UpdateResult;
        }
    }
}