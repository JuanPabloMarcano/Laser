program laser;

uses crt;

var
  i, TotalBoletos, claseboleto, edadComprador: integer;
  nombre, clasebol1, clasebol2, clasebol3: string;
  cedula, edad: integer;
  op: integer;
  clasebol: integer;

begin
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
    clrscr;

    case op of
      1:
      begin
        writeln('Cuantos anios tiene el comprador?');
        readln(edadComprador);

        if (edadComprador > 18) then
        begin
          writeln(' ');
          writeln('Cuantos boletos desea comprar? (Maximo 5)');
          readln(TotalBoletos);

          if (TotalBoletos <= 5) and (TotalBoletos > 0) then
          begin
            i := 1; // Inicializar el contador de boletos
            while i <= TotalBoletos do
            begin
              clrscr;
              writeln('Ingrese sus datos para el boleto ', i, ':');
              writeln(' ');
              writeln('Ingrese su nombre');
              readln(nombre);
              writeln(' ');
              writeln('Ingrese su cedula');
              readln(cedula);
              writeln(' ');
              writeln('Ingrese su edad');
              readln(edad);

              Repeat
                writeln(' ');
                clrscr;
                writeln('Ingrese la clase del boleto');
                writeln('--------------------------');
                writeln('| 1) Primera clase       |');
                writeln('| 2) Segunda Clase       |');
                writeln('| 3) Tercera Clase       |');
                writeln('--------------------------');
                readln(clasebol);
                case clasebol of

                  1:
                  begin
                    clrscr;
                    writeln('Ha seleccionado primera clase');
                    Readln (clasebol1);
                  end;
                  2:
                  begin
                    clrscr;
                    writeln('Ha seleccionado segunda clase');
                    Readln (clasebol2);
                  end;
                  3:
                  begin
                    clrscr;
                    writeln('Ha seleccionado tercera clase.');
                    Readln(clasebol3);
                    if (edad >= 60) then
                    begin
                      writeln('Lo sentimos, los boletos de tercera clase no están disponibles para personas mayores de 60 años.');
                      writeln('Seleccione otra clase, por favor');
                      readln;
                    end;
                  end;
                  else
                  begin
                    Writeln('Usted ha ingresado un caracter no válido. Intente de nuevo');
                    readln;
                    clrscr;
                  end;
                end;
              until (edad < 60) or ((clasebol <> 3) and (clasebol <> 3));

              writeln('Informacion del boleto ', i, ':');
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
        writeln(''); // ver sistema aun no listo
        readln;
      end;
    end;
    until op = 3;
end.

