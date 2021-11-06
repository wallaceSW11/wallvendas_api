unit wallvendas_api.Models.Compra;

interface

uses
  wallvendas_api.models.ModeloBase;

type
  TCompra = class(TModeloBase)
  private
    FValorFrete: Currency;
    FUnidadeCompra: string;
    FValorAcrescimo: Currency;
    FValorDesconto: Currency;
    FDataCompra: TDateTime;
    FIdProduto: string;
    FQuantidade: Double;
    FPrecoCompra: Currency;

  public
    property DataCompra: TDateTime read FDataCompra write FDataCompra;
    property IdProduto: string read FIdProduto write FIdProduto;
    property UnidadeCompra: string read FUnidadeCompra write FUnidadeCompra;
    property PrecoCompra: Currency read FPrecoCompra write FPrecoCompra;
    property Quantidade: Double read FQuantidade write FQuantidade;
    property ValorFrete: Currency read FValorFrete write FValorFrete;
    property ValorDesconto: Currency read FValorDesconto write FValorDesconto;
    property ValorAcrescimo: Currency read FValorAcrescimo write FValorAcrescimo;

    constructor Create( );

    function ValorCustoReposicao(): Currency;
    function ValorCustoReposicaoUnitario(): Currency;

  end;

implementation

{ TCompra }

constructor TCompra.Create();
begin
  inherited Create();
end;

function TCompra.ValorCustoReposicao(): Currency;
begin
  if ((FQuantidade = 0) or (FPrecoCompra = 0)) then
    Exit(0);

  Result := (FPrecoCompra + FValorFrete + FValorAcrescimo) - FValorDesconto;
end;

function TCompra.ValorCustoReposicaoUnitario(): Currency;
begin
  if (ValorCustoReposicao() = 0) then
    Exit(0);

  Result := ValorCustoReposicao() / FQuantidade;
end;

end.
