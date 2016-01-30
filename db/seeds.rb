# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Ticket.destroy_all
#User.destroy_all

Ticket.create(id: "1", 
							submit_by: "Leonardo da Vinci",
							title: "Can't click on picture folder", 
							body: "Click on picture folder to access individual pictures. Click action doesn't do anything",
							tracker: "bug", 					
							severity: "urgent", 	
							assignee: "Mickey Knox", 	
							state: "accepted")

Ticket.create(id: "2", 
							submit_by: "Socrates",
							title: "Can we color label folders?", 
							body: "Are we able to color label folders, so that it can show priorty of event timeline?",
							tracker: "feature", 					
							severity: "low", 	
							assignee: "Wayne Gale", 	
							state: "submitted")

Ticket.create(id: "3", 
							submit_by: "Archimedes",
							title: "Password reset is not working!!", 
							body: "I have tried everything and I am not able to recall, nor reset my password in the system",
							tracker: "support", 					
							severity: "urgent", 	
							assignee: " ", 	
							state: "assigned")

Ticket.create(id: "4", 
							submit_by: "Eratosthenes",
							title: "Deleting photo once in events timeline", 
							body: "Unable to delete the photograph once it is set into an events timeline",
							tracker: "bug", 					
							severity: "normal", 	
							assignee: "Mallory Knox", 	
							state: "submitted")

Ticket.create(id: "5", 
							submit_by: "Sir Isaac Newton",							
							title: "Post events follow up", 
							body: "Maybe add a post events follow up to be triggered by a set future time for clients to upload video to thank all guests",
							tracker: "feature", 					
							severity: "low", 	
							assignee: "Jack Scagnetti", 	
							state: "accepted")


