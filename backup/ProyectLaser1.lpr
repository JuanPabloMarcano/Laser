program ProyectLaser1;

uses crt;
var i,claseboleto, vced, eced: integer;
    nacionalidad: char;
    clasebol1, clasebol2, clasebol3: string;


  op: char;
  clasebol: char;
  nombre,tipoboleto:string;
  edad: byte;

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


//      MENU PRINCIPAL
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
              '1': begin
                           clrscr;
                           Begin
                            Repeat
                             writeln('Ingrese sus datos:');
                             Writeln;
           writeln('Ingrese su nombre');
           readln(nombre);

           writeln('Ingrese su edad');
           readln(edad);
            if (edad < 18)then
              begin
                writeln('Usted no puede comprar boletos, debe ser mayor de edad');
                                  readln;
                                end;
                            until (edad >= 18);
                           end;

    //      NACIONALIDAD
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
                                        Writeln('Es usted Venezolano. Ingrese su cedula de la siguiente manera -> 12345678');
                                        readln(vced);
                                       end;
                            'E', 'e': begin
                                        Writeln('Es usted Extranjero. Ingrese su cedula de extranjero de la siguiente manera -> 12345678');
                                        readln(eced);
                                      end;
                                  else
                                     Writeln('Usted ha ingresado un caracter no valido. Intente de nuevo');
                                  end;
                               until(nacionalidad = 'V') or (nacionalidad = 'E') or (nacionalidad = 'v') or (nacionalidad = 'e');


    //        CLASE DEL BOLETO

                                  Repeat
                                    writeln('Ingrese la clase del boleto');
                                  writeln('--------------------------');
                      writeln('| 1) Primera clase       |');
                      writeln('|                        |');
                      writeln('| 2) Segunda Clase       |');
                      writeln('|                        |');
                      writeln('| 3) Tercera Clase       |');
                      writeln('|                        |');
                      writeln('--------------------------');
                      readln(clasebol);
                               Case clasebol of
                                   '1': begin
                                         clrscr;
                                         writeln('Ha seleccionado primera clase');
                                         Readln (clasebol1);
                                        end;
                                   '2': begin
                                         clrscr;
                                         writeln('Ha seleccionado segunda clase');
                                         Readln (clasebol2);
                                        end;
                                   '3': begin
                                         clrscr;
                                         writeln('Ha seleccionado tercera clase.');
                                         Readln(clasebol3);
                                         if (edad >= 60) then
                                          begin
                                            writeln('Sin embargo, los boletos de tercera clase solo estan disponibles para personas menores de 60 a;os.');
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
                            Until (edad < 60) or ((clasebol <> '3') and (clasebol <> '3'));


//        TIPO DE BOLETO
                              Writeln('Ingrese el tipo del boleto:');
                              Writeln('Internacional (I)');
                              Writeln('Nacional (N)');
                  Readln(TipoBoleto);
                    if (tipoboleto='N')then
                      begin
                        writeln('Ha elegido boletos nacionales');
                      end
                    else if (tipoboleto='I')then
                      begin
                      writeln('Ha elegido boletos Internacionales');
                      end;
             end;
              '2': begin
    clrscr;
    writeln('La cantidad de boletos que se vendieron es:');
          end;

        '3': begin
    clrscr;
    writeln('Hasta luego');
          end;
           end;







end.
