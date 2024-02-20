program laser;

uses crt,SysUtils;

var
  i, claseboleto, EdadCompradorInt, TotalBoletosInt, edad,cedulaInt,numeroClaseInt: integer;
  nombre,cedula,numeroClase, edadComprador,TotalBoletos, clasebol1, clasebol2, clasebol3, TipoVuelo, Vuelta,destino: string;
   totalNacional, totalInternacional, Nacional, Internacional,PrecioTotal: integer;

   // Variables para almacenar la información de cada boleto
  NombreBoleto1,ClaseBoleto1,vueltaBoleto1, CedulaBoleto1, TipoVueloBoleto1, DestinoBoleto1, PrecioBoleto1Str: string;
   PrecioBoleto1: integer;

  NombreBoleto2,vueltaBoleto2,ClaseBoleto2, CedulaBoleto2, TipoVueloBoleto2, DestinoBoleto2,PrecioBoleto2Str: string;
    PrecioBoleto2: integer;

   NombreBoleto3,vueltaBoleto3,ClaseBoleto3, CedulaBoleto3, TipoVueloBoleto3, DestinoBoleto3, PrecioBoleto3Str: string;
    PrecioBoleto3: integer;

   NombreBoleto4,vueltaBoleto4,ClaseBoleto4, CedulaBoleto4,TipoVueloBoleto4, DestinoBoleto4, PrecioBoleto4Str: string;
    PrecioBoleto4: integer;

   NombreBoleto5,vueltaBoleto5,ClaseBoleto5, CedulaBoleto5, TipoVueloBoleto5, DestinoBoleto5, PrecioBoleto5Str: string;
    PrecioBoleto5: integer;

   nacionalidad, vced, eced: char;

   //Variables de validación
   ValEdad,conversionExitosaCar,conversionExitosaLong,StringValido,NumeroValido:boolean;


// Variables de los menus
  op, clasebolInt: integer;
   clasebol: string;


    const
      //vuelos Nacionales
   PorlamarCaracas=  'Porlamar-Caracas';
   PuertoOrdazCaracas='Puerto Ordaz- Caracas';
   MaracaiboCaracas='Maracaibo-Caracas';
   VigiaCaracas='El vigia- Caracas';
   BarcelonaCaracas='Barcelona-Caracas';
   FriaCaracas ='La Fria-Caracas';

   //Precios Nacionales
            PrecioPC= 50;
            PrecioPOC=45;
            PrecioMC=80;
            PrecioVC=75;
            PrecioBC=30;
            PrecioFC=60;

    //Precios Internacionales


   //Vuelos Internacionales

   BogotaCaracas='Bogota-Caracas';
   CurazaoCaracas='Curazao-Caracas';
   SantoDomingoCaracas='Santo Domingo-Caracas';
   RomanaCaracas='La Romana-Caracas';



begin
  PrecioTotal:=0;
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


             // repeat
              clrscr;
              writeln('--------------------------');
              writeln('Ingrese sus datos para el boleto ', i, ':');
              writeln('--------------------------');
              writeln(' ');
              writeln('Ingrese su nombre');
              readln(nombre);
              writeln(' ');


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

// Vuelo Nacional
writeln('Su vuelo amerita un boleto de vuelta?. (Si o No)');
repeat
  begin
                  readln(vuelta);
                  vuelta := UpCase(vuelta);
                end;
  if (vuelta <> 'SI') and (vuelta <> 'NO') then
    writeln('Por favor, ingrese "Si" o "No".');
