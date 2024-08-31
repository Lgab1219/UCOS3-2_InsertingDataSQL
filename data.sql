-- Inserting data into USERS table

INSERT INTO Users (UserID, Username, FirstName, LastName, DateOfBirth, Password, DateAdded)
VALUES 
(1, 'fbreyt0', 'Florrie', 'Breyt', '2002-07-29', 'dK2%Z/9SX4PC', '2000-10-31'),
(2, 'aalexandrescu1', 'Alejoa', 'Alexandrescu', '2002-03-01', 'bT0"j*Ji', '2004-12-01'),
(3, 'pspurritt2', 'Peyter', 'Spurritt', '2001-12-01', 'xN7"p8zrjF|4#', '2002-08-16'),
(4, 'rtenbrug3', 'Rowena', 'Tenbrug', '2003-01-10', 'jB3$ke*djRg', '2001-03-28'),
(5, 'kgalletley4', 'Katrine', 'Galletley', '2004-05-08', 'rH2"2}I+RXOk!~I', '2002-05-14'),
(6, 'tpyne5', 'Temp', 'Pyne', '2003-07-04', 'yY0<jc/!ZdS8#', '2003-11-10'),
(7, 'ncouzens6', 'Niki', 'Couzens', '2005-05-04', 'iA9}4m(q?&4', '2003-01-06'),
(8, 'fmarkwell7', 'Ford', 'Markwell', '2001-05-27', 'pU7=@ga(7|<eHz$a', '2004-09-13'),
(9, 'afolds8', 'Alexa', 'Folds', '2002-03-09', 'pG9>dNEKFn@', '2000-12-02'),
(10, 'raguirre9', 'Rollin', 'Aguirre', '2002-01-26', 'wJ1_7f@j9/', '2002-11-15');


-- Inserting data into POSTS table

INSERT INTO Posts (PostID, PostDescription, PostedBy, isPublic, isOnlyForFriends, GroupID, DatePosted)
VALUES 
(5755835055, 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 3, TRUE, FALSE, 2, '2001-12-02'),
(2265893803, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 6, TRUE, FALSE, 2, '2001-08-07'),
(5829872315, 'Nunc purus.', 1, FALSE, TRUE, 7, '2002-07-28'),
(895931818, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.', 6, TRUE, TRUE, 4, '2002-06-06'),
(8629264098, 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 9, TRUE, FALSE, 4, '2002-05-08'),
(4331448061, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', 8, TRUE, TRUE, 6, '2005-10-11'),
(5822367038, 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', 4, FALSE, TRUE, 7, '2003-11-18'),
(6997390285, 'Aliquam erat volutpat.', 3, TRUE, TRUE, 8, '2000-07-01'),
(3447822694, 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.', 1, FALSE, TRUE, 8, '2000-04-29'),
(6299314443, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 5, TRUE, FALSE, 10, '2000-12-20');


-- Inserting data into the GROUPS table

INSERT INTO Groups (GroupID, GroupName, CreatedBy, DateAdded) VALUES
(1, 'porta', 1, '6/5/2002'),
(2, 'maecenas ut', 2, '2/12/2002'),
(3, 'ultrices phasellus', 3, '12/17/2003'),
(4, 'vestibulum', 4, '9/22/2003'),
(5, 'viverra eget', 5, '10/8/2000'),
(6, 'eros vestibulum', 6, '5/24/2001'),
(7, 'eget', 7, '3/12/2001'),
(8, 'non ligula', 8, '4/13/2005'),
(9, 'justo', 9, '6/26/2003'),
(10, 'pede', 10, '11/8/2000');


-- Inserting data into GroupMembershipRequests table

INSERT INTO GroupMembershipRequests (GroupMemberShipRequestsID, GroupID, GroupMemberUserID, IsGroupMemberShipAccepted, DateAccepted) VALUES
(1244131601, 1, 8, TRUE, '11/20/2005'),
(9072232879, 2, 2, FALSE, '11/27/2005'),
(18172652, 3, 3, FALSE, '11/2/2000'),
(973407794, 4, 3, TRUE, '1/7/2000'),
(431608679,	5, 2, FALSE, '7/29/2004'),
(4392970582, 6, 5, FALSE, '6/18/2002'),
(4470067865, 7, 5, FALSE, '5/7/2001'),
(1595134336, 8, 7, TRUE, '3/5/2003'),
(3162717299, 9, 7, FALSE, '8/8/2002'),
(8375570885, 10, 8, FALSE, '9/25/2004');


-- Inserting data into the FRIENDS Table

INSERT INTO Friends (FriendID, FriendWhoAdded, FriendBeingAdded, IsAccepted, DateAdded) VALUES
(1, 10, 2, FALSE, '2/7/2005'),
(2, 5, 9, TRUE, '1/24/2005'),
(3, 5, 2, TRUE, '5/24/2004'),
(4, 8, 6, FALSE, '1/8/2001'),
(5, 1, 4, TRUE, '2/4/2003'),
(6, 2, 4, FALSE, '5/14/2005'),
(7, 10, 9, FALSE, '6/14/2005'),
(8, 6, 9, FALSE, '3/14/2002'),
(9, 2, 8, TRUE, '12/10/2002'),
(10, 10, 5, TRUE, '3/21/2002');

