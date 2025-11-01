INSERT INTO user (username, password)
VALUES
  ('test', 'pbkdf2:sha256:50000$TCI4GzcX$0de171a4f4dac32e3364c7ddc7c14f3e2fa61f2d17574483f7ffbb431b4acb2f'),
  ('other', 'pbkdf2:sha256:50000$kJPKsz6N$d2d4784f1b030a9761f5ccaeeaca413f27f2ecb76d6168407af962ddce849f79');

INSERT INTO post (title, body, author_id, created)
VALUES
  ('test title', 'test' || x'0a' || 'body', 1, '2018-01-01 00:00:00');



 
--   -- 向user表插入测试用户数据
-- INSERT INTO user (username, password)
-- VALUES
--   -- 插入第一个测试用户
--   -- 用户名为'test'
--   -- 密码是使用PBKDF2算法加密的'test'密码
--   -- 格式: pbkdf2:sha256:迭代次数$盐$哈希值
--   ('test', 'pbkdf2:sha256:50000$TCI4GzcX$0de171a4f4dac32e3364c7ddc7c14f3e2fa61f2d17574483f7ffbb431b4acb2f'),
  
--   -- 插入第二个测试用户
--   -- 用户名为'other'
--   -- 密码同样是使用PBKDF2算法加密的'test'密码（但使用不同的盐）
--   ('other', 'pbkdf2:sha256:50000$kJPKsz6N$d2d4784f1b030a9761f5ccaeeaca413f27f2ecb76d6168407af962ddce849f79');

-- -- 向post表插入测试帖子数据
-- INSERT INTO post (title, body, author_id, created)
-- VALUES
--   -- 插入一条测试帖子
--   (
--     'test title',  -- 帖子标题
--     'test' || x'0a' || 'body',  -- 帖子内容：'test' + 换行符(x'0a'是十六进制的换行符) + 'body'
--     1,  -- 作者ID，对应上面插入的第一个用户(test)
--     '2018-01-01 00:00:00'  -- 创建时间，固定为2018年1月1日
--   );