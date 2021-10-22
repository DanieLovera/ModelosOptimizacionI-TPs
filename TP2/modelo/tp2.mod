/* TP2 Empresa Agr�cola
 * 
 * Compilacion del modelo:
 * 		glpsol -m tp2.mod -d tp2.dat -o tp2.sol
 * 
 * Observaci�n: Los archivos .mod y .dat deberan estar en el mismo directorio,
 * esto generara un archivo tp2.sol con los resultados de la corrida.
 */

set granos;
set destino;

param precio_granos {i in granos};
param disponibilidad_granos {i in granos};
param humedad_granos {i in granos};
param densidad_granos {i in granos};
param dano_granos {i in granos};
param impureza_granos {i in granos};

param demanda_minima {i in destino};
param demanda_maxima {i in destino};
param humedad_maxima {i in destino};
param densidad_minima {i in destino};
param dano_maximo {i in destino};	
param impureza_maxima {i in destino};		
param precio_venta {i in destino};

var C {i in destino} >= 0;
var H {i in destino} >= 0;
var V {i in destino} >= 0;
var D {i in destino} >= 0;
var I{i in destino} >= 0;
var GP{i in granos, j in destino} >= 0;
var GT{i in granos} >= 0;

/* Demandas m�ximas */
s.t. dem_max{i in destino}: C[i] <= demanda_maxima[i];

/* Demandas m�nimas */
s.t. dem_min{i in destino}: C[i] >= demanda_minima[i];

/*Humedad m�xima*/
s.t. hum_max{i in destino}: H[i] <= C[i] * (humedad_maxima[i] / 100);

/*Volumen m�nimo de granos */
s.t. vol_min{i in destino}: V[i] >= C[i] / (1000 / densidad_minima[i]);

/*Da�o m�ximo de granos: */
s.t. dan_max{i in destino}: D[i] <= C[i] * (dano_maximo[i] / 100);

/*Impureza m�xima de granos*/
s.t. imp_max {i in destino}: I[i] <= C[i] * (impureza_maxima[i] / 100);

/* Relacion de granos totales y parciales*/
s.t. ES_gnos{i in granos}: GT[i] = sum{j in destino} GP[i,j];

/*Relaci�n granos de tipo j y granos de tipo j destinados a i*/
s.t. dp_gnos{i in granos}: sum{j in destino} GP[i,j] <= disponibilidad_granos[i];

/* Relacion de granos */
s.t. ES_dest{j in destino}: C[j] = sum{i in granos} GP[i, j];

/*Relaci�n de humedad*/
s.t. rel_hum{j in destino}: H[j] = sum{i in granos} GP[i, j] * (humedad_granos[i] / 100);

/*Relaci�n de densidad*/
s.t. rel_den{j in destino}: V[j] = sum{i in granos} GP[i, j] / (1000 / densidad_granos[i]);

/*Relaci�n de da�os*/
s.t. rel_dan{j in destino}: D[j] = sum{i in granos} GP[i, j] * (dano_granos[i] / 100);

/*Relaci�n de impureza*/
s.t. rel_imp {j in destino}: I[j] = sum{i in granos} GP[i,j] * (impureza_granos[i] / 100); 

/*todo: falta poner los costos*/
maximize Z: (sum{j in destino} precio_venta[j] * C[j])
	- (sum{i in granos: i<>'G12'} precio_granos[i] * disponibilidad_granos[i])
	- (precio_granos['G12'] * GT['G12']);
	#- (sum{i in granos} precio_granos[i] * GT[i]);