until (vuelta = 'SI') or (vuelta = 'NO');
                  clrscr;
					writeln('|---------------------------------------------|');
					writeln('|-------------VUELOS NACIONALES---------------|');
					writeln('|---------------------------------------------|');
					writeln('|-----------------DESTINOS--------------------|');
					writeln('|---------------------------------------------|');
					writeln('|---------------------------------|--PRECIOS--|');
					writeln('|---------------------------------------------|');
					writeln('|Porlamar-Caracas|Caracas-Prolamar|    50$    |');
					writeln('|---------------------------------------------|');
					writeln('|Puerto ordaz-Caracas|Caracaz-Puerto ordaz|45$|');
					writeln('|---------------------------------------------|');
					writeln('|Maracaibo-Caracas|Caracas-Maracaibo|   80$   |');
					writeln('|---------------------------------------------|');
					writeln('|El Vigia-Caracas|Caracas-El Vigia|    75$    |');
					writeln('|---------------------------------------------|');
					writeln('|Barcelona-Caracas|Caracas-Barcelona|   30$   |');
					writeln('|---------------------------------------------|');
					writeln('|La Fria-Caracas|Caracas-La Fria|    60$      |');
					writeln('|---------------------------------------------|');
					writeln;
					writeln('Presione Enter');
					readln;
					clrscr;
					writeln('Ingrese su destino:');
					writeln('1.Porlamar-Caracas');
					writeln('2.Puerto Ordaz-Caracas');
					writeln('3.Maracaibo-Caracas');
					writeln('4.El Vigia-Caracas');
					writeln('5.Barcelona-Caracas');
					writeln('6.La Fria-Caracas');
					readln(Nacional);
					if (Nacional=1)then
					begin
                                          PrecioTotal:= PrecioTotal+PrecioPC;
                                             destino := Porlamarcaracas;
					  writeln('Su vuelo sera de caracas a porlamar');
					  readln;
					end
					else if (Nacional=2)then
					begin
                                          PrecioTotal:= PrecioTotal+PrecioPOC;
                                          destino:= PuertoOrdazCaracas;
					  writeln('Su vuelo sera de puerto ordaz a caracas');
					  readln;
					end
					else if (Nacional=3)then
					begin
                                          PrecioTotal:= PrecioTotal+PrecioMC;
                                          destino:=  MaracaiboCaracas;
					  writeln('Su vuelo sera de Maracaibo a caracas');
					  readln;
					end
					else if (Nacional=4)then
					begin
                                          PrecioTotal:= PrecioTotal+PrecioVC;
                                          destino:= VigiaCaracas;
					  writeln('Su vuelo sera de el vigia a caracas');
					  readln;
					end
					else if (Nacional=5)then
					begin
                                          PrecioTotal:= PrecioTotal+PrecioBC;
                                          destino:= BarcelonaCaracas;
					  writeln('Su vuelo sera de Barcelona a Caracas');
					  readln;
					end
					else if (Nacional=6)then
					begin
                                          PrecioTotal:= PrecioTotal+PrecioFC;
                                          destino:= FriaCaracas;
					  writeln('Su vuelo sera de La Fria a Caracas');
					  readln;
					end
					else if (Nacional>6) or (Nacional<0)then
					begin
					  writeln('Opcion no valida');
					  readln;
                                        end;
                end;

                'I':
                begin
                  TipoVuelo := 'Internacional';
                  totalInternacional := totalInternacional + 1;
// Vuelo Internacional

readln;
                  clrscr;
                                       writeln('|--------------------------------------------------|');
					writeln('|----------------VUELOS INTERNACIONALES------------|');
					writeln('|--------------------------------------------------|');
					writeln('|--------------------DESTINOS----------------------|');
					writeln('|--------------------------------------------------|');
					writeln('|--------------------------------------|--PRECIOS--|');
					writeln('|--------------------------------------------------|');
					writeln('|Bogota-Caracas|Caracas-Bogota              | 499$ |');
					writeln('|--------------------------------------------------|');
					writeln('|Curazao-Caracas|Caracas-Curazao              |400$|');
					writeln('|--------------------------------------------------|');
					writeln('|Santo Domingo-Caracas|Caracas-Santo Domingo| 700$ |');
					writeln('|--------------------------------------------------|');
					writeln('|La Romana-Caracas|Caracas-La Romana        | 650$ |');
					writeln('|--------------------------------------------------|');
					writeln;
					writeln('Presione Enter');
					readln;
					clrscr;
					writeln('Ingrese su destino:');
					writeln('1.Bogota-Caracas');
					writeln('2.Curazao-Caracas');
					writeln('3.Santo Domingo-Caracas');
					writeln('4.La Romana-Caracas');
					readln(Internacional);
					if (Internacional=1)then
					begin
                                          destino:= BogotaCaracas;
					  writeln('Su vuelo sera de Bogota a porlamar');
					  readln;
					end
					else if (Internacional=2)then
					begin
                                          destino:= CurazaoCaracas;
					  writeln('Su vuelo sera de curazao a caracas');
					  readln;
					end
					else if (Internacional=3)then
					begin
                                          destino:= SantoDomingoCaracas;
					  writeln('Su vuelo sera de Santo Domingo a caracas');
					  readln;
					end
					else if (Internacional=4)then
					begin
                                          destino:= RomanaCaracas;
					  writeln('Su vuelo sera de La Romana a caracas');
					  readln;
					end
					else if (Internacional>6) or (Internacional<0)then
					begin
					  writeln('Opcion no valida');
					  readln;
					end;

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

                  conversionExitosaCar:= TryStrToInt(clasebol,clasebolInt);

                  if not conversionExitosaCar or(clasebolInt < 1) or (clasebolInt > 3) then

                  begin
                     writeln('Caracteres invalidos, ingrese clase nuevamente');
                     readln;
                   end

                  else
                  begin
                case clasebolInt of

                1:
                  begin
                     clrscr;
                    writeln('Ha seleccionado primera clase');
                    clasebol1:= 'Primera Clase';
                    readln;
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

                  end;
                end;
               end;
              until  ((clasebolInt = 1) or (clasebolInt = 2) or (clasebolInt = 3)) and conversionExitosaCar;


