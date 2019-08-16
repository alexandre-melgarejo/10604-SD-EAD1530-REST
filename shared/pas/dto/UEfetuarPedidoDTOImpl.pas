unit UEfetuarPedidoDTOImpl;

interface

uses
  Soap.InvokeRegistry, UPizzaTamanhoEnum, UPizzaSaborEnum,
  MVCFramework.Serializer.Commons;

type
  [MVCNameCase(ncLowerCase)]
  TEfetuarPedidoDTO = class(TRemotable)
  private
    Fpizzatamanho: Tpizzatamanhoenum;
    Fpizzasabor: Tpizzasaborenum;
    Fdocumentocliente: String;
  published
    property pizzatamanho: TPizzaTamanhoEnum read Fpizzatamanho write Fpizzatamanho;
    property pizzasabor: TPizzaSaborEnum read FPizzaSabor write FPizzaSabor;
    property documentocliente: String read FDocumentoCliente write FDocumentoCliente;
  end;

implementation

end.
