# Models
Shift
  - look into rrule gem for recurrence rules.
  - `has_many` qualifications through.. credentials? Credentials would just be a join model.
  - fields: rrule fields, name, notes
  - can be one-time tasks or shifts.
Qualification
  - `has_many` shifts through credentials
  - fields: name
Credentials
  - fields: `qualification_id`, `shift_id`

# Interface
Calendar view. Use transit ID on-call calendar for inspo?
i-cal export
Create shifts or tasks using a standard crud interface
Add qualifications if desired
