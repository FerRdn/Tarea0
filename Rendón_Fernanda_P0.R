###################
##### TAREA 0 #####
###################

## Fernanda Rendón
## 19 - 01 - 2022

library (Biostrings) # Paquete requerido para reconocer el archivo como sec
library (seqinr) # Para abrir archivo fasta

## Cargar archivo concatenado de secuencias
rna1 <- readRNAStringSet (choose.files ()) # Escoger el archivo desde la carpeta
rna1
# Pequeño detalle que no puedo cargar el archivo, pero mejor quise avanzar

# la alternativa fue usar:
rna2 <- read.fasta (file = "rna1.fasta")
rna2


### 1. Encontrar secuencia de AÁ.
rnaAA1 <- translate (rna1) # Pasar la secuencia de RNA a AÁ


### 2. ROSALIND

## 2.1 Counting DNA Nucleotides
## Con librerías especializadas:
width (rna1) # Independientemente del tipo de archivo, cuenta los nc o aá

## Con R base:
secuenciaEj <- readline (prompt = "Ingresa una secuencia de DNA: ")

for (secuenciaEj) {
  print (paste ("La secuencia ingresada tiene", nchar (secuenciaEj), "nucleótidos."))
}
# Es un ciclo FOR porque no queremos un ciclo que se repita
# Se puede pero nel
# La función nchar cuenta los caracteres dentro de un vector
# Para esto no requiere abrirse el archivo con Biostrings,
# Sólo que sea de tipo caracter
# Y se pueden contar secuencias de DNA, RNA o de AÁ.

## 2.2 Computing CG Content
## Con librerías especializadas:
