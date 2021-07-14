# Manipulando dados com dplyr  

#Instalando o pacote:
install.packages("dplyr")
library(dplyr)

#Base de dados:    
head(mtcars)

#Aplicação das funções select, arrange, filter mutate, group_by e summarise                                                  
mtcars %>%                                        
  select(mpg, cyl, hp, qsec)                    

mtcars %>%                                        
  select(mpg, cyl, hp, qsec) %>%                  
  arrange(mpg) %>%
  head(10)

mtcars %>%                                        
  select(mpg, cyl, hp, qsec) %>%                  
  arrange(mpg) %>%          
  filter(mpg > 15) 

mtcars %>%                                        
  select(mpg, cyl, hp, qsec) %>%                  
  arrange(mpg) %>%          
  filter(mpg > 15) %>%                            
  mutate(div = qsec / mpg) %>%
  head(10)

mtcars %>%                                        
  select(mpg, cyl, hp, qsec) %>%                  
  arrange(mpg) %>%          
  filter(mpg > 15) %>%                            
  mutate(div = qsec / mpg) %>%
  group_by(cyl) %>%
  summarise(media_mpg = mean(mpg),
            max_hp = max(hp)) 


# União de bases com dplyr 

#Instalando o pacote:
install.packages("dplyr")
library(dplyr)

#Bases de dados
band_instruments
band_members

#Inner join
band_members %>% 
  inner_join(band_instruments, by = "name")

#Left join
band_members %>% 
  left_join(band_instruments, by = "name")

#Right join
band_members %>% 
  right_join(band_instruments, by = "name")

#Full join
band_members %>% 
  full_join(band_instruments, by = "name")

