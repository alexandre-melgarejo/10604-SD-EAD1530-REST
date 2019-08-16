unit UPedidoRetornoDTOImpl;

interface

uses
  Soap.InvokeRegistry, UPizzaTamanhoEnum, UPizzaSaborEnum,
  MVCFramework.Serializer.Commons;

type

  [MVCNameCase(ncLowerCase)]
  TPedidoRetornoDTO = class(TRemotable)
  private
    FPizzaTamanho: TPizzaTamanhoEnum;
    FPizzaSabor: TPizzaSaborEnum;
    FValorTotalPedido: Currency;
    FTempoPreparo: Integer;
  published
    property pizzatamanho: TPizzaTamanhoEnum read FPizzaTamanho write FPizzaTamanho;
    property pizzasabor: TPizzaSaborEnum read FPizzaSabor write FPizzaSabor;
    property valortotalpedido: Currency read FValorTotalPedido write FValorTotalPedido;
    property tempopreparo: Integer read FTempoPreparo write FTempoPreparo;
  public
    constructor Create(const APizzaTamanho: TPizzaTamanhoEnum;
      const APizzaSabor: TPizzaSaborEnum; const AValorTotalPedido: Currency;
      const ATempoPreparo: Integer); reintroduce;
  end;

implementation

{ TPedidoRetornoDTO }

constructor TPedidoRetornoDTO.Create(const APizzaTamanho: TPizzaTamanhoEnum;
  const APizzaSabor: TPizzaSaborEnum; const AValorTotalPedido: Currency;
  const ATempoPreparo: Integer);
begin
  FPizzaTamanho := APizzaTamanho;
  FPizzaSabor := APizzaSabor;
  FValorTotalPedido := AValorTotalPedido;
  FTempoPreparo := ATempoPreparo;
end;

end.
