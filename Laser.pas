program Laser;

uses crt,SysUtils;

var
  i, claseboleto, EdadCompradorInt, TotalBoletosInt, edad,cedulaInt,numeroClaseInt: integer;
  nombre,cedula,numeroClase, edadComprador,TotalBoletos, clasebol, TipoVuelo, Vuelta,destino,PrecioTotalStr,edad1Str,PrecioFinalStr: string;
   totalNacional, totalInternacional, Nacional, Internacional,PrecioClase: integer;
   Descuento,PrecioFinal,PrecioTotal:Real;

   // Variables para almacenar la información de cada boleto
  NombreBoleto1,ClaseBoleto1,vueltaBoleto1, CedulaBoleto1, TipoVueloBoleto1, DestinoBoleto1,PrecioTotal1Str,PrecioBoleto1Str: string;
   PrecioClase1,edad1: integer;
   PrecioBoleto1:Real;

  NombreBoleto2,vueltaBoleto2,ClaseBoleto2, CedulaBoleto2, TipoVueloBoleto2, DestinoBoleto2,PrecioBoleto2Str,PrecioTotal2Str: string;
    PrecioClase2,edad2: integer;
    PrecioBoleto2:Real;

   NombreBoleto3,vueltaBoleto3,ClaseBoleto3, CedulaBoleto3, TipoVueloBoleto3, DestinoBoleto3, PrecioBoleto3Str,PrecioTotal3Str: string;
    PrecioClase3,edad3: integer;
    PrecioBoleto3:Real;

   NombreBoleto4,vueltaBoleto4,ClaseBoleto4, CedulaBoleto4,TipoVueloBoleto4, DestinoBoleto4, PrecioBoleto4Str,PrecioTotal4Str: string;
   PrecioClase4,edad4: integer;
   PrecioBoleto4:Real;

   NombreBoleto5,vueltaBoleto5,ClaseBoleto5, CedulaBoleto5, TipoVueloBoleto5, DestinoBoleto5, PrecioBoleto5Str,PrecioTotal5Str: string;
   PrecioClase5,edad5: integer;
   PrecioBoleto5:Real;

   nacionalidad: char;

   //Variables de validación
   conversionExitosaCar,conversionExitosaLong:boolean;
   //ariables deservicios
   servicio: integer;
  servicioBoo: boolean;
  servicioresp: string;

  pago: integer;
  vuelto,faltante, precioServicio,precioServicioTo:Real;


// Variables de los menus
  op, clasebolInt: integer;



    const

    //servicios
    serv1 = 10;
  serv2 = 35;

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

    PrecioBoC=499;
    PrecioCC =400;
    PrecioSDC=700;
    PrecioLRC=605;


   //Vuelos Internacionales

   BogotaCaracas='Bogota-Caracas';
   CurazaoCaracas='Curazao-Caracas';
   SantoDomingoCaracas='Santo Domingo-Caracas';
   RomanaCaracas='La Romana-Caracas';



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
              //Datos del comprador
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


             //Datos de los boletos que seran comprados
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
              if (edad<12) or (edad>=60) then
              begin
                writeln('Tiene un descuento del 10%! Felicidades!(Se aplicara en el precio del pasaje)');
                Descuento:=0.1;
                readln;
              end;


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
    PrecioTotal:=0;
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
                                          if  (edad<12) or (edad>=60) then
                                          begin
                                              PrecioTotal:= PrecioTotal+PrecioPC;
                                              PrecioTotal:= PrecioTotal-(PrecioTotal*Descuento);
                                             destino := Porlamarcaracas;
					  writeln('Su vuelo sera de caracas a porlamar');
					  readln;
                                            end
                                             else
                                             begin
                                          PrecioTotal:= PrecioTotal+PrecioPC;
                                             destino := Porlamarcaracas;
					  writeln('Su vuelo sera de caracas a porlamar');

                                             end;
                                          readln;
					end
					else if (Nacional=2)then
					begin
                                          if (edad<12) or (edad>=60) then
                                          begin
                                             PrecioTotal:= PrecioTotal+PrecioPOC;
                                             PrecioTotal:= PrecioTotal-(PrecioTotal*Descuento);
                                          destino:= PuertoOrdazCaracas;
					  writeln('Su vuelo sera de puerto ordaz a caracas');
					  readln;
                                            end
                                          else
                                          begin
                                          PrecioTotal:= PrecioTotal+PrecioPOC;
                                          destino:= PuertoOrdazCaracas;
					  writeln('Su vuelo sera de puerto ordaz a caracas');
                                          end;
					  readln;
					end
					else if (Nacional=3)then
					begin
                                          if (edad<12) or (edad>=60) then
                                          begin
                                             PrecioTotal:= PrecioTotal+PrecioMC;
                                             PrecioTotal:= PrecioTotal-(PrecioTotal*Descuento);
                                          destino:=  MaracaiboCaracas;
					  writeln('Su vuelo sera de Maracaibo a caracas')
                                            end
                                          else
                                          begin
                                          PrecioTotal:= PrecioTotal+PrecioMC;
                                          destino:=  MaracaiboCaracas;
					  writeln('Su vuelo sera de Maracaibo a caracas');
                                          end;
					  readln;
					end
					else if (Nacional=4)then
					begin
                                          if (edad<12) or (edad>=60) then
                                          begin
                                             PrecioTotal:= PrecioTotal+PrecioVC;
                                             PrecioTotal:= PrecioTotal-(PrecioTotal*Descuento);
                                          destino:= VigiaCaracas;
					  writeln('Su vuelo sera de el vigia a caracas');
                                            end
                                          else
                                          begin
                                          PrecioTotal:= PrecioTotal+PrecioVC;
                                          destino:= VigiaCaracas;
					  writeln('Su vuelo sera de el vigia a caracas');
                                          end;
					  readln;
					end
					else if (Nacional=5)then
					begin
                                          if (edad<12) or (edad>=60) then
                                          begin
                                             PrecioTotal:= PrecioTotal+PrecioBC;
                                             PrecioTotal:= PrecioTotal-(PrecioTotal*Descuento);
                                          destino:= BarcelonaCaracas;
					  writeln('Su vuelo sera de Barcelona a Caracas');
                                            end
                                          else
                                          begin
                                          PrecioTotal:= PrecioTotal+PrecioBC;
                                          destino:= BarcelonaCaracas;
					  writeln('Su vuelo sera de Barcelona a Caracas');
                                          end;
					  readln;
					end
					else if (Nacional=6)then
					begin
                                          if (edad<12) or (edad>=60) then
                                          begin
                                           PrecioTotal:= PrecioTotal+PrecioFC;
                                           PrecioTotal:= PrecioTotal-(PrecioTotal*Descuento);
                                          destino:= FriaCaracas;
					  writeln('Su vuelo sera de La Fria a Caracas');
                                          end
                                          else
                                          begin
                                          PrecioTotal:= PrecioTotal+PrecioFC;

                                          destino:= FriaCaracas;
					  writeln('Su vuelo sera de La Fria a Caracas');

                                          end;
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
            writeln('Su vuelo amerita un boleto de vuelta?. (Si o No)');
