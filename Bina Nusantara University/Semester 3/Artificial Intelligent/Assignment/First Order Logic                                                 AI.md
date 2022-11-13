Noel Nathanael Tuan Junior - 2501991864 
Assignment is done using **Obsidian** x **LaTex** with a help of **Excalidraw**.


Given sentences as premise:

1. John is a student
2. John is in the Informatics department
3. Each Informatics student must be an engineering student
4. Mathematic is a difficult lesson
5. Each engineering student would definitely like Mathematic or hate it
6. Each student would definitely like a lesson
7. Students who have never attended difficult lesson certainly do not like the lesson
8. Peter has never attended the Mathematic lesson
9. 
Based on given premise above, please create:
a) FOL
b) Convert FOL in part a) to CNF
c) Proof by Resolution, that Peter hate Mathematic.

### **FOL**

$S(x)$ where $x$ is a student    
$D(x, y)$ where $x$ is in department $y$
$DF(x)$ where $x$ is a difficult lesson       
$L(x, y)$ where $x$ likes lesson $y$
$A(x, y)$ where $x$ attend lesson $y$

1. John is a student
$$S (John)$$
2. John is in the Informatics department
$$D(John, Informatics)$$
3. Each informatics student must be an engineering student
$$∀x S (x) ∧ D (x, Informatics) ⇒ D (x, Engineering)$$
4. Mathematic is a difficult lesson
$$DF(Mathematic)$$
5. Each engineering student would definitely like Mathematic or hate it
$$∀x S (x)∧D (x, Engineering) ⇒ L (x, M athematic)∨¬L (x, M athematic)$$
6. Each student would definitely like a lesson
$$∀x S(x) ⇒ ∃y L(x, y)$$
7. Student who have never attended difficult lesson certainly do not like the lesson
$$∀x∀y S(x) ∧ DF(y) ∧ ¬A(x, y) ⇒ ¬L(x, y)$$
8. Peter has never attended the Mathematic lesson
$$¬A(Peter, M athematic)$$


### **Convert FOL to CNF**

1. John is a student
$$S (John)$$
CNF : $$S (John)$$

2. John is in the Informatics department
$$D(John, Informatics)$$
CNF $$D(John, Informatics)$$


3. Each informatics student must be an engineering student
$$∀x S (x) ∧ D (x, Informatics) ⇒ D (x, Engineering)$$
$$∀x ¬S(x) ∨ ¬D(x, Informatics) ∨ D(x, Engineering)$$
CNF : $$¬S(x) ∨ ¬D(x, Informatics) ∨ D(x, Engineering)$$

4. Mathematic is a difficult lesson
$$DF(Mathematic)$$
CNF : $$DF(Mathematic)$$

5. Each engineering student would definitely like Mathematic or hate it
$$∀x S (x)∧D (x, Engineering) ⇒ L (x, M athematic)∨¬L (x, M athematic)$$
$$∀x ¬S(x) ∨ ¬D(x, Engineering) ∨ L(x, M athematic) ∨ ¬L(x, M athematic)$$
CNF : $$¬S(x) ∨ ¬D(x, Engineering) ∨ L(x, M athematic) ∨ ¬L(x, M athematic)$$

6. Each student would definitely like a lesson
$$∀x S(x) ⇒ ∃y L(x, y)$$
$$∀x∃y¬S(x) ∨ L(x, y)$$
$$∀x¬S(x) ∨ L(x, f(x))$$
CNF : 
$$¬S(x) ∨ L(x, f(x))$$

7. Student who have never attended difficult lesson certainly do not like the lesson
$$∀x∀y S(x) ∧ DF(y) ∧ ¬A(x, y) ⇒ ¬L(x, y)$$
$$∀x∀y¬(S(x) ∧ DF(y) ∧ ¬A(x, y)) ∨ ¬L(x, y)$$
$$∀x∀y¬S(x) ∨ ¬DF(y) ∨ A(x, y) ∨ ¬L(x, y)$$
CNF : $$¬S(x) ∨ ¬DF(y) ∨ A(x, y) ∨ ¬L(x, y)¬S(x) ∨ ¬DF(y) ∨ A(x, y) ∨ ¬L(x, y)$$

8. Peter has never attended the Mathematic lesson
$$¬A(Peter, M athematic)$$
CNF : $$¬A(Peter, M athematic)$$

### **Proof by Resolution that Peter hate Mathematic**

![[Pasted image 20221106134138.png]]

Therefor, the statement **Peter hate Mathematic** is **NOT TRUE**
