unit wallvendas_api.Controllers.Interfaces;

interface

uses
  Horse;

type
  IControllerBase = interface
    ['{E312FFB7-E0C3-4865-9345-FFCF9A722707}']
    procedure Routes();
    procedure GetAll(Req: THorseRequest; Res: THorseResponse; Next: TProc);
    procedure GetById(Req: THorseRequest; Res: THorseResponse; Next: TProc);
    procedure Post(Req: THorseRequest; Res: THorseResponse; Next: TProc);
    procedure Put(Req: THorseRequest; Res: THorseResponse; Next: TProc);
    procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc);
  end;

implementation

end.
