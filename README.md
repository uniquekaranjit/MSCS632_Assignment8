# Family Tree Program in Prolog

This project is a simple Prolog program that models family relationships using facts and logical rules. It allows querying relationships such as parent, grandparent, sibling, cousin, and descendant using Prolog's pattern matching and inference engine.

---

## Contents

- `family_tree.pl` – Prolog source file with facts and rules  
- `README.md` – Project documentation and sample queries  


---

## Features

The program defines:
- **Basic relationships** using facts: `parent/2`, `male/1`, `female/1`
- **Derived relationships** using rules:
  - `grandparent(X, Y)`
  - `sibling(X, Y)`
  - `cousin(X, Y)`
  - `child(X, Y)`
  - `descendant(X, Y)`

---

## How to Run

### Requirements

- [SWI-Prolog](https://www.swi-prolog.org/) installed  


### Steps

1. Open a terminal and navigate to the project directory.
2. Launch SWI-Prolog and Load the Prolog file:
   ```
   swipl family_tree.pl
   ```

3. Run queries (see examples below).

---

## Sample Runs

### 1. Who are the children of a particular person?

**Query:**
```
?- child(X, mary).
```

**Expected Output:**
```
X = linda ;
X = tom.
```

---

### 2. Who are the siblings of a particular person?

**Query:**
```
?- sibling(linda, X).
```

**Expected Output:**
```
X = tom.
```

**Query:**
```
?- sibling(alice, X).
```

**Expected Output:**
```
X = mark.
```

---

### 3. Is one person a cousin of another?

**Query:**
```
?- cousin(mark, linda).
```

**Expected Output:**
```
true.
```

**Query:**
```
?- cousin(tom, alice).
```

**Expected Output:**
```
true.
```

---
