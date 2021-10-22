/* TP1 Empresa de desarrollo 
 * 
 * Compilacion del modelo:
 * 		glpsol -m tp1.mod -d tp1.dat -o tp1.sol
 * 
 * Observación: Los archivos .mod y .dat deberan estar en el mismo directorio,
 * esto generara un archivo tp1.sol con los resultados de la corrida.
 */

/* Declaracion de conjuntos de datos */
set recursos;
set desarrolladores;

/* Declaracion de variables */
var D{i in desarrolladores} >= 0;

/* Valores de datos */
param disponibilidad_recursos{i in recursos};
param consumo_recursos{i in recursos, j in desarrolladores};
param demanda_desarrolladores{i in desarrolladores};
param beneficio_desarrolladores{i in desarrolladores};
param disponibilidad_desarrolladores;

/* Funcional */
maximize z: sum{i in desarrolladores} beneficio_desarrolladores[i] * D[i];

/* Restricciones */
# Disponibilidad de desarrolladores
s.t. disp_des: sum{i in desarrolladores} D[i] <= disponibilidad_desarrolladores;

# Disponibilidad de recursos
s.t. disp_recu{i in recursos}: sum{j in desarrolladores} 
							   consumo_recursos[i,j] * D[j] <= disponibilidad_recursos[i];

# Demanda de desarrolladores 
s.t. dem_des{i in desarrolladores}: D[i] >= demanda_desarrolladores[i];

end;
