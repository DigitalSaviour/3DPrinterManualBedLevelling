Here you go, Lee — a clean, professional **README.md** tailored for the exact GitHub folder you have open   [Current page](citation-section://10047485/4). It’s structured, clear, and ready to drop straight into your repo.

---

# **Ender‑5 Pro Bed Levelling Toolkit**
A collection of G‑code utilities designed to make bed levelling, Z‑offset tuning, mesh generation, and nozzle preparation simple and repeatable on the **Creality Ender‑5 Pro**.

All files are compatible with:

- Stock Creality firmware  
- Marlin firmware builds  
- CRTouch / BLTouch‑enabled firmware  
- OctoPrint, PrusaSlicer, Cura, OrcaSlicer, etc.

Each routine uses safe travel moves, a stable **60 °C bed temperature**, and clear user‑interaction pauses.

---

## **Included G‑code Files**

### **1. `E5P_Level_Manual.gcode`**
A guided manual bed‑levelling routine.  
Moves to each corner and the center, lowering the nozzle to 0.2 mm and pausing so you can adjust the bed screws.

**Use when:**  
- You want a standard paper‑test levelling  
- You’ve changed springs, wheels, or the bed surface  
- You want a quick, reliable levelling pass

---

### **2. `E5P_Level_DoublePass.gcode`**
A precision levelling routine that performs **two full passes** around the bed.  
The second pass tightens accuracy and compensates for screw settling.

**Use when:**  
- You want the most accurate manual levelling  
- You’ve installed a new bed, glass plate, or magnetic sheet  
- You want to eliminate corner drift

---

### **3. `E5P_ZOffset_Tune.gcode`**
Moves to the center of the bed and positions the nozzle at 0.2 mm so you can tune your Z‑offset using baby‑stepping.

**Use when:**  
- You installed a CRTouch/BLTouch  
- You changed your nozzle  
- First‑layer adhesion is inconsistent  
- You want to dial in the perfect Z‑offset

---

### **4. `E5P_Mesh_Probe.gcode`**
Runs a full **G29** auto‑bed‑levelling mesh (requires CRTouch/BLTouch and ABL enabled in firmware).

**Use when:**  
- You want a fresh mesh before printing  
- You changed the bed surface  
- You updated firmware or reset EEPROM

---

### **5. `E5P_Nozzle_Purge.gcode`**
Heats the nozzle, performs a purge line, and pauses so you can clean the tip before levelling or printing.

**Use when:**  
- You want a clean nozzle before levelling  
- You’re preparing for a long print  
- You want to remove residue or filament ooze

---

## **Recommended Workflow**

1. **Run `E5P_Nozzle_Purge.gcode`**  
   Clean the nozzle to ensure accurate levelling.

2. **Run `E5P_Level_Manual.gcode`**  
   Or use **DoublePass** for maximum precision.

3. **Run `E5P_ZOffset_Tune.gcode`**  
   Dial in your Z‑offset (especially with CRTouch/BLTouch).

4. **Run `E5P_Mesh_Probe.gcode`**  
   Generate a fresh mesh for consistent first layers.

---

## **Bed Size & Coordinates**
These routines are designed for the Ender‑5 Pro’s **220×220 mm** build area with safe margins:

- Corners: **X30/Y30**, **X200/Y30**, **X200/Y200**, **X30/Y200**  
- Center: **X115/Y115**

If your printer uses a modified bed size, adjust coordinates accordingly.

---

## **Notes**
- All routines use **M0** pauses, compatible with Creality firmware and OctoPrint.  
- Bed temperature is set to **60 °C** for thermal stability.  
- Nozzle height is set to **0.2 mm**, ideal for paper‑test levelling.  
- Safe Z‑lift is used between moves to avoid bed clips or curled filament.

---

If you want, I can also generate:

- A **preview image** for the README  
- A **version badge**  
- A **GitHub release description**  
- A **folder structure diagram**  
- A **printer‑specific section** for CR‑Touch firmware builds

Just tell me what you want added.