//  RES. DATOS BOLETOS
               clrscr;
              writeln('------------------------------------');
              writeln('Boleto ', i, ' registrado con exito:');
              writeln('------------------------------------');
              writeln('Informacion del boleto ', i, ':');
              writeln('Nombre: ', nombre);
              writeln('Cedula: ', cedula);
              writeln('Edad: ', edad);
              writeln('Tipo de Vuelo: ', TipoVuelo);
              writeln('Vuelo con destino: ', destino);


              case i of


              1:
              begin
                NombreBoleto1 := nombre;
                CedulaBoleto1 := cedula;
                vueltaBoleto1:= vuelta;
                ClaseBoleto1:= clasebol1;
                TipoVueloBoleto1 := TipoVuelo;
                DestinoBoleto1 := destino;
                PrecioBoleto1 := PrecioTotal;

              end;
              2:
              begin
                NombreBoleto2 := nombre;
                CedulaBoleto2 := cedula;
                vueltaBoleto2:=vuelta;
                TipoVueloBoleto2 := TipoVuelo;
                DestinoBoleto2 := destino;
                PrecioBoleto2 := PrecioTotal;

              end;
              3:
              begin
                NombreBoleto3 := nombre;
                CedulaBoleto3 := cedula;
                vueltaBoleto3:=vuelta;
                TipoVueloBoleto3 := TipoVuelo;
                DestinoBoleto3 := destino;
                PrecioBoleto3 := PrecioTotal;
                end;
              4:
              begin
                NombreBoleto4 := nombre;
                CedulaBoleto4 := cedula;
                vueltaBoleto4:=vuelta;
                TipoVueloBoleto4 := TipoVuelo;
                DestinoBoleto4 := destino;
                PrecioBoleto4 := PrecioTotal;
                end;
              5:
              begin
                NombreBoleto5 := nombre;
                CedulaBoleto5 := cedula;
                vueltaBoleto5:=vuelta;
                TipoVueloBoleto5 := TipoVuelo;
                DestinoBoleto5 := destino;
                PrecioBoleto5 := PrecioTotal;
                end;
                  end;

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
        case totalBoletosInt  of
          1: begin
             writeln('-----Informacion del sistema------');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + ' boletos');
        writeln('informacion de Boleto Nº1');
        writeln('nombre: '+ NombreBoleto1);
        writeln('Cedula: '+ CedulaBoleto1);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto1);
        writeln('Clase ' + ClaseBoleto1);
        writeln('destino a: '+ DestinoBoleto1);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto1);
        Str(PrecioBoleto1,PrecioBoleto1Str);
        writeln('El total del pasaje es:  '+ PrecioBoleto1Str);

        readln;
          end;
          2:
          begin

            writeln('-----Informacion del sistema------');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + ' boletos');
        writeln('informacion de Boleto Nº1');
        writeln('nombre: '+ NombreBoleto1);
        writeln('Cedula: '+ CedulaBoleto1);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto1);
        writeln('destino a: '+ DestinoBoleto1);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto1);
        Str(PrecioBoleto1,PrecioBoleto1Str);
        writeln('El total del pasaje es:  '+ PrecioBoleto1Str);

        writeln('--------------------------------------');

        writeln('informacion de Boleto Nº2');
        writeln('nombre: '+ NombreBoleto2);
        writeln('Cedula: '+ CedulaBoleto2);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto2);
        writeln('destino a: '+ DestinoBoleto2);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto2);
        Str(PrecioBoleto1,PrecioBoleto2Str);
        writeln('El total del pasaje es:  '+ PrecioBoleto2Str);

        readln;
          end;
          3:
          begin
             writeln('-----Informacion del sistema------');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + ' boletos');
        writeln('informacion de Boleto Nº1');
        writeln('nombre: '+ NombreBoleto1);
        writeln('Cedula: '+ CedulaBoleto1);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto1);
        writeln('destino a: '+ DestinoBoleto1);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto1);
        Str(PrecioBoleto1,PrecioBoleto1Str);
        writeln('El total del pasaje es:  '+ PrecioBoleto1Str);

        writeln('---------------------------------------');
        writeln('                                       ');
        writeln('informacion de Boleto Nº2');
        writeln('nombre: '+ NombreBoleto2);
        writeln('Cedula: '+ CedulaBoleto2);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto2);
        writeln('destino a: '+ DestinoBoleto2);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto2);
        Str(PrecioBoleto1,PrecioBoleto2Str);
        writeln('El total del pasaje es:  '+ PrecioBoleto2Str);

        writeln('---------------------------------------');
        writeln('                                       ');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + 'boletos');
        writeln('informacion de Boleto Nº2');
        writeln('nombre: '+ NombreBoleto3);
        writeln('Cedula: '+ CedulaBoleto3);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto3);
        writeln('destino a: '+ DestinoBoleto3);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto3 );
        Str(PrecioBoleto1,PrecioBoleto3Str);
        writeln('El total del pasaje es:  '+ PrecioBoleto3Str);
          end;
          4:
          begin
        writeln('-----Informacion del sistema------');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + ' boletos');
        writeln('informacion de Boleto Nº1');
        writeln('nombre: '+ NombreBoleto1);
        writeln('Cedula: '+ CedulaBoleto1);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto1);
        writeln('destino a: '+ DestinoBoleto1);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto1);
        Str(PrecioBoleto1,PrecioBoleto1Str);
        writeln('El total del pasaje es:  '+ PrecioBoleto1Str);

        writeln('---------------------------------------');
        writeln('                                       ');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + 'boletos');
        writeln('informacion de Boleto Nº2');
        writeln('nombre: '+ NombreBoleto2);
        writeln('Cedula: '+ CedulaBoleto2);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto2);
        writeln('destino a: '+ DestinoBoleto2);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto2);
        Str(PrecioBoleto1,PrecioBoleto2Str);
        writeln('El total del pasaje es:  '+ PrecioBoleto2Str);

        writeln('---------------------------------------');
        writeln('                                       ');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + 'boletos');
        writeln('informacion de Boleto Nº3');
        writeln('nombre: '+ NombreBoleto3);
        writeln('Cedula: '+ CedulaBoleto3);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto3);
        writeln('destino a: '+ DestinoBoleto3);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto3 );
        Str(PrecioBoleto1,PrecioBoleto3Str);
        writeln('El total del pasaje es:  '+ PrecioBoleto3Str);

        writeln('---------------------------------------');
        writeln('                                       ');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + 'boletos');
        writeln('informacion de Boleto Nº4');
        writeln('nombre: '+ NombreBoleto4);
        writeln('Cedula: '+ CedulaBoleto4);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto4);
        writeln('destino a: '+ DestinoBoleto4);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto4);
        Str(PrecioBoleto1,PrecioBoleto4Str);
        writeln('El total del pasaje es:  '+ PrecioBoleto4Str);
          end;
          5:
          begin
             writeln('-----Informacion del sistema------');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos+ 'boletos');
        writeln('informacion de Boleto Nº1');
        writeln('nombre: '+ NombreBoleto1);
        writeln('Cedula: '+ CedulaBoleto1);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto1);
        writeln('destino a: '+ DestinoBoleto1);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto1 );
        Str(PrecioBoleto1,PrecioBoleto1Str);
        writeln('El total del pasaje es:  '+ PrecioBoleto1Str);

        writeln('---------------------------------------');
        writeln('                                       ');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos+ 'boletos');
        writeln('informacion de Boleto Nº2');
        writeln('nombre: '+ NombreBoleto2);
        writeln('Cedula: '+ CedulaBoleto2);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto2);
        writeln('destino a: '+ DestinoBoleto2);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto2 );
        Str(PrecioBoleto1,PrecioBoleto2Str);
        writeln('El total del pasaje es:  '+ PrecioBoleto2Str);

        writeln('---------------------------------------');
        writeln('                                       ');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + 'boletos');
        writeln('informacion de Boleto Nº3');
        writeln('nombre: '+ NombreBoleto3);
        writeln('Cedula: '+ CedulaBoleto3);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto3);
        writeln('destino a: '+ DestinoBoleto3);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto3);
        Str(PrecioBoleto1,PrecioBoleto3Str);
        writeln('El total del pasaje es:  '+ PrecioBoleto3Str);

        writeln('---------------------------------------');
        writeln('                                       ');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + 'boletos');
        writeln('informacion de Boleto Nº4');
        writeln('nombre: '+ NombreBoleto4);
        writeln('Cedula: '+ CedulaBoleto4);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto4);
        writeln('destino a: '+ DestinoBoleto4);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto4);
        Str(PrecioBoleto1,PrecioBoleto4Str);
        writeln('El total del pasaje es:  '+ PrecioBoleto4Str);

        writeln('---------------------------------------');
        writeln('                                       ');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + 'boletos');
        writeln('informacion de Boleto Nº5');
        writeln('nombre: '+ NombreBoleto5);
        writeln('Cedula: '+ CedulaBoleto5);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto5);
        writeln('destino a: '+ DestinoBoleto5);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto5 );
        Str(PrecioBoleto1,PrecioBoleto5Str);
        writeln('El total del pasaje es:  '+ PrecioBoleto5Str);
          end;
        end;

      end;
    end;
    until op = 3;
end.

