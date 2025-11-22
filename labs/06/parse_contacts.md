# Command-Line Regex Extraction

### **1. Extract all email addresses**

```bash
grep -Eo '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+' csv/contacts.csv
```

### **2. Extract all phone numbers**

Matches formats like `(123) 456-7890` or `1-123-456-7890`:

```bash
grep -Eo '(\([0-9]{3}\) [0-9]{3}-[0-9]{4})|(1-[0-9]{3}-[0-9]{3}-[0-9]{4})' csv/contacts.csv
```

### **3. Extract all names starting with 'J'**

```bash
grep -Eo '\bJ[A-Za-z]+ [A-Za-z'\''-]+' csv/contacts.csv
```

### **4. Extract all street names containing “St”**

Looks for “St” inside a word (St., St, Street)

```bash
grep -Eo '[A-Za-z]+\.? St(?:reet)?\.?' csv/contacts.csv
```

### **5. Extract all last names**

Assuming `First Last` is always before first comma:

```bash
grep -Eo '^[A-Za-z'\''-]+ ([A-Za-z'\''-]+)' csv/contacts.csv | awk '{print $2}'
```

### **6. Extract all email domains (after @)**

```bash
grep -Eo '@[A-Za-z0-9.-]+' csv/contacts.csv | sed 's/@//'
```

### **7. Find all entries where the phone number ends with '7'**

```bash
grep -E '([0-9]{4}|[0-9]{4}\))$' csv/contacts.csv | grep '7$'
```

### **8. Extract first names ending with 'e'**

```bash
grep -Eo '\b[A-Za-z]*e\b' csv/contacts.csv
```
