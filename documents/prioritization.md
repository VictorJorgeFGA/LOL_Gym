# Prioritization

In this project, prioritization was done by applying the [_MoSCoW_](https://en.wikipedia.org/wiki/MoSCoW_method) technique. The _MoSCoW_ technique categorizes each spotted requirements into one of these categories:

#### Must
> The requirement must be satisfied for the solution to be considered a success.

#### Should
> The requirement is very important and should be included in the solution if possible.

#### Could
> The requirement is a desirable capability, but one that could be eliminated if there are no resources left to include it.

#### Wont't (or even Wish)
> The requirement is desirable but it is not going to be included at this time.

## Results

Considering this project purpose, the prioritization activity uses only the 3 first categories, i.e., _must_, _should_, and _could_. Each decision was made according to the developer's judgment. That judgment is done by answering two questions about every requirement: 
- Not covering this requirement results in a project failure? If "yes", then it falls into the _must_ category, move to the next question otherwise.
- Worth it to spend precious time implementing this requirement, i.e. does that increase significantly the product quality? If "yes", then it falls into the _should_ category, it falls into the _could_ category otherwise.

For each category, there is a table containing its correspondent requirements. This document may be changed over time.

### Must
| ID  | Requirement |
| :-: | :------: |
| 1 | The user can create a personal account on the blog. |
| 14 | The user has a unique nickname on the blog |
| 16 | The admin can delete any comment from any user. |
| 17 | The admin can archive any comment from any user. |
| 18 | The admin can archive any article from any user. |
| 19 | The admin can delete any article from any user. |
| 20 | The admin can register and update a champion. |
| 21 | The admin can register and update an item. |
| 22 | The admin can register and update a game update. |
| 23 | The admin can register and update a game route. |
| 24 | The admin can register and update a game mode. |
| 25 | The admin can register and update the blog's policies and rules. |
| 27 | The admin can prevent a user from interacting with the blog for a period of time (banishment). |
| 30 | The admin can suspend a user's account permanently. |
| 31 | A punishment is associated with a unique admin. |
| 32 | Only the admin can see who applied a punishment to a user. |
| 33 | The blog has a news section. |
| 34 |  The blog has a game updates section. |
| 35 |  The blog has a champions guide section. |
| 36 |  The blog has a routes guide section. |
| 37 |  The blog has an items guide section. |
| 38 |  The blog has a game modes guide section. |
| 39 |  The blog has a policy and rules section. |
| 40 |  The blog has a staff section. |
| 42 |  The staff section has a subsection that shows all applied punishments. |
| 43 | Only the admin can write news articles. |
| 44 | Only the admin can write game update articles. |
| 45 | Only the admin can write new champion articles. |
| 46 | Only the admin can write new item articles. |
| 47 | Only the admin can write new game route articles. |
| 48 | Only the admin can write new game mode articles. |
| 49 | The user can write champion guide articles. |
| 50 | The user can write route guide articles. |
| 51 | The user can write game mode guide articles. |
| 52 | The user can write item guide articles. |
| 58 | The user can edit their own articles |
| 59 | The user can delete their own articles. |
| 60 | The user can add a comment to an article. |
| 61 | The user can give a thumbs up to a comment |
| 62 | The user can give a thumbs down to a comment |
| 64 | The user can delete their comment |
| 66 | The article's author can disable the comments section |
| 69 | The notification alert doesn't cause the user to be annoyed. |
| 82 | The interface has a text editor. |
| 93 | The user can search for champion guide articles by searching for the champion name. |


### Should
| ID  | Requirement |
| :-: | :------: |
| 2 | The user can associate their League of Legends account with their blog account. |
| 5 | The user has a profile page associated with their account on the blog. |
| 6 | The user's profile page has an optional field for their biography. |
| 7 | The user's profile page shows the user's tier badge. |
| 9 | The user has a followers list. |
| 10 | The user has a list of users which they follow. |
| 11 | The user's profile page shows how many followers the user has |
| 12 | The user's profile page shows how many users the user follows |
| 13 | The user's profile page shows the articles written by the user |
| 15 | The user has a profile picture |
| 26 | The admin can check all reports. |
| 28 | The admin must associate proof (comment, article, inappropriate profile picture, etc.) with a banishment. |
| 29 | The user can check their punishment history. |
| 41 |  The staff section has a subsection that shows all reports. |
| 55 | The user can give a "thumbs up" to an article. |
| 63 | The user can reply to a comment |
| 65 | The user can report a comment |
| 67 | The blog has a notifications menu |
| 68 | The user receives a notification pop-up when a new notification arrives |
| 70 | The user gets a notification when someone gives a thumbs up on their article. |
| 71 | The user gets a notification when someone adds a comment to their article. |
| 73 | The user gets a notification when someone replies to their comment |
| 74 | The user gets a notification when someone starts to follow them. |
| 76 | The user gets a notification when they are punished. |
| 77 | The user can disable the notifications from their comment. |
| 78 | The user can disable the notifications from their article. |
| 79 | The notification has a link to its origin. |
| 83 | The text editor allows section creation inside the article body. |
| 84 | The text editor allows link insertion inside the article body (links to items, routes, champions, etc.). |
| 85 | The text editor allows image upload. |
| 86 | The text editor allows external link insertion. |
| 87 | The news section displays all the news in non-increasing order of creation. |
| 92 | The champion guide section shows all articles ordered by the number of thumbs up in non-increasing order. |
| 94 | The user can filter guide articles list by the author nickname. |


### Could
| ID  | Requirement |
| :-: | :------: |
| 4 | The user can choose from which ranked mode they will receive their tier badge (solo/duo, clash, flex, etc.). |
| 8 | The user's profile page shows the user's account creation date. |
| 53 | Every guide article shows the latest game update covered. |
| 54 | Every guide article that doesn't cover an update that affects one of its subjects is tagged as outdated. |
| 56 | The user's tier badge is shown on their articles. |
| 57 | The user can add, and remove champion, item, route, and game mode tags on their guide articles.  |
| 72 | The user gets a notification when someone gives a thumbs up on their comment. |
| 75 | The user gets a notification when their guide article is tagged as outdated. |
| 80 | The interface has a minimalist style. |
| 81 | The articles' font is pleasant for reading. |
| 88 | The user can search for a new using words that belong to its body or title. |
| 89 | The user can order the news in increasing order or non-increasing order of creation. |
| 90 | The user can order the news by the number of comments in increasing or non-increasing order. |
| 91 | The user can order the news by the number of thumbs up in increasing or non-increasing order. |
| 95 | The user can filter guide articles list by the author tier. |
| 96 | The user can filter guide articles list by the number of comments |
| 97 | The user can filter guide articles list by the patch covered. |

## References

Karl Wiegers and Joy Beatty. Software Requirements, Third Edition.