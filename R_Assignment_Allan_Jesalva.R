WHO = read.csv("WHO.csv")
str(WHO)
#d) Country with lowest literacy rate
literacyrate_low<-min(WHO$LiteracyRate, na.rm = TRUE)
row_lowestlitrate<-subset(WHO, LiteracyRate ==  literacyrate_low)
country_lowestlitrate<-(row_lowestlitrate$Country)
#Answer to d) is Mali

#e) Richest country in Europe based on GNI
europe<-subset(WHO, Region == 'Europe')
gni_max_europe<-max(europe$GNI, na.rm = TRUE)
row_highestgni_europe<-subset(europe, GNI == gni_max_europe)
country_highestgni_europe<-(row_highestgni_europe$Country)
#Answer to e) is Luxembourg

#f) Mean Life Expectancy in Africa
africa<-subset(WHO, Region == 'Africa')
life_expectancy_mean<-mean(africa$LifeExpectancy, na.rm = TRUE)
#Answer to f) is 57.95652

#g)Number of countries with population greater than 10,000
countries_exceed_10M<-subset(WHO, Population >10000)
dim(countries_exceed_10M)
#Answer to g) is 86

#h) Top 5 countries in Americas with highest child mortality rate
americas<-subset(WHO, Region == 'Americas')
index_childmortality_americas<-order(americas$ChildMortality, decreasing = TRUE)
americas_reordered<-americas[index_childmortality_americas, ]
head(americas_reordered, 5)
# Answer to h) are the following: 1) Haiti, 2) Bolivia, 3) Guyana, 4) Guatemala, 5) Dominican Republic

# 2) NBA Data Set
# a) The year Bulls has the highest winning percentage
nba_historical_data<-read_excel('Historical NBA Performance.xlsx')
bulls<-subset(nba_historical_data, Team == 'Bulls')
bulls_highest_win_prcnt<-max(bulls$`Winning Percentage`)
bulls_row_highest_win<-subset(bulls,`Winning Percentage` == bulls_highest_win_prcnt)
#Answer to 2a is 1995-1996

# 2b. Teams with an even win-loss record
team_even_winloss<-subset(nba_historical_data, `Winning Percentage` == 0.50)

# 3 Season Stats

# 3a and b are bonuses

# 3c. What year/season did Lebron James scored the highest.
season_stats<-read.csv('Seasons_Stats.csv')
lebron_james<-subset(season_stats, Player == 'LeBron James')
lebron_james_highestpts<-max(lebron_james$PTS, na.rm = TRUE)
subset(lebron_james, PTS == lebron_james_highestpts)$Year
# Answer to 3c is 2006

#3d. What year/season did Michael Jordan scored the highest?
michael_jordan<-subset(season_stats, Player == 'Michael Jordan*')
michael_jordan_highestpts<-max(michael_jordan$PTS, na.rm = TRUE)
subset(michael_jordan, PTS == michael_jordan_highestpts)$Year
# Answer to 3d is 1987

#3e. Player Efficiency Rating of Kobe Bryant in the year where his MP is the lowest
kobe_bryant<-subset(season_stats, Player == 'Kobe Bryant')
kobe_bryant_lowestmp<-min(kobe_bryant$MP)
subset(kobe_bryant, MP == kobe_bryant_lowestmp)
# Answer to 3e is 10.7

#4 National University Rankings
Univ_rankings = read.csv("National Universities Rankings.csv")

#4a.Most numnber of undergrad enrollment
Univ_rankings[which.max(Univ_rankings$Undergrad.Enrollment),]$Name
#Answer is Tennessee Technological University

#4b. Average tuition in the top 10 universities
top_10_univ<-Univ_rankings[order(Univ_rankings$Rank),][1:10,]
top_10_univ$tuition_no_dollar <- gsub(pattern = "\\$|\\,",replacement = "", top_10_univ$Tuition.and.fees)
mean(as.numeric(top_10_univ$tuition_no_dollar))
#Answer in 4b is 49895.20
      



