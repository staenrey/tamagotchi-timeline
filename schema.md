Schema of the database

| id | brand   |tama_name| based_on|toy_type| era    | region  | release| got_it   |
|----|---------|-------- |---------|--------|--------|---------|--------|----------|
|    | VARCHAR |VARCHAR  | VARCHAR | VARCHAR| VARCHAR| VARCHAR | DATE   | BOOLEAN  |
|    |         |         |         |        |        |         |        |          |

brand: a text string, e.g. Bandai
name: a text string
based_on: type of programming, "guts"
type: Tamagotchi, Station, Other
era: Vintage, Connection, Color, Nano, Mini, Other
region: Japan, EU, USA, Oceania, Korea
release: yyyy-mm-dd
got_it: boolean, yes or no