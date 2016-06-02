# Planning our application
1. Answer Questions
	- What are we building?
	- Who are we building it for?
	- What features do we need to have?
2. User stories
3. Model our Data
4. Think thorugh the pages we need in our app

## Questions

1. What are we building?
	We are buliding a personal site. A place where we can blog, share examples of our work, and have people contact us.
2. Who are we building it for?
	We are buliding it for ourselves, but also the community as a whole. Sharing what we are learning by blogging is a great way to learn for ourselves and we teach others in the process. Shows authority and expert in that field
3. What features do we want to have?
	- Posts
		- Create / Edit / Destroy
		- Markdown
		- Syntax highlighting
		- comments(Disqus)
	- Projects
		- Create / Edit / Destroy
	- Contact
		- Contact form
		- Sendgrid
	- User (Devise)
	
## User Stories
	Template: As a ____, I want to be able to ____, so that _____. 

	- As a user, I want to be able to create posts so that I can share what I am learning on my blog

	- As a user, I want to be able to edit & destroy posts, so that I can manage my blog.

	- As a user, I want to be able to write posts in markdown format so that it's easy for me to write posts

	- As a user, I want to be able to highlight the various syntax of code blocks that I share on my blog

	- As a user, I want to show the visitors examples of my work or stuff I've built

	- As a user, I want to be able to have visitors contact me through a form on my site

	- As a user, I want visitors be able to leave comments on my posts

## Model our Data

	**Post**
		title:string
		content:text
	
	**Project**
		title:string
		description:text
		link:string
	
	**User**
		- managed by Devise

## Think through the pages we need in our app

	- Home
	- Posts#index (list)
	- Posts#show (specific post)
	- Projects#index (list)
	- Projects#show (specific post)
	- Contact
	