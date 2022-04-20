#install.packages("leaflet") 

library("leaflet") 

m<-leaflet()

m <- addTiles(m)

## hmm - VB! 
m <- addCircleMarkers(m, lng=-118.39699716, lat=34.0267831,label="Home", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.39641533256666,lat=34.02504575165618,label="Cali Tandoor", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.39453866752659, lat=34.02461937982565,label="Montys Good Burger", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.3947073754616, lat=34.02604251942401,label="Emerald Thai Cuisine", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.39381490181742, lat=34.025242576622006,label="CAVA", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.3943017463867, lat=34.02650741159344,label="In-N-Out Burger", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.3946919266687, lat=34.024745715871056,label="Potato Chips Deli Culver City", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.39554801689033, lat=34.025655889918355,label="India sweet and spice", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.39310210236697, lat=34.025494951390534,label="Trader joes", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.39379008271207, lat=34.02797747716255,label="Sprouts Farmers market", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.39908531794404, lat=34.02359813213935,label="India food mart", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.39918837762765, lat=34.023554351938074,label="Bahay Natin food mart",      radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.40148042144986, lat=34.030671284858315,label="Vons", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")

m

