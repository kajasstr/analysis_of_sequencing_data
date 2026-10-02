# Analysis of Sequencing Data - Final Assignment

Tento repozitář obsahuje kompletní pipeline pro zpracování sekvenačních dat z platformy Nanopore. Cílem projektu bylo provést de novo sestavení genomu (genome assembly), jeho anotaci a sepsat závěrečnou zprávu.

## Použité nástroje a technologie
* **Fastplong (0.4.1)** - kontrola kvality (QC), odstranění adaptérů a nekvalitních čtení.
* **Flye (2.9.2)** - de novo sestavení genomu z long-read dat v režimu `--nano-hq`.
* **BUSCO (5.2.2)** - kontrola kvality sestavení a kompletnosti genomu (lineage `bacteria_odb10`).
* **Prokka (1.14.6)** - strukturní a funkční anotace genomu.
* **PBS (Metacentrum)** - výpočetní dávkové skripty pro náročné výpočty.

## Zpracování dat (Pipeline)
1. **QC:** Zpracování surových dat (přes 1.11 G bází) a vyfiltrování nekvalitních čtení pomocí nástroje Fastplong.
2. **Sestavení (Assembly):** Sestavení genomu na výpočetním clusteru Metacentra.
3. **Genome QC:** Zhodnocení kvality assembly logů a provedení BUSCO analýzy.
4. **Anotace:** Identifikace genů a rRNA pomocí nástroje Prokka.

## Hlavní výsledky
* **Velikost genomu:** 2 758 447 bp
* **Počet contigů:** 4
* **N50:** 2 714 464
* **Průměrné pokrytí:** 363x
* **Completeness (BUSCO):** 97.6 %
* **Anotace:** 2780 anotovaných genů a 6 rRNA elementů. Byly úspěšně lokalizovány a extrahovány dvě sekvence 16S rRNA.

## 📂 Obsah repozitáře
* `Report.pdf` - Výsledná zpráva s popisem metod, výsledků a referencemi.
* `assembly_script.sh` - Dávkový skript pro Metacentrum ke spuštění programu Flye.
* `16SrRNA.fasta` - Fasta soubor obsahující nalezené sekvence 16S rRNA.
