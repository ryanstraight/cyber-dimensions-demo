# README
Ryan Straight, Ph.D

![License](https://img.shields.io/badge/License-CC_BY--NC--SA_4.0-lightgrey.svg)
![Quarto](https://img.shields.io/badge/Made%20with-Quarto-blue.svg)
![Status](https://img.shields.io/badge/Version-1.0-blue.svg)

# Cyber Dimensions Case Study Demo

<a href="https://github.com/ryanstraight/cyber-dimensions-oer"><img src="assets/cover.avif" alt="Cyber Dimensions OER Toolkit Book Cover" align="right" width="200"></a>

This repository demonstrates the Cyber Dimensions methodology through a
complete case study implementation. The approach centers on
artifact-based learning where students engage with realistic
cybersecurity incidents through authentic documentation formats.

For comprehensive guidance on the methodology, consult the [Cyber
Dimensions OER
Toolkit](https://github.com/ryanstraight/cyber-dimensions-oer)—it
provides the pedagogical foundations you’ll want to understand before
customizing this demonstration.

## Quick Start

The **CIRCUIT** case study is a cybersecurity incident affecting the
Ribera Municipal Utilities in Ribera, Arizona. Demonstrates tech
journalism formats, dynamic worldbuilding systems, and progressive
learning scaffolding.

### Prerequisites

- [Quarto](https://quarto.org/docs/get-started/) for building the case
  study materials
- [R](https://cran.r-project.org) installation (for customizing
  worldbuilding variables)
- Modern web browser for viewing the rendered case study

### Clone and Build

``` bash
git clone https://github.com/ryanstraight/cyber-dimensions-demo
cd cyber-dimensions-demo
quarto render
```

### View Results

Open `docs/index.html` in your browser to explore the case study.

## Key Features

The demo incorporates several innovations in cybersecurity education:

- **Dynamic worldbuilding** generates all scenario details from
  centralized configuration—customize locations, characters, and
  organizations while maintaining narrative consistency
- **Tech journalism format** employs professional technology media
  presentation styles students encounter in practice
- **Progressive cognitive scaffolding** implements a three-stage
  learning approach that manages complexity through careful sequencing
- **Posthuman assessment framework** recognizes distributed agency in
  cybersecurity, moving beyond individual-focused evaluation
- **Integrated media literacy** treats technical communication analysis
  as a core competency

## What’s Included

### Complete Case Study: CIRCUIT

**CIRCUIT: The Ribera Power Grid Incident** is presented in three
coordinated parts:

- **[Introduction](docs/circuit-intro.html)**: Context, methodology, and
  learning framework
- **[Content](docs/circuit-content.html)**: Six authentic artifacts
  documenting the complete incident  
- **[Assignment](docs/circuit-assignment.html)**: Assessment framework
  with analysis questions

### Educational Features

Students analyze authentic artifacts including SCADA logs, email
threads, conference calls, regulatory filings, federal alerts, and GRID
WIRE coverage. The assessment framework employs a posthuman
cybersecurity evaluation approach that recognizes distributed agency
across human and technological actors.

The learning progression follows three stages:

1.  **Technical analysis** - Focus on SCADA logs, emails, and regulatory
    documents
2.  **Media analysis** - Add critical evaluation of tech journalism
    coverage  
3.  **Integrated synthesis** - Complete cross-artifact analysis and
    policy recommendations

Enhanced accessibility features ensure screen reader compatibility
through proper semantic markup and alt-text.

### Worldbuilding Innovation

The worldbuilding system employs over 100 dynamic variables for complete
scenario customization. Here’s what makes it work:

- **YAML-driven customization** - Edit `_worldbuilding.yml` to change
  locations, names, and organizations
- **Six fully developed personas** - Consistent character relationships
  across all artifacts
- **Fictional organizations** - Federal agencies (DCI, ICSERT), the GRID
  WIRE media outlet, advocacy groups
- **R pre-render automation** - Scripts ensure consistency across all
  artifacts during build

The trick is you can generate entirely new scenarios while maintaining
the pedagogical structure.

### Technical Features

- **Multi-format outputs** - HTML (default), PDF, and DOCX with
  cross-platform compatibility
- **Quarto website architecture** - Professional navbar navigation and
  responsive design
- **R integration** - Pre-render scripts enable dynamic content
  generation
- **Tech magazine styling** - Professional media format appearance
- **Accessibility compliance** - Proper semantic markup, alt-text, and
  cross-references
- **Fast builds** - Complete rendering in under two minutes for rapid
  iteration

## Educational Approach

The pedagogical approach centers on artifact-based learning where
students engage with realistic documents that mirror professional
cybersecurity practice. Students analyze technical logs, emails, and
reports while encountering multiple stakeholder perspectives across
government, utility, and federal levels. The authentic incident
progression demonstrates multi-organizational response patterns that
characterize real cybersecurity incidents.

Posthuman assessment recognizes distributed agency in cybersecurity,
moving beyond traditional individual-focused evaluation to examine how
human and technological actors collaborate in complex sociotechnical
systems.

## Tech Media as Pedagogy

Technology journalism serves as an innovative format for cybersecurity
education, employing narrative-driven technical content that presents
complex concepts through accessible storytelling. Students develop media
literacy by analyzing how technical information translates to public
communication, examining the rhetorical choices that shape cybersecurity
discourse.

Professional writing models demonstrate industry-standard tech
communication examples that students encounter in professional practice.
The custom GRID WIRE publication provides authentic media outlet
presentation for case study materials.

## Learning Objectives

1.  **Distributed Agency Analysis**: Human-technology assemblages in
    action
2.  **Multi-Stakeholder Coordination**: Infrastructure governance
    complexity
3.  **Posthuman Ethics Application**: Relational responsibility
    frameworks
4.  **Response Strategy Development**: Recognizing technological agency
5.  **Media Literacy & Communication**: Tech journalism’s role in
    cybersecurity discourse

## Customization

### Implementation Guide

The learning progression builds complexity systematically through three
stages:

1.  **Technical analysis** - Students focus on SCADA logs, emails, and
    regulatory documents to establish foundational understanding
2.  **Media analysis** - Adds GRID WIRE coverage and communication
    strategy evaluation, developing critical media literacy skills  
3.  **Integrated synthesis** - Complete cross-artifact analysis and
    policy recommendations demonstrating sophisticated understanding

The assessment framework provides complete rubrics with media literacy
criteria alongside the five learning objectives. Progressive complexity
develops through staged assignments with concept scaffolding—including
prerequisites and worked examples for complex posthuman theoretical
concepts.

### Customization Examples

Instructors can adapt the case study through several approaches:

**Location and character modifications:**

- Edit `city_name: "Ribera"` and `state_name: "Arizona"` in
  `_worldbuilding.yml`
- Update character variables like `it_manager_name_first: "Maria"`
- Adjust organizational names: `utility_name`, `vendor_company_name`,
  `tech_magazine_name`

**Technical complexity adjustments:**

- Modify artifact descriptions in `circuit-content.qmd`
- Revise questions in `circuit-assignment.qmd` for different skill
  levels
- Customize media format through `tech_magazine_tagline` or publication
  style

**Quick adaptation process:**

1.  Edit `_worldbuilding.yml` to change scenario details
2.  Run `quarto render` to generate updated materials  
3.  Test consistency—verify all artifacts reflect changes through
    dynamic content generation

### Adding More Cases

Expanding the collection involves these steps:

1.  Create new .qmd files with additional case studies using the
    established worldbuilding pattern
2.  Add to `_worldbuilding.yml` to create new characters, locations,
    organizations, timelines
3.  Update `_quarto.yml` to include new chapters in website navigation
4.  Follow the artifact-based approach demonstrated in the [Cyber
    Dimensions Toolkit
    OER](https://github.com/ryanstraight/cyber-dimensions-oer) and this
    CIRCUIT case
5.  Apply the five learning objectives across all cases to maintain
    assessment framework consistency

## License

![](https://mirrors.creativecommons.org/presskit/buttons/80x15/png/by-nc-sa.png)

This demo is released under [Creative Commons
Attribution-NonCommercial-ShareAlike 4.0 International License (CC
BY-NC-SA 4.0)](https://creativecommons.org/licenses/by-nc-sa/4.0/).

> [!TIP]
>
> ### You are free to:
>
> 1.  **Share**— copy and redistribute the material in any medium or
>     format
> 2.  **Adapt**— remix, transform, and build upon the material
> 3.  The licensor cannot revoke these freedoms as long as you follow
>     the license terms.
>
> ### Under the following terms:
>
> 1.  **Attribution**— You must give [appropriate
>     credit](https://creativecommons.org/licenses/by-nc-sa/4.0/#ref-appropriate-credit),
>     provide a link to the license, and [indicate if changes were
>     made](https://creativecommons.org/licenses/by-nc-sa/4.0/#ref-indicate-changes).
>     You may do so in any reasonable manner, but not in any way that
>     suggests the licensor endorses you or your use.
> 2.  **NonCommercial**— You may not use the material for [commercial
>     purposes](https://creativecommons.org/licenses/by-nc-sa/4.0/#ref-commercial-purposes).
> 3.  **ShareAlike**— If you remix, transform, or build upon the
>     material, you must distribute your contributions under the [same
>     license](https://creativecommons.org/licenses/by-nc-sa/4.0/#ref-same-license)as
>     the original.
> 4.  **No additional restrictions**— You may not apply legal terms or
>     [technological
>     measures](https://creativecommons.org/licenses/by-nc-sa/4.0/#ref-technological-measures)that
>     legally restrict others from doing anything the license permits.
>
> ### Notices:
>
> You do not have to comply with the license for elements of the
> material in the public domain or where your use is permitted by an
> applicable [exception or
> limitation](https://creativecommons.org/licenses/by-nc-sa/4.0/#ref-exception-or-limitation).
>
> No warranties are given. The license may not give you all of the
> permissions necessary for your intended use. For example, other rights
> such as [publicity, privacy, or moral
> rights](https://creativecommons.org/licenses/by-nc-sa/4.0/#ref-publicity-privacy-or-moral-rights)may
> limit how you use the material.

## Citation

> Straight, R. M. (2025). Cyber Dimensions Case Study Demo: Tech
> Journalism Edition.
> https://github.com/ryanstraight/cyber-dimensions-demo

``` bibtex
@software{straightCyberDimensionsDemo2025,
  author = {Straight, Ryan M.},
  title = {Cyber Dimensions Case Study Demo: CIRCUIT: The Ribera Power Grid Incident},
  year = {2025},
  publisher = {GitHub},
  url = {https://github.com/ryanstraight/cyber-dimensions-demo},
  note = {Complete educational resource demonstrating posthuman cybersecurity pedagogy through realistic artifacts and dynamic worldbuilding}
}
```

------------------------------------------------------------------------

## Support

- **Issues**: [GitHub
  Issues](https://github.com/ryanstraight/cyber-dimensions-demo/issues)
- **Documentation**: [Full OER
  Toolkit](https://ryanstraight.github.io/cyber-dimensions-oer)
- **Academic context**: [University of Arizona Cyber Operations
  Program](https://infosci.arizona.edu/cyber-operations)
