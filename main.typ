#import "@preview/basic-resume:0.2.9": *
#import "@preview/fancy-units:0.1.1": qty

#let name = "Robert Poznański"
#let location = "Kraków, Poland"
#let email = "robertpoznanski.dev@gmail.com"
#let github = "github.com/din0x"
#let linkedin = "linkedin.com/in/robert-poznanski"
#let phone = sys.inputs.at("phone", default: "")
#let personal-site = "din0x.github.io"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  // linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  author-position: left,
  personal-info-position: left,
  paper: "a4",
)

== Education

#edu(
  institution: "Technikum Elektryczno-Elektroniczne nr 7 im. Powstańców Śląskich",
  location: "Kraków, Poland",
  dates: dates-helper(start-date: "Sep 2023", end-date: "Present"),
  degree: "Technik Programista",
  consistent: true
)
- Average grade: $5.59$
- *INF.03* qualification exam -- _passed_ (100%, 94%)#footnote[Scored 100% on the theoretical exam and 94% on the practical exam.]
- *Erasmus+* internship in Game Development and 3D Modeling (Unreal Engine, Blender), Granada, Spain
- Relevant coursework: Algorithms, OOP, Databases, Web Development, Computer Networks

== Experience

#work(
  title: "Software Developer Intern",
  location: "Kraków, Poland",
  company: "Cavatina",
  dates: "Jul 2026",
)
- Built a backend for an internal AI chat powered by Google Gemini, with centralized API key management
- Built a React frontend for managing employee access, monitoring token usage, and interacting with the AI chat
- Automated invoice processing using Tesseract OCR to extract data from PDF documents

#work(
  title: "Game Development Intern",
  location: "Granada, Spain",
  company: "Arcan Studios",
  // dates: dates-helper(start-date: "Apr 2026", end-date: "May 2026"),
  dates: "May 2026",
)
- Learned 3D modeling, rigging, and character animation using Blender
- Imported custom models and animations into an Unreal Engine game
- Programmed character movement, level obstacles, and gameplay logic using Unreal Engine Blueprints

#work(
  title: "Software Developer",
  location: "Poland",
  company: "Studio Dekoracji \"KavaiRubin\"",
  dates: "Freelance",
)
- Built a responsive company website using Astro.js and Tailwind CSS
- Migrated the company's website hosting from nazwa.pl to webd.pl, including DNS configuration
- Migrated existing mailboxes to the new email hosting provider
- Migrated company's domains to OVH while maintaining website and email availability

== Projects

#project(
  name: "Stratospheric Balloon",
)
- Implemented SPI/USART drivers for u-blox GPS modules, LoRa SX1278 receivers/transmitters
// - Designed custom PCB for embedded avionics hardware integration
- Built reliable telemetry communication over LoRa for long-range data transmission
- Designed packaging protecting electronics at #qty[30][km], #qty[-50][°C], #qty[13][hPa]

#project(
  name: "UBX Protocol (de)serializer Library",
  url: "github.com/din0x/ubx",
)
- Developed a Rust library implementing the UBX protocol used by GNSS receivers
- Provides packet encoding and stream decoding with automatic synchronization and recovery
- Designed for robust communication in embedded and navigation applications

#project(
  name: "AVR HAL Library",
  url: "github.com/din0x/avr",
)
- Developed a Hardware Abstraction Layer for ATmega microcontrollers
- Provides safe and ergonomic access to AVR peripherals
- Focused on type safety and embedded systems reliability

#project(
  name: "WebGPU Renderer",
  url: "github.com/din0x/plotrs",
)
- Built a reusable 2D and 3D rendering engine on top of wgpu/WebGPU
- Implemented graphics abstractions and rendering utilities in Rust
- Used as a foundation for graphics and visualization projects

== Skills

- *Languages*: English (B2+)#footnote[United Kids language school diploma; level is an approximate CEFR equivalent.], Polish (Native)
- *Programming Languages*: Rust, Python, Haskell, C, JavaScript, Bash, SQL, 
- *Tools*: Git, KiCad
- *Embedded Systems*: AVR Microcontrollers, LoRa, u-blox, Embedded Rust, Hardware Abstraction Layers
