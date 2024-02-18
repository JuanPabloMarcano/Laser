program laser;

uses crt;

var
  i, TotalBoletos: integer;
  nombre, tipoboleto: string;
  cedula, edadComprador: integer;
  edad: byte;
  op: integer;

BEGIN
  writeln('[]= = = = = = = = = = = = = = = = = =[]');
  writeln('|                                     |');
  writeln('|                                     |');
  writeln('|                                     |');
  writeln('|               LASER                 |');
  writeln('|              AIRLINES               |');
  writeln('|                                     |');
  writeln('|                                     |');
  writeln('|                                     |');
  writeln('[]= = = = = = = = = = = = = = = = = =[]');
  readln;
  clrscr;

  Repeat
    writeln('--------------------------');
    writeln('| 1) comprar boleto      |');
    writeln('|                        |');
    writeln('| 2) ver sistema         |');
    writeln('|                        |');
    writeln('| 3) Salir               |');
    writeln('|                        |');
    writeln('--------------------------');
    readln(op);

    case op of
      1:
      begin
        writeln('Cuantos años tiene el comprador?');
        readln(edadComprador);

        if (edadComprador > 18) then
        begin
          writeln('Cuantos boletos desea comprar? (Maximo 5)');
          readln(TotalBoletos);

          if (TotalBoletos <= 5) and (TotalBoletos > 0) then
          begin
            i := 1; // Inicializar el contador de boletos
            while i <= TotalBoletos do
            begin
              writeln('Ingrese sus datos para el boleto ', i, ':');
              writeln('Ingrese su nombre');
              readln(nombre);
              writeln('Ingrese su cédula');
              readln(cedula);
              writeln('Ingrese su edad');
              readln(edad);



              writeln('Información del boleto ', i, ':');
              writeln('Nombre: ', nombre);
              writeln('Cédula: ', cedula);
              writeln('Edad: ', edad);

              i := i + 1;

              if i <= TotalBoletos then
              begin
                writeln('Presiona Enter para ingresar el próximo boleto...');
                readln;
              end;
            end;
          end
          else
          begin
            writeln('Ingrese un número válido de boletos (entre 1 y 5)');
          end;
        end
        else
        begin
          writeln('Es muy joven para comprar boletos');
        end;
      end;
      2:
      begin
        // writeln(''); // ver sistema aun no listo
        readln;
      end;
    end;
  until op = 3;
end.
