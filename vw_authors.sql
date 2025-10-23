CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `vw_authors` AS
    SELECT 
        `users`.`user_id` AS `user_id`,
        `users`.`username` AS `username`,
        `users`.`email` AS `email`,
        CONCAT(`users`.`first_name`,
                ' ',
                `users`.`last_name`) AS `author_name`,
        `users`.`affiliation` AS `affiliation`
    FROM
        `users`
    WHERE
        ((`users`.`role` = 'author')
            OR (`users`.`role` = 'admin'))
