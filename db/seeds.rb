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



