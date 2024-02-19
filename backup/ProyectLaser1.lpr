program laser;

uses crt,SysUtils;

var
  i, claseboleto, EdadCompradorInt, TotalBoletosInt, edad,cedulaInt,numeroClaseInt: integer;
  nombre,cedula,numeroClase, edadComprador,TotalBoletos, clasebol1, clasebol2, clasebol3, TipoVuelo: string;
   totalNacional, totalInternacional,ValError: integer;
   nacionalidad, vced, eced: char;
   ValEdad,conversionExitosaCar,conversionExitosaLong,StringValido,NumeroValido:boolean;


// Variables de los menus
  op, clasebol: integer;


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

        repeat
        writeln('Cuantos anios tiene el comprador?');
        readln(edadComprador);

        conversionExitosaCar:=TryStrToInt(EdadComprador, EdadCompradorInt);
        conversionExitosaLong:= (edadCompradorInt >=0) and (edadCompradorInt<= 90);
        if  not conversionExitosaCar and conversionExitosaLong then
              begin

           writeln('Por favor, ingrese un numero valido.');


              end;

           until conversionExitosaCar and conversionExitosaLong;



        if (edadCompradorInt > 18) then
        begin

          repeat
          writeln(' ');
          writeln('Cuantos boletos desea comprar? (Maximo 5)');
          readln(TotalBoletos);

          conversionExitosaCar:=TryStrToInt(TotalBoletos,TotalBoletosInt);

          if not conversionExitosaCar then
          begin
            writeln('Ha ingresado un caracter invalido, intente nuevamente.')
          end;

          until conversionExitosaCar;

          if (TotalBoletosInt <= 5) and (TotalBoletosInt > 0) then
          begin
            i := 1; // contador de boletos
            while i <= TotalBoletosInt do
            begin
           //      StringValido := False;

             // repeat
              clrscr;
              writeln('--------------------------');
              writeln('Ingrese sus datos para el boleto ', i, ':');
              writeln('--------------------------');
              writeln(' ');
              writeln('Ingrese su nombre');
              readln(nombre);
              writeln(' ');

             // NumeroValido:= Val(nombre,ValError);
              //StringValido:= (nombre <> '') and not NumeroValido;

          (*    if not NumeroValido then
              begin
                writeln('No ha ingresado un nombre valido. Favor intentar nuevamente');
              end;



              until StringValido; *)
//   NACIONALIDAD
                   clrscr;
                   Repeat
                     writeln('Cual es su nacionalidad?');
                     writeln('--------------------------');
                     writeln('| V- Venezolano          |');
                     writeln('|                        |');
                     writeln('| E- Extranjero          |');
                     writeln('--------------------------');
                     readln(nacionalidad);
                     clrscr;
                     case nacionalidad of
                       'V', 'v': begin
                                   Writeln('Es usted Venezolano.');
                                   repeat

                                   writeln('Por favor, ingrese su cedula de la siguiente manera -> 12345678');
                                   readln(cedula);

                                   conversionExitosaCar:= TryStrToInt(cedula,cedulaInt);

                                   if not conversionExitosaCar then

                                   begin
                                     writeln('Caracteres invalidos, ingrese cedula nuevamente.')
                                   end;
                                   until conversionExitosaCar;
                                 end;
                       'E', 'e': begin
                         repeat
                                   Writeln('Es usted una persona Extranjera.');
                                   writeln('Por favor, ingrese su cedula de extranjero de la siguiente manera -> 12345678');
                                   readln(cedula);
                                   conversionExitosaCar:= TryStrToInt(cedula,cedulaInt);
                                   if not conversionExitosaCar then

                                   begin
                                     writeln('Caracteres invalidos, ingrese cedula nuevamente.')
                                   end;
                                   until conversionExitosaCar

                                 end;
                       else
                         Writeln('Usted ha ingresado un caracter no valido. Intente de nuevo');
                     end;
                   until (nacionalidad = 'V') or (nacionalidad = 'E') or (nacionalidad = 'v') or (nacionalidad = 'e');

              writeln(' ');
              writeln('Ingrese su edad');
              readln(edad);


//   TIPO DE VUELO
              totalNacional:= 0;
              totalInternacional:=0;

              writeln('');
              writeln('Seleccione el tipo de vuelo:');
              writeln(' N - Nacional');
              writeln(' I - Internacional');
              readln(TipoVuelo);
              case upcase(TipoVuelo) of
                'N':
                begin
                  TipoVuelo := 'Nacional';
                  totalNacional := totalNacional + 1;
                end;

                'I':
                begin
                  TipoVuelo := 'Internacional';
                  totalInternacional := totalInternacional + 1;
                end;

                else
                  TipoVuelo := 'Tipo de vuelo no seleccionado';
              end;

//  CLASE DEL BOLETO

             // Repeat
                repeat
                writeln(' ');
                clrscr;
                writeln('');
                writeln('Ingrese la clase del boleto');
                writeln('--------------------------');
                writeln('| 1) Primera clase (25$)  |');
                writeln('| 2) Segunda Clase (10$)  |');
                writeln('| 3) Tercera Clase        |');
                writeln('--------------------------');
                readln(clasebol);

                (* conversionExitosaCar:= TryStrToInt(numeroClase,numeroClaseInt);
                 if not conversionExitosaCar then
                 begin
                   writeln('Caracter Invalido');
                 end;

                until conversionExitosaCar;  *)
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
                      writeln('Lo sentimos, los boletos de tercera clase no estan disponibles para personas mayores de 60 anios.');
                      writeln('Seleccione otra clase, por favor');
                      readln;
                    end;
                  end;
                  else
                  begin
                    Writeln('Usted ha ingresado un caracter no valido. Intente de nuevo');
                    readln;
                    clrscr;
                  end;
                end;
              until (edad < 60) or ((clasebol <> 3) and (clasebol <> 3));


//  RES. DATOS BOLETOS
              writeln('------------------------------------');
              writeln('Boleto ', i, ' registrado con exito:');
              writeln('------------------------------------');
              writeln('Informacion del boleto ', i, ':');
              writeln('Nombre: ', nombre);
              writeln('Cedula: ', cedula);
              writeln('Edad: ', edad);
              writeln('Tipo de Vuelo: ', TipoVuelo);

              i := i + 1;

              if i <= TotalBoletosInt then
              begin
                writeln('');
                writeln('Presiona Enter para ingresar el proximo boleto...');
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
