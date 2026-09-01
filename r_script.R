# just try to understand the datas

df_distributors <- read.csv(file = "datas/hasetal_distributor_accounts.csv")

df_distributors$month

install.packages('readxl')
library(readxl)


str(df_deutch)

head(df_deutch)


excel_sheets('datas/statistischer-bericht-alkoholsteuerstatistik-5734401257005.xlsx')

df_deutch_Steuergegenstand <- read_excel('datas/statistischer-bericht-alkoholsteuerstatistik-5734401257005.xlsx',
                        sheet = 'csv-79941-b01')
str(df_deutch_Steuergegenstand)

df_deutch_Alkoholsteuerstatistik = read_excel('datas/statistischer-bericht-alkoholsteuerstatistik-5734401257005.xlsx', 
                                              sheet = 'csv-79941-01'
                                              )

str(df_deutch_Alkoholsteuerstatistik)




str(df_deutch_Steuergegenstand)


trand_of_brennerei <- df_deutch_Steuergegenstand[df_deutch_Steuergegenstand$Steuergegenstand == 'Brennereien insgesamt', c('Berichtsjahr', 'Anzahl')]
str(trand_of_brennerei)

paste(trand_of_brennerei$Berichtsjahr,':' ,trand_of_brennerei$Anzahl)
prozent_der_total <- 100 - (trand_of_brennerei$Anzahl[5]  / trand_of_brennerei$Anzahl[1] *100)
prozent_der_total  


rm(prozent)  

trend_of_Verschlussbrennereien <- df_deutch_Steuergegenstand[df_deutch_Steuergegenstand$Steuergegenstand == 'Brennereien: davon Verschlussbrennereien', c('Berichtsjahr', 'Anzahl')]
trend_of_Verschlussbrennereien


prozent_der_Verschlussbrennereien <- (trend_of_Verschlussbrennereien$Anzahl[5] / trend_of_Verschlussbrennereien$Anzahl[1] * 100) - 100
prozent_der_Verschlussbrennereien



