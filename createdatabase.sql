-- Bảng Users (Người dùng)
CREATE TABLE Users (
    user_id INT IDENTITY(1,1) PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role INT NOT NULL,
    registration_date DATE NOT NULL
);

-- Bảng Categories (Danh mục)
CREATE TABLE Categories (
    category_id INT IDENTITY(1,1) PRIMARY KEY,
    category_name NVARCHAR(255) NOT NULL,
    creation_date DATE NOT NULL
);

-- Bảng Places (Nơi)
CREATE TABLE Places (
    place_id INT IDENTITY(1,1) PRIMARY KEY,
    place_name NVARCHAR(255) NOT NULL,
    user_id INT,
    category_id INT,
    place_img NVARCHAR(255),
    place_description NVARCHAR(MAX),
    place_summary NVARCHAR(MAX),
    creation_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- Bảng Reviews (Đánh giá)
CREATE TABLE Reviews (
    review_id INT IDENTITY(1,1) PRIMARY KEY,
    place_id INT,
    user_id INT,
    rating DECIMAL(3, 2) NOT NULL,
    comment NVARCHAR(MAX),
    review_date DATE NOT NULL,
    FOREIGN KEY (place_id) REFERENCES Places(place_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);



-- Chèn 10 giá trị vào bảng Users
INSERT INTO Users (username, password, role, registration_date)
VALUES
    ('user1', 'password1', 1, '2023-10-01'),
    ('user2', 'password2', 1, '2023-10-02'),
    ('user3', 'password3', 1, '2023-10-03'),
    ('user4', 'password4', 1, '2023-10-04'),
    ('user5', 'password5', 1, '2023-10-05'),
    ('admin1', 'adminpass1', 2, '2023-10-06'),
    ('admin2', 'adminpass2', 2, '2023-10-07'),
    ('admin3', 'adminpass3', 2, '2023-10-08'),
    ('admin4', 'adminpass4', 2, '2023-10-09'),
    ('admin5', 'adminpass5', 2, '2023-10-10');

-- Chèn 10 giá trị vào bảng Categories
INSERT INTO Categories (category_name, creation_date)
VALUES
    ('Category 1', '2023-10-01'),
    ('Category 2', '2023-10-02'),
    ('Category 3', '2023-10-03'),
    ('Category 4', '2023-10-04'),
    ('Category 5', '2023-10-05'),
    ('Category 6', '2023-10-06'),
    ('Category 7', '2023-10-07'),
    ('Category 8', '2023-10-08'),
    ('Category 9', '2023-10-09'),
    ('Category 10', '2023-10-10');

-- Chèn 10 giá trị vào bảng Places
INSERT INTO Places (place_name, user_id, category_id, place_img, place_description, place_summary, creation_date)
VALUES
    ('Place 1', 1, 1, 'place1.jpg', 'Description 1', 'Summary 1', '2023-10-01'),
    ('Place 2', 2, 2, 'place2.jpg', 'Description 2', 'Summary 2', '2023-10-02'),
    ('Place 3', 3, 3, 'place3.jpg', 'Description 3', 'Summary 3', '2023-10-03'),
    ('Place 4', 4, 4, 'place4.jpg', 'Description 4', 'Summary 4', '2023-10-04'),
    ('Place 5', 5, 5, 'place5.jpg', 'Description 5', 'Summary 5', '2023-10-05'),
    ('Place 6', 6, 6, 'place6.jpg', 'Description 6', 'Summary 6', '2023-10-06'),
    ('Place 7', 7, 7, 'place7.jpg', 'Description 7', 'Summary 7', '2023-10-07'),
    ('Place 8', 8, 8, 'place8.jpg', 'Description 8', 'Summary 8', '2023-10-08'),
    ('Place 9', 9, 9, 'place9.jpg', 'Description 9', 'Summary 9', '2023-10-09'),
    ('Place 10', 10, 10, 'place10.jpg', 'Description 10', 'Summary 10', '2023-10-10');

-- Chèn 10 giá trị vào bảng Reviews
INSERT INTO Reviews (place_id, user_id, rating, comment, review_date)
VALUES
    (1, 1, 4.5, 'Great place!', '2023-10-01'),
    (2, 2, 3.8, 'Good experience.', '2023-10-02'),
    (3, 3, 5.0, 'Amazing location.', '2023-10-03'),
    (4, 4, 4.2, 'Nice view.', '2023-10-04'),
    (5, 5, 3.7, 'Could be better.', '2023-10-05'),
    (6, 6, 4.9, 'Exceptional!', '2023-10-06'),
    (7, 7, 4.0, 'Lovely spot.', '2023-10-07'),
    (8, 8, 3.5, 'Not bad.', '2023-10-08'),
    (9, 9, 4.7, 'Outstanding.', '2023-10-09'),
    (10, 10, 3.9, 'Decent place.', '2023-10-10');
