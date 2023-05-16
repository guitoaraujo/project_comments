mark = User.create(email: 'mark@frontend.com', password: '123456')
anna = User.create(email: 'anna@backend.com', password: '123456')
gabi = User.create(email: 'gabi@productowner.com', password: '123456')

project = Project.create(name: 'Our First Project', status: :backlog, user: gabi)

Comment.create(text: 'Ok, welcome! This is the project we have to deliver. Just a CRUD for Project and a way to comment on it.', user: gabi, project: project)
Comment.create(text: 'Should we use bootstrap?', user: mark, project: project)
Comment.create(text: 'No, just simple html!', user: gabi, project: project)
Comment.create(text: 'Ok, np!', user: mark, project: project)
Comment.create(text: 'I will set the status to developing. Go go go', user: gabi, project: project)

ProjectStatusHistory.create(project_id: project.id, user_id: gabi.id, status: 'developing')

Comment.create(text: 'Just created first models and validations.', user: anna, project: project)
Comment.create(text: 'Login logout is working now :D', user: anna, project: project)
Comment.create(text: 'First forms are done', user: mark, project: project)
Comment.create(text: 'Comment field are done', user: mark, project: project)
Comment.create(text: 'Status history looks ok.', user: anna, project: project)
Comment.create(text: 'Any issues that I can helper with?', user: gabi, project: project)
Comment.create(text: 'No, we are good.', user: anna, project: project)
Comment.create(text: 'Just made some html changes', user: mark, project: project)
Comment.create(text: 'maybe we should run some basic tests', user: mark, project: project)
Comment.create(text: 'Sure', user: anna, project: project)
Comment.create(text: 'Ok then. Testing...', user: gabi, project: project)

ProjectStatusHistory.create(project_id: project.id, user_id: gabi.id, status: 'testing')

Comment.create(text: 'That is good enough guys, thanks. I will come back soon with proper details for this.', user: gabi, project: project)
Comment.create(text: 'Cool.', user: anna, project: project)
Comment.create(text: 'lets use Tailwind', user: mark, project: project)
Comment.create(text: 'i will try to add Rspec...', user: anna, project: project)
