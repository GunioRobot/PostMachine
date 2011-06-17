                     ____             __  __  ___           __    _                     
                    / __ \____  _____/ /_/  |/  /___ ______/ /_  (_)___  ___            
          ______   / /_/ / __ \/ ___/ __/ /|_/ / __ `/ ___/ __ \/ / __ \/ _ \   ______  
         /_____/  / ____/ /_/ (__  ) /_/ /  / / /_/ / /__/ / / / / / / /  __/  /_____/  
     ______      /_/    \____/____/\__/_/  /_/\__,_/\___/_/ /_/_/_/ /_/\___/      ______
    /_____/                                                                      /_____/

## Rails 3.1 Blog Engine

_This project exists for my own learning purposes only_

    v0.1 = [notreleased] ===========================================================
    
    ================================================================================

### Features Outline

- Blog
    - MUST have a name
- Posts
    - MUST have a title
    - MUST have content (markdown)
    - MUST have customizable permalink
    - MUST have one or more Authors
    - MAY have one or more Comments
    - MAY have one or more Tags
    - MAY belong to one or more Categories
- Comments
    - MUST have content
- Post Series
    - MUST have one or more Posts
    - MAY have one or more Comments
    - MAY have one or more Tags (automatically from Post and more)
    - MAY belong to one or more Categories (automatically from Post and more)
- Authors
    - MUST have a name
    - MAY have an avatar (gravatar)
    - MAY have a description (bio)
- Categories
    - MUST have a name
- Tags
    - MUST have a name

### The Good Parts

###### (for my own dev learning)

- Acceptance tests with Steak
- Unit tests with RSpec
- JavaScript tests with Jasmine
- Nice, clean and simple HTML5 markup
- Templates
    - Use template inheritance (`ApplicationControlle.prepend_view_path`)

###### (for PostMachine users)

- Full-text search
- Templates
    - Upload a ZIP file
