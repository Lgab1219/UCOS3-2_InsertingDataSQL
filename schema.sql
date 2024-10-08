-- Create Users Table
CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(50),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Password VARCHAR(255),
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Friends Table
CREATE TABLE Friends (
    FriendID INT AUTO_INCREMENT PRIMARY KEY,
    FriendWhoAdded INT,
    FriendBeingAdded INT,
    IsAccepted BOOLEAN,
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Create Groups Table
CREATE TABLE Groups (
    GroupID INT AUTO_INCREMENT PRIMARY KEY,
    GroupName VARCHAR(100),
    CreatedBy INT,
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Create Posts Table
CREATE TABLE Posts (
    PostID INT AUTO_INCREMENT PRIMARY KEY,
    PostDescription VARCHAR(255),
    PostedBy INT,
    IsPublic BOOLEAN,
    IsOnlyForFriends BOOLEAN,
    GroupID INT,
    DatePosted TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Group Membership Requests Table
CREATE TABLE GroupMembershipRequests (
    GroupMemberShipRequestsID INT AUTO_INCREMENT PRIMARY KEY,
    GroupID INT,
    GroupMemberUserID INT,
    IsGroupMemberShipAccepted BOOLEAN,
    DateAccepted TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);





-- Get all users with the date of birth staring from Jan 01, 2000 and Dec 31, 2004

SELECT * FROM Users WHERE DateOfBirth BETWEEN '2000/01/01' AND '2004/12/31';


-- Get all posts from user with ID of 4
SELECT * FROM Posts WHERE PostedBy = 4;


-- Select all group names from the group table
SELECT GroupName FROM Groups;


-- Selecting all membership requests made made by the user ID of 2

SELECT GroupMemberShipRequestsID, GroupID, IsGroupMemberShipAccepted, DateAccepted FROM GroupMembershipRequests WHERE GroupMemberUserID = 2;


-- Getting all added friends of user id 2

SELECT FriendID FROM Friends WHERE FriendWhoAdded = 2;
SELECT FriendID FROM Friends WHERE FriendBeingAdded = 2;


-- Selecting friends added by user id 1

SELECT FriendID, FriendWhoAdded, isAccepted FROM Friends WHERE FriendWhoAdded = 1;


-- Get all posts from only visible to group id 2
SELECT * FROM Posts WHERE GroupID = 2;


-- Get all group membership requests from group id 2 that are not visible
SELECT * FROM GroupMembershipRequests WHERE GroupID = 2 AND IsGroupMemberShipAccepted = FALSE;