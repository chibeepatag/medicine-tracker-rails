# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


severities = Severity.create([{name: "Mild"}, {name: "Moderate"}, {name: "Severe"}])

doses = [
  '50mg',
'100mg',
'150mg',
'200mg',
'250mg',
'300mg',
'350mg',
'400mg',
'450mg',
'500mg',
'750mg',
'1g',
'1.25g',
'1.5g',
'2g',
'4.5g',
]

doses.each do |dose|
  Dose.create(name: dose)
end


frequencies = 
[
  'Daily',
  'BD',
  'TDS',
  'QID',
  '4 hourly',
  'Stat',
  'PRN'  
]

frequencies.each do |frequency|
  Frequency.create(name: frequency)
end


routes = [
'PO',
'IV',
'IM',
'INH',
'Conj',
'S/C',
'Top'
]

routes.each do |route|
  Route.create(name: route)
end

organ_reactions = [{
    organ: 'Skin',
    reactions: [
      'Urticaria',
      'Angioedema',
      'Flushing',
    ]
 },
 {
    organ: 'GI Tract',
    reactions: [
      'Abdominal pain',
      'Vomiting',
      'Diarrhea'
    ]
  },
 {
    organ: 'Respiratory',
    reactions: [
      'Cough',
      'Wheezing',
      'Stridor',
      'Objective dyspnea',
      'Accessory muscle use',
      'Respiratory arrest'
    ]
  },
  {
    organ: 'Cardiovascular',
    reactions: [
      'Tachycardia',
      'Lowered BP',
      'Shock',
      'Cardiac arrest'
    ]
  }
]

organ_reactions.each do |org_rxn|
  organ = Organ.create(name: org_rxn[:organ])
  org_rxn[:reactions].each do |reaction|
    organ.reactions.create(name: reaction)
  end
end


class_antibiotics = [
    {
    name: 'Aminoglycosides',
    antibiotics: ['Amikacin',
                  'Gentamicin',
                  'Neomycin',
                  'Tobramycin',
                  'Streptomycin']
  },
  {
    name: 'Ansamycins',
    antibiotics: ['Rifaximin']
  },
  {
    name: 'Carbapenems',
    antibiotics: ['Ertapenem',
                  'Imipenem',
                  'Meropenem']
  },
  {
    name: 'Cephalosporins',
    antibiotics: ['Cephazolin',
                  'Cephalothin',
                  'Cephalexin',
                  'Cefaclor',
                  'Cefuroxime',
                  'Ceftazidime ',
                  'Ceftriaxone ',
                  'Cefepime']
  },
  {
    name: 'Glycopeptides',
    antibiotics: ['Teicoplanin',
                  'Vancomycin']
  },
  {
    name: 'Lincosamides',
    antibiotics: ['Clindamycin',
                  'Lincomycin']
  },
  {
    name: 'Lipopeptide',
    antibiotics: ['Daptomycin']
  },
  {
    name: 'Macrolides',
    antibiotics: ['Azithromycin',
                  'Clarithromycin',
                  'Erythromycin',
                  'Roxithromycin',
                  'Spiramycin']
  },
  {
    name: 'Monobactams',
    antibiotics: ['Aztreonam']
  },
  {
    name: 'Nitrofurans',
    antibiotics: ['Nitrofurantoin']
  },
  {
    name: 'Oxazolidinones',
    antibiotics: ['Linezolid']
  },
  {
    name: 'Penicillins',
    antibiotics: ['Amoxicillin',
                  'Augmentin',
                  'Ampicillin',
                  'Benzyl Penicillin',
                  'Dicloxacillin',
                  'Flucloxacillin',
                  'Penicillin G',
                  'Penicillin V',
                  'Piperacillin',
                  'Ticarcillin',
                  'Tazocin',
                  'Timentin']
  },
  {
    name: 'Quinolones',
    antibiotics: ['Ciprofloxacin',
                  'Levofloxacin',
                  'Moxifloxacin',
                  'Norfloxacin']
  },
  {
    name: 'Sulfonamides',
    antibiotics: ['Sulfadiazine',
                  'Sulfamethoxazole',
                  'Trimethoprim-Sulfamethoxazole']
  },
  {
    name: 'Tetracyclines',
    antibiotics: ['Doxycycline',
                  'Minocycline']
  },
  {
    name: 'Other',
    antibiotics: ['Metronidazole',
                  'Trimethoprim',
                  'Dapsone',
                  'Ethambutol',
                  'Isoniazid',
                  'Pyrazinamide',
                  'Rifampicin',
                  'Rifabutin',
                  'Streptomycin',
                  'Chloramphenicol',
                  'Tigecycline',
                  'Fosfomycin',
                  'Fusidic acid']
  }
]


class_antibiotics.each do |class_antibiotic|
  class_name = class_antibiotic[:name]
  class_antibiotic[:antibiotics].each do |antibiotic|
    Antibiotic.create(antibiotic_class: class_name, name: antibiotic)
  end
  
end

