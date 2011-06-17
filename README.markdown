# PostMachine
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
- Templates
    - Use template inheritance (`ApplicationControlle.prepend_view_path`)

###### (for PostMachine users)

- Full-text search
- Templates
    - Upload a ZIP file
