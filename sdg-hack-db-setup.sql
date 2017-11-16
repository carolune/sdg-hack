##
# sdg-hack-db-setup.sql
#
# dotastronomy 9 hack
#
# Please beware that this code does not check if stuff exists already.
# This code is not meant to be used as is but to provide guidance as
# to how to set up a database to be used in this tool/visualisation

CREATE DATABASE sdg_hack;
# GRANT PRIVILEGES ACCORDING TO LOCAL SERVER

# The tables below are mock data for illustration purposes and to fit into
# a quick sankey diagram.
# The DB structure will be amended to be more useable and so will the sankey code.

CREATE TABLE nodes
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	n_id INT NOT NULL,
	name TEXT NOT NULL
);

CREATE TABLE links
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	source INT, target INT, value INT
);

# example data

INSERT INTO nodes (n_id, name) VALUES
	(0, "Astronomy"),
	(1, "Biology"),
	(2, "Physics"),
	(3, "Earth Science"),
	(4, "Education Research"),
	(5, "Sociology"),
	(6, "Economics"),
	(7, "Gender and sexuality studies"),
	(8, "Big data and coding"),
	(9, "Behaviour change"),
	(10, "Outreach network"),
	(11, "Distributed sensor networks"),
	(12, "Image processing"),
	(13, "Statistics"),
	(14, "Data skills workshop"),
	(15, "Twitter bots"),
	(16, "EPO"),
	(17, "MOOCs"),
	(18, "Climate modeling"),
	(19, "Hack days"),
	(20, "GOAL 1: No Poverty"),
	(21, "GOAL 2: Zero Hunger"),
	(22, "GOAL 3: Good Health and Well-being"),
	(23, "GOAL 4: Quality Education"),
	(24, "GOAL 5: Gender Equality"),
	(25, "GOAL 6: Clean Water and Sanitation"),
	(26, "GOAL 7: Affordable and Clean Energy"),
	(27, "GOAL 8: Decent Work and Economic Growth"),
	(28, "GOAL 9: Industry, Innovation and Infrastructure"),
	(29, "GOAL 10: Reduced Inequality"),
	(30, "GOAL 11: Sustainable Cities and Communities"),
	(31, "GOAL 12: Responsible Consumption and Production"),
	(32, "GOAL 13: Climate Action"),
	(33, "GOAL 14: Life Below Water"),
	(34, "GOAL 15: Life on Land"),
	(35, "GOAL 16: Peace and Justice Strong Institutions"),
	(36, "GOAL 17: Partnerships to achieve the Goal");

INSERT INTO links (source, target, value) VALUES
	(0, 8, 1), (0, 10, 1), (0, 12, 1), (0, 13, 1), (1, 8, 1), (1, 12, 1), (1, 13, 1),
	(2, 8, 1), (2, 10, 1), (2, 12, 1), (2, 13, 1), (3, 8, 1), (3, 9, 1), (3, 10, 1),
	(3, 11, 1), (3, 13, 1), (4, 9, 1), (4, 10, 1), (4, 13, 1), (5, 9, 1), (5, 13, 1),
	(6, 8, 1), (6, 9, 1), (6, 13, 1), (7, 9, 1), (7, 10, 1), (7, 13, 1);



