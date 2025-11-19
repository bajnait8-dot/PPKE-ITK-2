# Making a next-gen tourism platform

My name is Kékesi Kristóf and I'm here to present my software as a service platform called Tivornya.

Tivornya is a next generation tourism platform. In a more meaningful way say it's a search engine for exhibitions, concerts, and all events that you can go to.

# Table of contents
Firstly I will explain the problems with current solutions, then cover the differences between them and Tivornya. My third topic will be about the technical details covering backend and frontend. Lastly I will show you the current state with future plans on the timeline.

# What's the problem with current platforms?
Current platforms only care about their partner's events, making their databases small. Often these sites have last minute calls making planning events for holidays difficult.

In most cases our competitors have outdated online presence making these sites harder to use and integrate to basic features like calendars, maps and ticket systems.

# What will I do better?
- Our solution has a bigger dataset compared to other Hungarian tourism platforms providing a broader palette of information to our customers.
- Our solution is built to be as modern as 2025 requires while focusing on providing more to our customers with visitor first features.

# Talk numbers
Tivornya is already beating competitors with 4300 datapoints in our databases with more than 1000 places and 600 artists across Hungary.

# Tech stack and infrastructure
## Frontend
- Next.js is a modern javascript framework providing basic features to make developing easier.
- Typescript and Zod is the base of compile and runtime type safety.
- Modified Tailwind css and shadcn/ui provides the design system for the frontend.

## Backend
- AWS S3 Buckets to store photos other files.
- AWS Elastic Load Balancer to balance incoming network requests.
- Kubernetes to quickly scale horizontally if too much traffic hits the service.

# Timeline
Tivornya is past the demo stage. This means that all important features are working perfectly, and some non critical features are not yet implemented, or has some problems.