-- Master Table
CREATE TABLE iphones (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    model TEXT NOT NULL,
    release_year INTEGER,
);

-- Detail Table
CREATE TABLE components (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    iphone_id INTEGER NOT NULL,
    name TEXT NOT NULL,
    type TEXT,
    specs TEXT,
    FOREIGN KEY (iphone_id) REFERENCES iphones(id) ON DELETE CASCADE
);