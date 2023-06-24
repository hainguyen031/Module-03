USE quanlybanhang;
INSERT INTO customer
VALUES (1, 'Minh Quan', 10),
       (2, 'Ngoc Oanh', 20),
       (3, 'Hong Ha', 50);

INSERT INTO `order` (oID, cID, oDATE)
VALUES (1, 1, '2006-03-21'),
       (2, 2, '2006-03-23'),
       (3, 1, '2006-03-16');

INSERT INTO product (pNAME, pPRICE)
VALUES ('May Giat', 3),
       ('Tu Lanh', 5),
       ('Dieu Hoa', 7),
       ('Quat', 1),
       ('Bep Dien', 2);

INSERT INTO order_detail(oID, pID, odQTY)
VALUES (1, 1, 3),
       (1, 3, 7),
       (1, 4, 2),
       (2, 1, 1),
       (3, 1, 8),
       (2, 5, 4),
       (2, 3, 3);

SELECT oID, oDATE, oTotalPrice
FROM `order`;

SELECT c.cNAME, p.pNAME
FROM order_detail od
JOIN `order` o ON o.oID = od.oID
JOIN product p ON p.pID = od.pID
JOIN customer c ON c.cID = o.cID;

SELECT c.cNAME, o.oID
FROM customer c
JOIN `order` o on c.cID = o.cID
WHERE o.oID is null;

SELECT o.oID, o.oDATE, SUM(p.pPRICE * od.odQTY)
FROM `order` o
JOIN order_detail od on o.oID = od.oID
JOIN product p on p.pID = od.pID
GROUP BY od.oID;