<div align="center">



  ![image](http://www.thebluediamondgallery.com/handwriting/images/inventory.jpg)
  
# INVENTORY APP 
  This application was built as a requirement for an open internship position (Backend Developer) at ![image](https://img.shields.io/badge/shopify-8DB543?style=for-the-badge&logo=Shopify&logoColor=white). This application was submitted on May 18th, 2022 and will be simultaneously hosted on ![Replit](https://img.shields.io/badge/Replit-DD1200?style=for-the-badge&logo=Replit&logoColor=white) for convenience - [Found Here](https://replit.com/@GregFlaherty/shopifybackendinternshipFall22?v=1).  This README will provide further information on [how to use this application](#using-this-application), [how this application was built](#workflow) and [further information about the author](#author) 
    
  ## Table of Contents

  ### [Using this application :memo:](#using-this-application)
  ### [Functionality :mechanical_arm::robot:](#functionality)
  ### [Testing :microscope:](#testing)
  ### [Workflow ![image](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](#workflow)
  ### [Author :raising_hand_man:](#author)
  ### [Built With :building_construction:](#built-with)

# USING THIS APPLICATION

  
<div align="left">
 :one: Fork and clone this repo <br><br>
 :two: Install gems locally via <b>bundle install</b> from CL <br><br>
 :three: Reset database via <b>rails db:{drop,create,migrate,seed} </b> from CL <br><br>
 :four: Start server via <b>rails s </b> from CL <br><br> 
 :five: Manuever the site as you wish  <br><br>
 :six: (Optional) Run  <b>bundle exec rspec </b> from CL to run the entire test suite <br><br> 
 :seven: (Optional) Run  <b>open/coverage index.html </b> from CL to see coverage by line <br>  
</div>
 
  

  # FUNCTIONALITY
  
  This application accomplishes the basic CRUD functionality 
  
  ### CREATE 
  ![Screen Shot 2022-05-17 at 9 59 47 PM](https://user-images.githubusercontent.com/87443686/168941694-8b43bf74-521c-4c7c-8ea1-9c34fe0ff7a4.png)

  ### READ 
  ![Screen Shot 2022-05-17 at 10 00 56 PM](https://user-images.githubusercontent.com/87443686/168941850-8fc1a813-ee72-4a99-960b-dd90512113d1.png)

  ### UPDATE
  ![Screen Shot 2022-05-17 at 10 02 55 PM](https://user-images.githubusercontent.com/87443686/168942047-78856cf7-a5a5-4649-8222-eb16ccbbeb23.png)
  ![Screen Shot 2022-05-17 at 10 03 38 PM](https://user-images.githubusercontent.com/87443686/168942098-d91e6f12-12b0-4b98-a924-a026f6a3beb7.png)

  ### DESTROY 
  ![Screen Shot 2022-05-17 at 10 07 29 PM](https://user-images.githubusercontent.com/87443686/168942518-7f31fe72-4505-4bf8-965e-b6b5ac04f548.png)
  
  ### FUN TIP
  
  Try entering blank information or other ways to break the application to see what happens ! :stuck_out_tongue_winking_eye:
  
  ### DATABASE
  
  This application uses a relational database. There are two tables in total - items and warehouse. Items belong to a warehouse while a warehouse has many items (one to many relationship). See below for a representation of the database schema : <br><br>
![Screen Shot 2022-05-17 at 9 54 11 PM](https://user-images.githubusercontent.com/87443686/168941153-bb68fe49-3f8f-4b9d-a37a-132c22dc60ca.png)

 
# TESTING
  
  This application was thoroughly testing using Rspec, SimpleCov, Capybara and Shoulda Matchers. Test coverage was held in high priority and can be seen in detail by following the following steps: <br><br>
  
<div align="left">
 :one: Run  <b>bundle exec rspec </b> from CL to run the entire test suite <br><br>
  
  ![Screen Shot 2022-05-18 at 12 16 07 PM](https://user-images.githubusercontent.com/87443686/169091954-6f578d8f-5530-4407-9957-52e487152adf.png)

  <br>
 :two: Run  <b>open/coverage index.html </b> from CL to see coverage by line <br><br>  
</div>

  ![Screen Shot 2022-05-18 at 12 17 45 PM](https://user-images.githubusercontent.com/87443686/169092194-677b18e8-e923-4ad1-a70d-6d187bc57108.png)

  <br>
  All testing files can be found the Spec folder displayed by the following file tree: <br><br>
  
  
![Screen Shot 2022-05-18 at 12 19 27 PM](https://user-images.githubusercontent.com/87443686/169093352-c98a4705-9464-46ef-98a2-352fcc33d366.png)

  
 # WORKFLOW


Professional work flow using <img src="https://img.shields.io/badge/GIT-E44C30?style=for-the-badge&logo=git&logoColor=white" /> and ![image](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white) were replicated as closely as possible. Specific tools and aspects were used while building this application that lended to organization, communication and developer empathy.<br>
  
  ### GITHUB PROJECT BOARDS <br>
![Screen Shot 2022-05-17 at 10 23 16 PM](https://user-images.githubusercontent.com/87443686/168944303-fe25ee8c-b13b-4585-ab04-ad321d4cf74e.png)
![Screen Shot 2022-05-17 at 10 05 48 AM](https://user-images.githubusercontent.com/87443686/168944626-86ec77a9-b6e4-4d3d-9233-ddf662726b54.png)

  ### LINKED ISSUES/PULL REQUESTS <br>
  ![Screen Shot 2022-05-17 at 10 28 25 PM](https://user-images.githubusercontent.com/87443686/168944816-f7e6ea1b-4101-4cb8-94ce-2b8f4ac4e3db.png)

# AUTHOR

If any ideas for improvement, any errors are seen, or if you are interested in building something in the future, please feel free to contact me directly via any of the below avenues:<br><br> 
[![Linkedin Badge](https://img.shields.io/badge/-GregFlaherty-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/gregoryjflaherty/)](https://www.linkedin.com/in/gregoryjflaherty/) 
[![Gmail Badge](https://img.shields.io/badge/-gregoryjflaherty@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:gregoryjflaherty@gmail.com)](mailto:gregoryjflaherty@gmail.com)
  
  [![github-readme-twitter](https://github-readme-twitter.gazf.vercel.app/api?id=gregjflaherty)](https://github.com/gazf/github-readme-twitter)
  
# BUILT WITH
  
  
 ### Ruby version 2.7.4
 ### Rails version 5.2.7
  
 Hosted on ![Replit](https://img.shields.io/badge/Replit-DD1200?style=for-the-badge&logo=Replit&logoColor=white) <br>
 [Found Here](https://replit.com/@GregFlaherty/shopifybackendinternshipFall22?v=1) 
  
  <img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white" />  <img src="https://img.shields.io/badge/Markdown-000000?style=for-the-badge&logo=markdown&logoColor=white" /> <img src="https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white" /> <img src="https://img.shields.io/badge/Atom-66595C?style=for-the-badge&logo=Atom&logoColor=white" /> <img src="https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white" /> <img src="https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white" /> <img src="https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white" /> <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white" />   <img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white" />           
  
#### :gem: Additional Gems :gem:
Capybara |
Shoulda Matchers |
SimpleCov |
Faker |
<br><br>


</div>
