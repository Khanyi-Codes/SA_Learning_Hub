INSERT INTO phase(   name, display_order )
VALUES ('Foundation', 1),
    ('Intermediate', 2),
     ('Senior', 3),
     ('FET', 4)


INSERT INTO grade( name, display_order, phase_id)
VALUES ("Grade R",1, (SELECT id FROM phase WHERE name = "Foundation"));