repeat
  begin
    PrecioTotal:=0;
                  readln(vuelta);
                  vuelta := UpCase(vuelta);
                end;
  if (vuelta <> 'SI') and (vuelta <> 'NO') then
    writeln('Por favor, ingrese "Si" o "No".');
until (vuelta = 'SI') or (vuelta = 'NO');

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
                                          if (edad<12) or (edad>=60) then
                                          begin
                                          PrecioTotal:= PrecioTotal+PrecioBoC;
                                          PrecioTotal:= PrecioTotal-(PrecioTotal*Descuento);
                                          destino:= BogotaCaracas;
					  writeln('Su vuelo sera de Bogota a porlamar');

                                          end
                                          else
                                          begin
                                          PrecioTotal:= PrecioTotal+PrecioBoC;
                                          destino:= BogotaCaracas;
					  writeln('Su vuelo sera de Bogota a porlamar');

                                          end;
                                          readln;
					end
					else if (Internacional=2)then
					begin
                                           if (edad<12) or (edad>=60) then
                                           begin
                                              PrecioTotal:= PrecioTotal+PrecioCC;
                                              PrecioTotal:= PrecioTotal-(PrecioTotal*Descuento);
                                          destino:= CurazaoCaracas;
					  writeln('Su vuelo sera de curazao a caracas');

                                           end
                                           else
                                           begin
                                          PrecioTotal:= PrecioTotal+PrecioCC;
                                          destino:= CurazaoCaracas;
					  writeln('Su vuelo sera de curazao a caracas');
                                          end;
                                           readln;


					end
					else if (Internacional=3)then
					begin
                                          if (edad<12) or (edad>=60) then
                                          begin
                                           PrecioTotal:= PrecioTotal+PrecioSDC;
                                           PrecioTotal:= PrecioTotal-(PrecioTotal*Descuento);
                                          destino:= SantoDomingoCaracas;
					  writeln('Su vuelo sera de Santo Domingo a caracas');

                                            end
                                          else
                                          begin
                                          PrecioTotal:= PrecioTotal+PrecioSDC;
                                          destino:= SantoDomingoCaracas;
					  writeln('Su vuelo sera de Santo Domingo a caracas');
                                          end;
					  readln;
					end
					else if (Internacional=4)then
					begin
                                          if (edad<12) or (edad>=60) then
                                          begin
                                           PrecioTotal:= PrecioTotal+PrecioLRC;
                                           PrecioTotal:= PrecioTotal-(PrecioTotal*Descuento);
                                          destino:= RomanaCaracas;
					  writeln('Su vuelo sera de La Romana a caracas');
                                          end
                                          else
                                          begin
                                          PrecioTotal:= PrecioTotal+PrecioLRC;

                                          destino:= RomanaCaracas;
					  writeln('Su vuelo sera de La Romana a caracas');

                                          end;
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
                writeln('| 3) Tercera Clase  (5$)      |');
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
                    clasebol:= 'Primera Clase(25$)';
                    PrecioClase:=25;
                    readln;
                  end;
                2:
                  begin
                    clrscr;
                    writeln('Ha seleccionado segunda clase');
                    PrecioClase:=10;
                    clasebol:='Segunda Clase(10$)';
                    readln;
                  end;
                  3:
                  begin
                    clrscr;
                    writeln('Ha seleccionado tercera clase.');
                    clasebol:='Tercera Clase(5$)';
                    PrecioClase:=5;
                    readln;
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


              case i of


              1:
              begin
                NombreBoleto1 := nombre;
                edad1 := edad;
                CedulaBoleto1 := cedula;
                vueltaBoleto1:= vuelta;
                ClaseBoleto1:= clasebol;
                PrecioClase1:=PrecioClase;
                TipoVueloBoleto1 := TipoVuelo;
                DestinoBoleto1 := destino;
                PrecioBoleto1 := PrecioTotal;


              end;
              2:
              begin
                NombreBoleto2 := nombre;
                CedulaBoleto2 := cedula;
                edad2 := edad;
                vueltaBoleto2:=vuelta;
                TipoVueloBoleto2 := TipoVuelo;
                ClaseBoleto2:= clasebol;
                PrecioClase2:=PrecioClase;
                DestinoBoleto2 := destino;

                PrecioBoleto2 := PrecioTotal;

              end;
              3:
              begin
                NombreBoleto3 := nombre;
                CedulaBoleto3 := cedula;
                edad3 := edad;
                vueltaBoleto3:=vuelta;
                TipoVueloBoleto3 := TipoVuelo;
                PrecioClase3:=PrecioClase;
                ClaseBoleto3:= clasebol;
                DestinoBoleto3 := destino;
                PrecioBoleto3 := PrecioTotal;
                end;
              4:
              begin
                NombreBoleto4 := nombre;
                CedulaBoleto4 := cedula;
                edad4 := edad;
                vueltaBoleto4:=vuelta;
                TipoVueloBoleto4 := TipoVuelo;
                PrecioClase4:=PrecioClase;
                ClaseBoleto4:= clasebol;
                DestinoBoleto4 := destino;
                PrecioBoleto4 := PrecioTotal;
                end;
              5:
              begin
                NombreBoleto5 := nombre;
                CedulaBoleto5 := cedula;
                edad5 := edad;
                vueltaBoleto5:=vuelta;
                TipoVueloBoleto5 := TipoVuelo;
                PrecioClase5:=PrecioClase;
                ClaseBoleto5:= clasebol;
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
        writeln('Clase: ' + ClaseBoleto1);
        writeln('destino a: '+ DestinoBoleto1);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto1);
        Str(PrecioBoleto1:0:2,PrecioBoleto1Str);



        PrecioFinal:=0;
        PrecioFinal:=PrecioBoleto1+PrecioClase1;
        Str(PrecioFinal:0:2,PrecioTotal1Str);
        writeln('El precio del pasaje es:  '+ PrecioBoleto1Str);
        writeln('(Aplicando descuento por edad de cumplir los requisitos)');
         readln;
        clrscr;

        writeln('--------------------------------------');

        writeln('El precio total a pagar es: '+ PrecioTotal1Str);
        writeln('(Incluye el precio de la clase seleccionada en el monto final)');

        writeln('--------------------------------------');

        readln;

  //Servicios adicionales
  precioServicioTo := 0; // Inicializar el precio del servicio como cero

  repeat
    writeln(' ¿Desea algún servicio adicional? (Si/No)');
    readln(servicioresp);

    if (servicioresp = 'si') then
      servicioBoo := true
    else if (servicioresp = 'no') then
      servicioBoo := false
    else
      writeln('Por favor, responda con "si" o "no".');

  until ((servicioresp = 'Si') or (servicioresp = 'si')) or ((servicioresp = 'No') or (servicioresp = 'no')); // Corrección en la condición del bucle

  if servicioBoo then
  begin

    writeln('Ha solicitado un servicio especial');

    repeat
    writeln(' ');
    writeln('');
    writeln('¿Qué necesita?');
    writeln('-----------------------------------');
    writeln('| 1) Reservación de taxi de línea  |');
    writeln('| 2) Hospedaje en hotel (1 noche)  |');
    writeln('-----------------------------------');
    readln(servicio);
    case servicio of
      1:
      begin
        writeln('Ha seleccionado la reservación de un taxi de línea');
        precioServicio := serv1;
        writeln('El costo del servicio es: ', precioServicio:0:2);
      end;
      2:
      begin
        writeln('Ha seleccionado una reservación de: 1 noche en el hotel.');
        precioServicio := serv2;
        writeln('El costo del servicio es: ', precioServicio:0:2);
      end;
    else
      writeln('No se ha añadido ningún servicio. intente nuevamente');
    end;



    // CORTE
    precioServicioTo := precioServicioTo + precioServicio;
    writeln('El nuevo precio total actual es: ', (precioServicioTo +PrecioFinal):0:2);
    readln;

  until (servicio = 1) or (servicio = 2);

      writeln('Ingrese monto a cancelar');
  readln(pago);
  if (pago > (precioServicioTo +PrecioFinal)) then
  begin
    vuelto := (pago - (precioServicioTo +PrecioFinal));
    writeln('Su vuelto es de ', vuelto:0:2);
  end
  else if (pago < (precioServicioTo +PrecioFinal)) then
  begin
    faltante := ((precioServicioTo +PrecioFinal) - pago);
    writeln('El faltante en el precio serían de ', faltante:0:2);
    writeln('Ingrese el siguiente monto: ');
    readln(pago); // monto nuevo
    while pago <> faltante do // Se repite hasta que el monto ingresado sea suficiente
    begin
      writeln('El monto ingresado no cubre el faltante. Ingrese un monto suficiente: ');
      readln(pago);
    end;
    writeln('Su compra se ha realizado con éxito');
  end
  else
    writeln('Su compra se ha realizado con éxito');

  readln;
  end
  else
  begin

    writeln('No ha solicitado ningún servicio adicional.');
    writeln('El precio total a pagar es: '+ PrecioTotal1Str);
    writeln('Ingrese monto de pasajes a cancelar');
  readln(pago);
  if (pago > (precioServicioTo +PrecioFinal)) then
  begin
    vuelto := (pago - (precioServicioTo +PrecioFinal));
    writeln('Su vuelto es de ', vuelto:0:2);
  end
  else if (pago < (precioServicioTo +PrecioFinal)) then
  begin
    faltante := ((precioServicioTo +PrecioFinal) - pago);
    writeln('El faltante en el precio serían de ', faltante:0:2);
    writeln('Ingrese el siguiente monto: ');
    readln(pago); // monto nuevo
    while pago <> faltante do // Se repite hasta que el monto ingresado sea suficiente
    begin
      writeln('El monto ingresado no cubre el faltante. Ingrese un monto suficiente: ');
      readln(pago);
    end;
    writeln('Su compra se ha realizado con éxito');
  end
  else
    writeln('Su compra se ha realizado con éxito');

  readln;

  end;
    end;



          2:
          begin

            writeln('-----Informacion del sistema------');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + ' boletos');
        writeln('informacion de Boleto Nº1');
        writeln('nombre: '+ NombreBoleto1);
        writeln('Cedula: '+ CedulaBoleto1);
        Str(edad1,edad1Str);
        writeln('edad: ' + edad1Str);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto1);
        writeln('Clase: ' + ClaseBoleto1);
        writeln('destino a: '+ DestinoBoleto1);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto1);

        PrecioFinal := 0;

        PrecioFinal := PrecioFinal + PrecioBoleto1;
        Str(PrecioFinal:0:2, PrecioTotal1Str);



        writeln('El precio del pasaje es:  '+ PrecioTotal1Str);
        writeln('(Aplicando descuento por edad de cumplir los requisitos)');

        writeln('--------------------------------------');

        writeln('informacion de Boleto Nº2');
        writeln('nombre: '+ NombreBoleto2);
        writeln('Cedula: '+ CedulaBoleto2);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto2);
        writeln('Clase: ' + ClaseBoleto2);
        writeln('destino a: '+ DestinoBoleto2);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto2);

         PrecioFinal := 0;

        PrecioFinal := PrecioFinal + PrecioBoleto2;
        Str(PrecioFinal:0:2, PrecioTotal2Str);

        writeln('El precio del pasaje es:  '+ PrecioTotal2Str);
        writeln('(Aplicando descuento por edad de cumplir los requisitos)');
        PrecioFinal:=0;

        PrecioFinal:=PrecioBoleto1+PrecioBoleto2+PrecioClase1+PrecioClase2;
        Str(PrecioFinal:0:2,PrecioFinalStr);
        writeln('--------------------------------------');

        writeln('El precio total a pagar es: '+ PrecioFinalStr);
        writeln('(Incluye el precio de la clase seleccionada en el monto final)');

        writeln('--------------------------------------');




        readln;

        //Servicios adicionales
  precioServicioTo := 0; // Inicializar el precio del servicio como cero

  repeat
    writeln(' ¿Desea algún servicio adicional? (Si/No)');
    readln(servicioresp);

    if (servicioresp = 'si') then
      servicioBoo := true
    else if (servicioresp = 'no') then
      servicioBoo := false
    else
      writeln('Por favor, responda con "si" o "no".');

  until ((servicioresp = 'Si') or (servicioresp = 'si')) or ((servicioresp = 'No') or (servicioresp = 'no')); // Corrección en la condición del bucle

  if servicioBoo then
  begin

    writeln('Ha solicitado un servicio especial');

    repeat
    writeln(' ');
    writeln('');
    writeln('¿Qué necesita?');
    writeln('-----------------------------------');
    writeln('| 1) Reservación de taxi de línea  |');
    writeln('| 2) Hospedaje en hotel (1 noche)  |');
    writeln('-----------------------------------');
    readln(servicio);
    case servicio of
      1:
      begin
        writeln('Ha seleccionado la reservación de un taxi de línea');
        precioServicio := serv1;
        writeln('El costo del servicio es: ', precioServicio:0:2);
      end;
      2:
      begin
        writeln('Ha seleccionado una reservación de: 1 noche en el hotel.');
        precioServicio := serv2;
        writeln('El costo del servicio es: ', precioServicio:0:2);
      end;
    else
      writeln('No se ha añadido ningún servicio. intente nuevamente');
    end;

    // CORTE
    precioServicioTo := precioServicioTo + precioServicio;
    writeln('El nuevo precio total actual es: ', (precioServicioTo +PrecioFinal):0:2);
    readln;

  until (servicio = 1) or (servicio = 2);

   writeln('Ingrese monto a cancelar');
  readln(pago);
  if (pago > (precioServicioTo +PrecioFinal)) then
  begin
    vuelto := (pago - (precioServicioTo +PrecioFinal));
    writeln('Su vuelto es de ', vuelto:0:2);
  end
  else if (pago < (precioServicioTo +PrecioFinal)) then
  begin
    faltante := ((precioServicioTo +PrecioFinal) - pago);
    writeln('El faltante en el precio serían de ', faltante:0:2);
    writeln('Ingrese el siguiente monto: ');
    readln(pago); // monto nuevo
    while pago <> faltante do // Se repite hasta que el monto ingresado sea suficiente
    begin
      writeln('El monto ingresado no cubre el faltante. Ingrese un monto suficiente: ');
      readln(pago);
    end;
    writeln('Su compra se ha realizado con éxito');
  end
  else
    writeln('Su compra se ha realizado con éxito');

  readln;

  end
  else
  begin

    writeln('No ha solicitado ningún servicio adicional.');
    writeln('El precio total a pagar es: '+ PrecioFinalStr);
    writeln('Ingrese monto de pasajes a cancelar');
  readln(pago);
  if (pago > (precioServicioTo +PrecioFinal)) then
  begin
    vuelto := (pago - (precioServicioTo +PrecioFinal));
    writeln('Su vuelto es de ', vuelto:0:2);
  end
  else if (pago < (precioServicioTo +PrecioFinal)) then
  begin
    faltante := ((precioServicioTo +PrecioFinal) - pago);
    writeln('El faltante en el precio serían de ', faltante:0:2);
    writeln('Ingrese el siguiente monto: ');
    readln(pago); // monto nuevo
    while pago <> faltante do // Se repite hasta que el monto ingresado sea suficiente
    begin
      writeln('El monto ingresado no cubre el faltante. Ingrese un monto suficiente: ');
      readln(pago);
    end;
    writeln('Su compra se ha realizado con éxito');
  end
  else
    writeln('Su compra se ha realizado con éxito');

  readln;

  end;
    end;

          3:
          begin
             writeln('-----Informacion del sistema------');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + ' boletos');
        writeln('informacion de Boleto Nº1');
        writeln('nombre: '+ NombreBoleto1);
        writeln('Cedula: '+ CedulaBoleto1);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto1);
        writeln('Clase: ' + ClaseBoleto1);
        writeln('destino a: '+ DestinoBoleto1);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto1);
        Str(PrecioBoleto1:0:2,PrecioBoleto1Str);
        writeln('El precio del pasaje es:  '+ PrecioBoleto1Str);
        writeln('(Aplicando descuento por edad de cumplir los requisitos)');

        writeln('---------------------------------------');
        writeln('                                       ');
        writeln('informacion de Boleto Nº2');
        writeln('nombre: '+ NombreBoleto2);
        writeln('Cedula: '+ CedulaBoleto2);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto2);
        writeln('Clase: ' + ClaseBoleto2);
        writeln('destino a: '+ DestinoBoleto2);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto2);
        Str(PrecioBoleto2:0:2,PrecioBoleto2Str);
        writeln('El precio del pasaje es:  '+ PrecioBoleto2Str);
        writeln('(Aplicando descuento por edad de cumplir los requisitos)');

        writeln('---------------------------------------');
        writeln('                                       ');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + 'boletos');
        writeln('informacion de Boleto Nº2');
        writeln('nombre: '+ NombreBoleto3);
        writeln('Cedula: '+ CedulaBoleto3);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto3);
        writeln('Clase: ' + ClaseBoleto3);
        writeln('destino a: '+ DestinoBoleto3);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto3 );
        Str(PrecioBoleto3:0:2,PrecioBoleto3Str);
        writeln('El precio del pasaje es:  '+ PrecioBoleto3Str);
        writeln('(Aplicando descuento por edad de cumplir los requisitos)');

        PrecioFinal:=0;
        PrecioFinal:=PrecioBoleto1+PrecioBoleto2+PrecioBoleto3+PrecioClase1+PrecioClase2+PrecioClase3;
        Str(PrecioFinal:0:2,PrecioTotalStr);
        writeln('--------------------------------------');

        writeln('El precio total a pagar es: '+ PrecioTotalStr);
        writeln('(Incluye el precio de la clase seleccionada en el monto final)');

        writeln('--------------------------------------');
        readln;

        //Servicios adicionales
  precioServicioTo := 0; // Inicializar el precio del servicio como cero

  repeat
    writeln(' ¿Desea algún servicio adicional? (Si/No)');
    readln(servicioresp);

    if (servicioresp = 'si') then
      servicioBoo := true
    else if (servicioresp = 'no') then
      servicioBoo := false
    else
      writeln('Por favor, responda con "si" o "no".');

  until ((servicioresp = 'Si') or (servicioresp = 'si')) or ((servicioresp = 'No') or (servicioresp = 'no')); // Corrección en la condición del bucle

  if servicioBoo then
  begin

    writeln('Ha solicitado un servicio especial');

    repeat
    writeln(' ');
    writeln('');
    writeln('¿Qué necesita?');
    writeln('-----------------------------------');
    writeln('| 1) Reservación de taxi de línea  |');
    writeln('| 2) Hospedaje en hotel (1 noche)  |');
    writeln('-----------------------------------');
    readln(servicio);
    case servicio of
      1:
      begin
        writeln('Ha seleccionado la reservación de un taxi de línea');
        precioServicio := serv1;
        writeln('El costo del servicio es: ', precioServicio:0:2);
      end;
      2:
      begin
        writeln('Ha seleccionado una reservación de: 1 noche en el hotel.');
        precioServicio := serv2;
        writeln('El costo del servicio es: ', precioServicio:0:2);
      end;
    else
      writeln('No se ha añadido ningún servicio. intente nuevamente');
    end;

    // CORTE
    precioServicioTo := precioServicioTo + precioServicio;
    writeln('El nuevo precio total actual es: ', (precioServicioTo +PrecioFinal):0:2);
    readln;

  until (servicio = 1) or (servicio = 2);

   writeln('Ingrese monto a cancelar');
  readln(pago);
  if (pago > (precioServicioTo +PrecioFinal)) then
  begin
    vuelto := (pago - (precioServicioTo +PrecioFinal));
    writeln('Su vuelto es de ', vuelto:0:2);
  end
  else if (pago < (precioServicioTo +PrecioFinal)) then
  begin
    faltante := ((precioServicioTo +PrecioFinal) - pago);
    writeln('El faltante en el precio serían de ', faltante:0:2);
    writeln('Ingrese el siguiente monto: ');
    readln(pago); // monto nuevo
    while pago <> faltante do // Se repite hasta que el monto ingresado sea suficiente
    begin
      writeln('El monto ingresado no cubre el faltante. Ingrese un monto suficiente: ');
      readln(pago);
    end;
    writeln('Su compra se ha realizado con éxito');
  end
  else
    writeln('Su compra se ha realizado con éxito');

  readln;

  end
  else
  begin

    writeln('No ha solicitado ningún servicio adicional.');
    writeln('El precio total a pagar es: '+ PrecioFinalStr);
    writeln('Ingrese monto de pasajes a cancelar');
  readln(pago);
  if (pago > (precioServicioTo +PrecioFinal)) then
  begin
    vuelto := (pago - (precioServicioTo +PrecioFinal));
    writeln('Su vuelto es de ', vuelto:0:2);
  end
  else if (pago < (precioServicioTo +PrecioFinal)) then
  begin
    faltante := ((precioServicioTo +PrecioFinal) - pago);
    writeln('El faltante en el precio serían de ', faltante:0:2);
    writeln('Ingrese el siguiente monto: ');
    readln(pago); // monto nuevo
    while pago <> faltante do // Se repite hasta que el monto ingresado sea suficiente
    begin
      writeln('El monto ingresado no cubre el faltante. Ingrese un monto suficiente: ');
      readln(pago);
    end;
    writeln('Su compra se ha realizado con éxito');
  end
  else
    writeln('Su compra se ha realizado con éxito');

  readln;

  end;

          end;
          4:
          begin
        writeln('-----Informacion del sistema------');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + ' boletos');
        writeln('informacion de Boleto Nº1');
        writeln('nombre: '+ NombreBoleto1);
        writeln('Cedula: '+ CedulaBoleto1);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto1);
        writeln('Clase: ' + ClaseBoleto1);
        writeln('destino a: '+ DestinoBoleto1);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto1);
        Str(PrecioBoleto1:0:2,PrecioBoleto1Str);
        writeln('El precio del pasaje es:  '+ PrecioBoleto1Str);
        writeln('(Aplicando descuento por edad de cumplir los requisitos)');

        writeln('---------------------------------------');
        writeln('                                       ');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + 'boletos');
        writeln('informacion de Boleto Nº2');
        writeln('nombre: '+ NombreBoleto2);
        writeln('Cedula: '+ CedulaBoleto2);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto2);
        writeln('Clase: ' + ClaseBoleto2);
        writeln('destino a: '+ DestinoBoleto2);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto2);
        Str(PrecioBoleto2:0:2,PrecioBoleto2Str);
        writeln('El precio del pasaje es:  '+ PrecioBoleto2Str);
        writeln('(Aplicando descuento por edad de cumplir los requisitos)');

        writeln('---------------------------------------');
        writeln('                                       ');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + 'boletos');
        writeln('informacion de Boleto Nº3');
        writeln('nombre: '+ NombreBoleto3);
        writeln('Cedula: '+ CedulaBoleto3);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto3);
        writeln('Clase: ' + ClaseBoleto3);
        writeln('destino a: '+ DestinoBoleto3);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto3 );
        Str(PrecioBoleto3:0:2,PrecioBoleto3Str);
        writeln('El precio del pasaje es:  '+ PrecioBoleto3Str);
        writeln('(Aplicando descuento por edad de cumplir los requisitos)');

        writeln('---------------------------------------');
        writeln('                                       ');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + 'boletos');
        writeln('informacion de Boleto Nº4');
        writeln('nombre: '+ NombreBoleto4);
        writeln('Cedula: '+ CedulaBoleto4);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto4);
        writeln('Clase: ' + ClaseBoleto4);

        writeln('destino a: '+ DestinoBoleto4);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto4);
        Str(PrecioBoleto4:0:2,PrecioBoleto4Str);
        writeln('El precio del pasaje es:  '+ PrecioBoleto4Str);
        writeln('(Aplicando descuento por edad de cumplir los requisitos)');

        PrecioFinal:=0;
        PrecioFinal:=PrecioBoleto1+PrecioBoleto2+PrecioBoleto3+PrecioBoleto4+PrecioClase1+PrecioClase2+PrecioClase3+PrecioClase4;
        Str(PrecioFinal:0:2,PrecioTotalStr);
        writeln('--------------------------------------');

        writeln('El precio total a pagar es: '+ PrecioTotalStr);
        writeln('(Incluye el precio de la clase seleccionada en el monto final)');

        writeln('--------------------------------------');

        readln;

        //Servicios adicionales
  precioServicioTo := 0; // Inicializar el precio del servicio como cero

  repeat
    writeln(' ¿Desea algún servicio adicional? (Si/No)');
    readln(servicioresp);

    if (servicioresp = 'si') then
      servicioBoo := true
    else if (servicioresp = 'no') then
      servicioBoo := false
    else
      writeln('Por favor, responda con "si" o "no".');

  until ((servicioresp = 'Si') or (servicioresp = 'si')) or ((servicioresp = 'No') or (servicioresp = 'no')); // Corrección en la condición del bucle

  if servicioBoo then
  begin

    writeln('Ha solicitado un servicio especial');

    repeat
    writeln(' ');
    writeln('');
    writeln('¿Qué necesita?');
    writeln('-----------------------------------');
    writeln('| 1) Reservación de taxi de línea  |');
    writeln('| 2) Hospedaje en hotel (1 noche)  |');
    writeln('-----------------------------------');
    readln(servicio);
    case servicio of
      1:
      begin
        writeln('Ha seleccionado la reservación de un taxi de línea');
        precioServicio := serv1;
        writeln('El costo del servicio es: ', precioServicio:0:2);
      end;
      2:
      begin
        writeln('Ha seleccionado una reservación de: 1 noche en el hotel.');
        precioServicio := serv2;
        writeln('El costo del servicio es: ', precioServicio:0:2);
      end;
    else
      writeln('No se ha añadido ningún servicio. intente nuevamente');
    end;

    // CORTE
    precioServicioTo := precioServicioTo + precioServicio;
    writeln('El nuevo precio total actual es: ', (precioServicioTo +PrecioFinal):0:2);
    readln;

  until (servicio = 1) or (servicio = 2);

   writeln('Ingrese monto a cancelar');
  readln(pago);
  if (pago > (precioServicioTo +PrecioFinal)) then
  begin
    vuelto := (pago - (precioServicioTo +PrecioFinal));
    writeln('Su vuelto es de ', vuelto:0:2);
  end
  else if (pago < (precioServicioTo +PrecioFinal)) then
  begin
    faltante := ((precioServicioTo +PrecioFinal) - pago);
    writeln('El faltante en el precio serían de ', faltante:0:2);
    writeln('Ingrese el siguiente monto: ');
    readln(pago); // monto nuevo
    while pago <> faltante do // Se repite hasta que el monto ingresado sea suficiente
    begin
      writeln('El monto ingresado no cubre el faltante. Ingrese un monto suficiente: ');
      readln(pago);
    end;
    writeln('Su compra se ha realizado con éxito');
  end
  else
    writeln('Su compra se ha realizado con éxito');

  readln;

  end
  else
  begin

    writeln('No ha solicitado ningún servicio adicional.');
    writeln('El precio total a pagar es: '+ PrecioFinalStr);
    writeln('Ingrese monto de pasajes a cancelar');
  readln(pago);
  if (pago > (precioServicioTo +PrecioFinal)) then
  begin
    vuelto := (pago - (precioServicioTo +PrecioFinal));
    writeln('Su vuelto es de ', vuelto:0:2);
  end
  else if (pago < (precioServicioTo +PrecioFinal)) then
  begin
    faltante := ((precioServicioTo +PrecioFinal) - pago);
    writeln('El faltante en el precio serían de ', faltante:0:2);
    writeln('Ingrese el siguiente monto: ');
    readln(pago); // monto nuevo
    while pago <> faltante do // Se repite hasta que el monto ingresado sea suficiente
    begin
      writeln('El monto ingresado no cubre el faltante. Ingrese un monto suficiente: ');
      readln(pago);
    end;
    writeln('Su compra se ha realizado con éxito');
  end
  else
    writeln('Su compra se ha realizado con éxito');

  readln;

  end;

          end;
          5:
          begin
             writeln('-----Informacion del sistema------');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos+ 'boletos');
        writeln('informacion de Boleto Nº1');
        writeln('nombre: '+ NombreBoleto1);
        writeln('Cedula: '+ CedulaBoleto1);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto1);
        writeln('Clase: ' + ClaseBoleto1);
        writeln('destino a: '+ DestinoBoleto1);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto1 );
        Str(PrecioBoleto1:0:2,PrecioBoleto1Str);
        writeln('El precio del pasaje es:  '+ PrecioBoleto1Str);
        writeln('(Aplicando descuento por edad de cumplir los requisitos)');

        writeln('---------------------------------------');
        writeln('                                       ');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos+ 'boletos');
        writeln('informacion de Boleto Nº2');
        writeln('nombre: '+ NombreBoleto2);
        writeln('Cedula: '+ CedulaBoleto2);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto2);
        writeln('Clase: ' + ClaseBoleto2);
        writeln('destino a: '+ DestinoBoleto2);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto2 );
        Str(PrecioBoleto2:0:2,PrecioBoleto2Str);
        writeln('El precio del pasaje es:  '+ PrecioBoleto2Str);
        writeln('(Aplicando descuento por edad de cumplir los requisitos)');

        writeln('---------------------------------------');
        writeln('                                       ');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + 'boletos');
        writeln('informacion de Boleto Nº3');
        writeln('nombre: '+ NombreBoleto3);
        writeln('Cedula: '+ CedulaBoleto3);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto3);
        writeln('Clase: ' + ClaseBoleto3);
        writeln('destino a: '+ DestinoBoleto3);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto3);
        Str(PrecioBoleto3:0:2,PrecioBoleto3Str);
        writeln('El precio del pasaje es:  '+ PrecioBoleto3Str);
        writeln('(Aplicando descuento por edad de cumplir los requisitos)');

        writeln('---------------------------------------');
        writeln('                                       ');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + 'boletos');
        writeln('informacion de Boleto Nº4');
        writeln('nombre: '+ NombreBoleto4);
        writeln('Cedula: '+ CedulaBoleto4);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto4);
        writeln('Clase: ' + ClaseBoleto4);

        writeln('destino a: '+ DestinoBoleto4);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto4);
        Str(PrecioBoleto4:0:2,PrecioBoleto4Str);
        writeln('El precio del pasaje es:  '+ PrecioBoleto4Str);
        writeln('(Aplicando descuento por edad de cumplir los requisitos)');

        writeln('---------------------------------------');
        writeln('                                       ');
        writeln('Se han comprado una cantidad total de: ' + totalBoletos + 'boletos');
        writeln('informacion de Boleto Nº5');
        writeln('nombre: '+ NombreBoleto5);
        writeln('Cedula: '+ CedulaBoleto5);
        writeln('Tipo de vuelo: ' + TipoVueloBoleto5);
        writeln('Clase: ' + ClaseBoleto5);
        writeln('destino a: '+ DestinoBoleto5);
        writeln('Viaje de ida y vuelta? '+ vueltaBoleto5 );
        Str(PrecioBoleto5:0:2,PrecioBoleto5Str);
        writeln('El precio del pasaje es:  '+ PrecioBoleto5Str);
        writeln('(Aplicando descuento por edad de cumplir los requisitos)');

        PrecioFinal:=0;
        PrecioFinal:=PrecioBoleto1+PrecioBoleto2+PrecioBoleto3+PrecioBoleto4+PrecioBoleto5+PrecioClase1+PrecioClase2+PrecioClase3+PrecioClase4+PrecioClase5;
        Str(PrecioFinal:0:2,PrecioTotalStr);
        writeln('--------------------------------------');

        writeln('El precio total a pagar es: '+ PrecioTotalStr);
        writeln('(Incluye el precio de la clase seleccionada en el monto final)');

        writeln('--------------------------------------');

        readln;

        //Servicios adicionales
  precioServicioTo := 0; // Inicializar el precio del servicio como cero

  repeat
    writeln(' ¿Desea algún servicio adicional? (Si/No)');
    readln(servicioresp);

    if (servicioresp = 'si') then
      servicioBoo := true
    else if (servicioresp = 'no') then
      servicioBoo := false
    else
      writeln('Por favor, responda con "si" o "no".');

  until ((servicioresp = 'Si') or (servicioresp = 'si')) or ((servicioresp = 'No') or (servicioresp = 'no')); // Corrección en la condición del bucle

  if servicioBoo then
  begin

    writeln('Ha solicitado un servicio especial');

    repeat
    writeln(' ');
    writeln('');
    writeln('¿Qué necesita?');
    writeln('-----------------------------------');
    writeln('| 1) Reservación de taxi de línea  |');
    writeln('| 2) Hospedaje en hotel (1 noche)  |');
    writeln('-----------------------------------');
    readln(servicio);
    case servicio of
      1:
      begin
        writeln('Ha seleccionado la reservación de un taxi de línea');
        precioServicio := serv1;
        writeln('El costo del servicio es: ', precioServicio:0:2);
      end;
      2:
      begin
        writeln('Ha seleccionado una reservación de: 1 noche en el hotel.');
        precioServicio := serv2;
        writeln('El costo del servicio es: ', precioServicio:0:2);
      end;
    else
      writeln('No se ha añadido ningún servicio. intente nuevamente');
    end;

    // CORTE
    precioServicioTo := precioServicioTo + precioServicio;
    writeln('El nuevo precio total actual es: ', (precioServicioTo +PrecioFinal):0:2);
    readln;

  until (servicio = 1) or (servicio = 2);

   writeln('Ingrese monto a cancelar');
  readln(pago);
  if (pago > (precioServicioTo +PrecioFinal)) then
  begin
    vuelto := (pago - (precioServicioTo +PrecioFinal));
    writeln('Su vuelto es de ', vuelto:0:2);
  end
  else if (pago < (precioServicioTo +PrecioFinal)) then
  begin
    faltante := ((precioServicioTo +PrecioFinal) - pago);
    writeln('El faltante en el precio serían de ', faltante:0:2);
    writeln('Ingrese el siguiente monto: ');
    readln(pago); // monto nuevo
    while pago <> faltante do // Se repite hasta que el monto ingresado sea suficiente
    begin
      writeln('El monto ingresado no cubre el faltante. Ingrese un monto suficiente: ');
      readln(pago);
    end;
    writeln('Su compra se ha realizado con éxito');
  end
  else
    writeln('Su compra se ha realizado con éxito');

  readln;

  end
  else
  begin

    writeln('No ha solicitado ningún servicio adicional.');
    writeln('El precio total a pagar es: '+ PrecioFinalStr);
    writeln('Ingrese monto de pasajes a cancelar');
  readln(pago);
  if (pago > (precioServicioTo +PrecioFinal)) then
  begin
    vuelto := (pago - (precioServicioTo +PrecioFinal));
    writeln('Su vuelto es de ', vuelto:0:2);
  end
  else if (pago < (precioServicioTo +PrecioFinal)) then
  begin
    faltante := ((precioServicioTo +PrecioFinal) - pago);
    writeln('El faltante en el precio serían de ', faltante:0:2);
    writeln('Ingrese el siguiente monto: ');
    readln(pago); // monto nuevo
    while pago <> faltante do // Se repite hasta que el monto ingresado sea suficiente
    begin
      writeln('El monto ingresado no cubre el faltante. Ingrese un monto suficiente: ');
      readln(pago);
    end;
    writeln('Su compra se ha realizado con éxito');
  end
  else
    writeln('Su compra se ha realizado con éxito');

  readln;

  end;

          end;
        end;

      end;
    end;
    until op = 3;
end.

