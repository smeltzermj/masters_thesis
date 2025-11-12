# Russian Intergovernmental Transfers, Electoral Support, and Patronal Politics

## TL;DR
This project tests whether the Kremlin allocates intergovernmental transfers to reward political loyalty and insure against electoral risk. I build a municipal-level panel from federal budget records and election returns, clean and harmonize it into a reproducible dataset, and estimate fixed-effects models with robust checks. Results show a systematic relationship between higher pro-incumbent vote shares and subsequent transfers, with stronger effects where fiscal autonomy is low. Code produces the full pipeline from raw files to tables and maps.

## Research questions
1. Do municipalities that deliver higher vote shares for the incumbent receive larger per-capita transfers in subsequent budget cycles?
2. Are “swing” or underperforming municipalities targeted for pre-election top-ups?
3. How do institutional features such as fiscal autonomy and governor alignment moderate these effects?
4. Is the pattern robust to alternative functional forms, lags, and measures of political loyalty?
5. Do results survive placebo tests outside the electoral calendar?

## Why it matters
If transfers are politically targeted, budget policy functions as a regime-maintenance tool rather than a neutral equalization mechanism. That matters for comparative work on patronalism and for how international actors interpret Russian subnational finance.

## Data
- **Administrative units:** Municipal districts and urban okrugs, Russia, 2008–2018.  
- **Budget data:** Federal and regional budget reports on intergovernmental transfers to municipalities.  
- **Elections:** Presidential, Duma, and gubernatorial returns at the municipal level.  
- **Controls:** Demography, unemployment, GRP proxies, commodity exposure, urbanization, distance to oblast center.  
- **Shapefiles:** Municipal boundaries for GIS outputs.  
- **Provenance:** All sources documented in `docs/codebook.md`. Sensitive or non-redistributable raw files are excluded; a small synthetic sample is provided in `data_sample/`.

## Methods
- **ETL:** Standardize municipality IDs across revisions, reconcile splits and merges, deflate monetary values, winsorize extreme outliers, and generate balanced and unbalanced panels.  
- **Specification:**  
  - Baseline: `Transfer_per_capita_{i,t} = β·Vote_{i,t-1} + γX_{i,t-1} + μ_i + τ_t + ε_{i,t}`  
  - Event-time models around election years to detect pre-electoral bumps.  
  - Interactions with fiscal autonomy and governor alignment.  
- **Estimation:** Two-way fixed effects with cluster-robust standard errors by municipality; wild-cluster bootstrap as a check.  
- **Robustness:** Alternative outcomes (grants by type), alternative loyalty measures, lag structures, sample splits, placebo years, leave-one-region-out.  
- **Validation:** Parallel-trends diagnostics for event-time models, leverage and influence checks, spatial autocorrelation tests.  
- **Visualization:** Coefficient plots, partial-dependence plots, and choropleth maps of predicted transfer residuals.

## Key findings
- Municipalities with higher pro-incumbent vote shares receive larger subsequent transfers per capita, controlling for need and fixed effects.  
- Pre-election periods feature targeted increases to underperforming areas, consistent with risk insurance rather than pure reward.  
- Effects strengthen where municipal fiscal autonomy is low and governor–center alignment is high.  
- Results are robust to alternative measures and placebo tests; spatial dependence does not drive findings.
