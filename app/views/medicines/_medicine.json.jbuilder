json.extract! medicine, :id, :antibiotic, :dose, :frequency, :route, :start_date, :end_date, :created_at, :updated_at
json.url patient_medicine_url(medicine.patient, medicine, format: :json)
