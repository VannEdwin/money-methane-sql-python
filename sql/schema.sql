CREATE TABLE IF NOT EXISTS counties(
  fips_code TEXT PRIMARY KEY,
  state TEXT, 
  county_name TEXT
);

CREATE TABLE IF NOT EXISTS air_quality (
  id INTEGER PRIMARY KEY AUTOINCREMENT, 
  fips_code TEXT, 
  year INTEGER, 
  pm25 REAL, 
  pm10 REAL, 
  nox REAL, 
  nh3 REAL, 
  ch4 REAL, 
  h2s REAL, 
  UNIQUE (fips_code, year),
  FOREIGN KEY (fips_code) REFERENCES counties(fips_code)
);

CREATE TABLE IF NOT EXISTS livestock(
  id INTEGER PRIMARY KEY AUTOINCREMENT, 
  fips_code TEXT, 
  year INTEGER, 
  total_animals INTEGER, 
  cattle INTEGER, 
  pigs INTEGER, 
  chickens INTEGER, 
  sheep INTEGER, 
  goats INTEGER, 
  UNIQUE (fips_code, year),
  FOREIGN KEY (fips_code) REFERENCES counties(fips_code)

);
