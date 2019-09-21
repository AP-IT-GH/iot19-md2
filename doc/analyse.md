# Analyse

## Onderzoeksvraag

> Zijn producten nog bruikbaar na het transport door verschillende omstandigheden?  
> Hoe kunnen leveranciers weten dat ze tijdens transport moeten ingrijpen?  
> Wat moet er gebeuren indien producten onbruikbaar zijn geworden tijdens het transport?

## Voorstel tot oplossing

Medical delivery is een probleem in moeilijk bereikbare delen van de wereld. Er zijn veel omgevingen met schommelende temperaturen, van onder het nulpunt tot de brandende zon. Schokken tijdens het vervoeren van medische goederen kan de chemische structuur van de medicijnen aanpassen of andere pakketten onbruikbaar maken. Hierdoor bestaat er ook onzekerheid over herlevering.
Er is geen real-time informatie over de afstand en de staat van het product.

### Overzicht oplossing

Via real-time data kan men de locatie en de staat van het product nakijken. Een cross platform webapplicatie zal dit mogelijk maken. Indien een gebruiker het nodig acht om andere producten te laten brengen door een andere leverancier is dit mogelijk via de webapplicatie. De gebruiker zou de reeds bestelde producten kunnen annuleren indien deze niet meer aan de voorwaarden voldoen. Dan kan de transporteur terug gaan voor een nieuwe lading.

De mogelijkheid moet er ook zijn om alle producten onderweg op een kaart te zien, of de dozen in gebruik zijn en of deze aan het opladen zijn en waar deze gestockeerd staan. De hoeveelheid batterij resterend weergeven als je deze informatie opvraagt.

Per doos moeten er ook bepaalde specificaties ingesteld kunnen worden; bv. Hoeveel schokken kan deze doos aan, de maximum en minimum temperatuur, etc.

De leverancier moet producten kunnen kiezen welke hij meeneemt. Wanneer de leverancier een van de voorwaarden dreigt te overschrijden dient de webapplicatie op de smartphone/tablet een melding te geven zodat men hier tijdig op kan anticiperen.

#### Algemene architectuur

![Algemene architectuur](./img/algemene_architectuur.png)
De verschillende boxen zullen als nodes werken en samen in een transportmiddel gestoken worden. Deze boxen sturen na een ingestelde tijdspanne data door indien er over de ingestelde grenzen is gegaan. De data wordt verstuurd naar LoRa Gateways. De sensor data die worden vergaard zijn oriëntatie, schokken, temperatuur, vochtigheid en positie. Aangezien het over afgelegen gebieden zou kunnen gaan waar geen LoRa gateway verbinding aanwezig zou zijn, kan er gebruikt gemaakt worden van een versterker zodat de reikwijdte vergroot wordt. De data zal gefilterd moeten worden via de end nodes zelf en enkel nodige data doorsturen.

## Marktonderzoek

|                        | Medicalcouriers                             | Hydropac                                | Worldcourier                                                                                | Actioncourier                        | Zipline                                                                      | TNT Healtcare section Supplies                                                                                                                                                                                       |
| ---------------------- | ------------------------------------------- | --------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------ | ---------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Sensors                | ?                                           | ?                                       | Ambient temperature, internal temperature, light, tilt, pressureand physical shock sensors. | ?                                    | ?                                                                            | Ambient temperature and internal temperature sensors                                                                                                                                                                 |
| Tracking               | Tracking APP, Tracking center               | /                                       | GPS (Customer Resource Center (CRC) )                                                       | Digital Log Tracking, GPS            | 3D sattelite map and manual ground surveys                                   | GPS                                                                                                                                                                                                                  |
| Temperature control    | /                                           | Can choose min and max of temperature   | controls ambient an internal temperature                                                    | /                                    | /                                                                            | Realtime tracking of temprature                                                                                                                                                                                      |
| Communication protocol | /                                           | /                                       | BLE, GSM                                                                                    | /                                    | SMS                                                                          | /                                                                                                                                                                                                                    |
| App Control            | Realtimedata, Dashboard                     | /                                       | Realtime, monitoring                                                                        | Monitoring                           | On-demand through a simple app, when they need it, monitoring, realtime data | Realtimedata, Monitoring                                                                                                                                                                                             |
| Transit time           | /                                           | Adjustable                              | /                                                                                           | Non-stop delivery                    | 30 - 45 min delivery                                                         | Sameday Delivery (ophaling en levering via de weg, na ophaling rechtstreekse levering bij de opgegeven ontvanger), Onboard courier ( zendingen die persoonlijke aandacht eisen), Air charter ( dringende zendingen ) |
| Type                   | Medical Courier                             | Insulated Shipping Systems              | Medical logistics                                                                           | Medical Courier serivce              | Blood delivery by drone                                                      | Transport                                                                                                                                                                                                            |
| Website                | [Website](https://www.medicalcouriers.com/) | [Website](https://hydropac.co.uk/#medi) | [Website](https://www.worldcourier.com/)                                                    | [Website](https://actioncourier.com) | [Website](https://flyzipline.com/)                                           | [Website](https://common.tnt.com/express/en_xx/site/home/services/industry_sol/healthcare/pharmasafe.html)                                                                                                           |

## Detail analyse

#### Blokdiagram

![Mockup](./img/blockscheme.png)

##### Specificatietabel

| Blok               | Specificatie                      | Min  | Nominaal | Max  |
| ------------------ | --------------------------------- | ---- | -------- | ---- |
| RFM95W             | Werkspanning                      | 1.8V |          | 3.7V |
| Lithium batterij   | Spanning                          |      | 3.7V     |      |
|                    | Capaciteit                        |      | 2000mAh  |      |
| MTK3339 GPS Module | Werkspanning                      | 3.0V | 3.3V     | 4.3V |
|                    | Stroomverbruik signal acquisition |      | 20mA     |      |
|                    | Stroomverbruik tracking           |      | 25mA     |      |
|                    | Positie update rate               | 1Hz  | 1Hz      | 10Hz |
|                    | Channels                          |      | 66       |      |
|                    | Baud rate                         |      | 9600 bps |      |

##### Argumentatietabel

| Blok        | Argumentatie                                                                                                                                                                                                                                                                                                                   | Alternatieven  |
| ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------- |
| GPS         | Er wordt gebruik gemaakt van de MTK3339 gps module van GlobalTop deze module gebruikt relatief weinig stroom (20mA - 25mA) en heeft een ingebouwde antenne die uitbreidbaar is met een externe. Ook heeft hij een hogere update rate van 10 Hz wat inhoudt dat de gps module tot 10 maal per seconde de positie kan berekenen. | NEO-6M, BN-280 |
| LoRa module | RFM95W werd gekozen omdat deze aanzienlijk minder stroom verbruikt dan concurrerende modules. De hoge sensitiviteit met de +20dBm eindversterker levert een industry leading link budget op, waardoor het optimaal is voor elke toepassing die bereik of robuustheid vereist.                                                  | RN2483         |

#### Elektrisch schema

#### State Diagram

#### Flowchart

![Flowchart](./img/flowchart.png)

### Front End

![Mockup](./img/mockup.png)
