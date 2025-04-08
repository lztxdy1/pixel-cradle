CREATE TABLE pixel_media (
  media_id          BIGINT(20)      NOT NULL AUTO_INCREMENT    COMMENT '媒体ID',
  user_id           BIGINT(20)      DEFAULT 0                  COMMENT '用户ID',
  file_path         VARCHAR(255)    DEFAULT ''                COMMENT '文件存储路径',
  file_type         CHAR(1)         DEFAULT '0'               COMMENT '文件类型（0照片 1视频）',
  file_name         VARCHAR(100)    DEFAULT ''                COMMENT '文件名称',
  tags              VARCHAR(255)    DEFAULT ''                COMMENT '标签（逗号分隔）',
  visibility        CHAR(1)         DEFAULT '0'               COMMENT '可见性（0私有 1家庭 2公开）',
  upload_time       DATETIME                                  COMMENT '上传时间',
  status            CHAR(1)         DEFAULT '0'               COMMENT '状态（0正常 1禁用）',
  del_flag          CHAR(1)         DEFAULT '0'               COMMENT '删除标志（0代表存在 2代表删除）',
  create_by         VARCHAR(64)     DEFAULT ''                COMMENT '创建者',
  create_time       DATETIME                                  COMMENT '创建时间',
  update_by         VARCHAR(64)     DEFAULT ''                COMMENT '更新者',
  update_time       DATETIME                                  COMMENT '更新时间',
  PRIMARY KEY (media_id)
) ENGINE=InnoDB AUTO_INCREMENT=1000 COMMENT = '媒体表';

CREATE TABLE pixel_album (
  album_id          BIGINT(20)      NOT NULL AUTO_INCREMENT    COMMENT '相册ID',
  user_id           BIGINT(20)      DEFAULT 0                  COMMENT '用户ID',
  album_name        VARCHAR(30)     DEFAULT ''                COMMENT '相册名称',
  description       VARCHAR(255)    DEFAULT ''                COMMENT '相册描述',
  order_num         INT(4)          DEFAULT 0                 COMMENT '显示顺序',
  status            CHAR(1)         DEFAULT '0'               COMMENT '状态（0正常 1禁用）',
  del_flag          CHAR(1)         DEFAULT '0'               COMMENT '删除标志（0代表存在 2代表删除）',
  create_by         VARCHAR(64)     DEFAULT ''                COMMENT '创建者',
  create_time       DATETIME                                  COMMENT '创建时间',
  update_by         VARCHAR(64)     DEFAULT ''                COMMENT '更新者',
  update_time       DATETIME                                  COMMENT '更新时间',
  PRIMARY KEY (album_id)
) ENGINE=InnoDB AUTO_INCREMENT=200 COMMENT = '相册表';


CREATE TABLE pixel_media_album (
  id                BIGINT(20)      NOT NULL AUTO_INCREMENT    COMMENT '关系ID',
  media_id          BIGINT(20)      DEFAULT 0                  COMMENT '媒体ID',
  album_id          BIGINT(20)      DEFAULT 0                  COMMENT '相册ID',
  create_by         VARCHAR(64)     DEFAULT ''                COMMENT '创建者',
  create_time       DATETIME                                  COMMENT '创建时间',
  update_by         VARCHAR(64)     DEFAULT ''                COMMENT '更新者',
  update_time       DATETIME                                  COMMENT '更新时间',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=300 COMMENT = '媒体与相册关系表';


CREATE TABLE pixel_milestone (
  milestone_id      BIGINT(20)      NOT NULL AUTO_INCREMENT    COMMENT '里程碑ID',
  user_id           BIGINT(20)      DEFAULT 0                  COMMENT '用户ID',
  milestone_name    VARCHAR(30)     DEFAULT ''                COMMENT '里程碑名称',
  milestone_date    DATE                                      COMMENT '里程碑日期',
  description       VARCHAR(255)    DEFAULT ''                COMMENT '描述',
  status            CHAR(1)         DEFAULT '0'               COMMENT '状态（0正常 1禁用）',
  del_flag          CHAR(1)         DEFAULT '0'               COMMENT '删除标志（0代表存在 2代表删除）',
  create_by         VARCHAR(64)     DEFAULT ''                COMMENT '创建者',
  create_time       DATETIME                                  COMMENT '创建时间',
  update_by         VARCHAR(64)     DEFAULT ''                COMMENT '更新者',
  update_time       DATETIME                                  COMMENT '更新时间',
  PRIMARY KEY (milestone_id)
) ENGINE=InnoDB AUTO_INCREMENT=400 COMMENT = '里程碑表';

CREATE TABLE pixel_media_milestone (
  id                BIGINT(20)      NOT NULL AUTO_INCREMENT    COMMENT '关系ID',
  media_id          BIGINT(20)      DEFAULT 0                  COMMENT '媒体ID',
  milestone_id      BIGINT(20)      DEFAULT 0                  COMMENT '里程碑ID',
  create_by         VARCHAR(64)     DEFAULT ''                COMMENT '创建者',
  create_time       DATETIME                                  COMMENT '创建时间',
  update_by         VARCHAR(64)     DEFAULT ''                COMMENT '更新者',
  update_time       DATETIME                                  COMMENT '更新时间',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=500 COMMENT = '媒体与里程碑关系表';

CREATE TABLE pixel_family_member (
  member_id         BIGINT(20)      NOT NULL AUTO_INCREMENT    COMMENT '成员ID',
  user_id           BIGINT(20)      DEFAULT 0                  COMMENT '主用户ID',
  member_email      VARCHAR(50)     DEFAULT ''                COMMENT '成员邮箱',
  role              CHAR(1)         DEFAULT '0'               COMMENT '角色（0查看者 1编辑者）',
  status            CHAR(1)         DEFAULT '0'               COMMENT '状态（0正常 1禁用）',
  del_flag          CHAR(1)         DEFAULT '0'               COMMENT '删除标志（0代表存在 2代表删除）',
  create_by         VARCHAR(64)     DEFAULT ''                COMMENT '创建者',
  create_time       DATETIME                                  COMMENT '创建时间',
  update_by         VARCHAR(64)     DEFAULT ''                COMMENT '更新者',
  update_time       DATETIME                                  COMMENT '更新时间',
  PRIMARY KEY (member_id)
) ENGINE=InnoDB AUTO_INCREMENT=600 COMMENT = '家庭成员表';

CREATE TABLE pixel_growth_data (
  data_id           BIGINT(20)      NOT NULL AUTO_INCREMENT    COMMENT '数据ID',
  user_id           BIGINT(20)      DEFAULT 0                  COMMENT '用户ID',
  record_date       DATE                                      COMMENT '记录日期',
  height            DECIMAL(5,2)    DEFAULT NULL              COMMENT '身高（厘米）',
  weight            DECIMAL(5,2)    DEFAULT NULL              COMMENT '体重（公斤）',
  other_data        VARCHAR(255)    DEFAULT ''                COMMENT '其他数据（JSON格式）',
  status            CHAR(1)         DEFAULT '0'               COMMENT '状态（0正常 1禁用）',
  del_flag          CHAR(1)         DEFAULT '0'               COMMENT '删除标志（0代表存在 2代表删除）',
  create_by         VARCHAR(64)     DEFAULT ''                COMMENT '创建者',
  create_time       DATETIME                                  COMMENT '创建时间',
  update_by         VARCHAR(64)     DEFAULT ''                COMMENT '更新者',
  update_time       DATETIME                                  COMMENT '更新时间',
  PRIMARY KEY (data_id)
) ENGINE=InnoDB AUTO_INCREMENT=700 COMMENT = '成长数据表';

CREATE TABLE pixel_reminder (
  reminder_id       BIGINT(20)      NOT NULL AUTO_INCREMENT    COMMENT '提醒ID',
  user_id           BIGINT(20)      DEFAULT 0                  COMMENT '用户ID',
  reminder_date     DATE                                      COMMENT '提醒日期',
  reminder_type     CHAR(1)         DEFAULT '0'               COMMENT '提醒类型（0系统 1自定义）',
  description       VARCHAR(255)    DEFAULT ''                COMMENT '提醒描述',
  status            CHAR(1)         DEFAULT '0'               COMMENT '状态（0正常 1禁用）',
  del_flag          CHAR(1)         DEFAULT '0'               COMMENT '删除标志（0代表存在 2代表删除）',
  create_by         VARCHAR(64)     DEFAULT ''                COMMENT '创建者',
  create_time       DATETIME                                  COMMENT '创建时间',
  update_by         VARCHAR(64)     DEFAULT ''                COMMENT '更新者',
  update_time       DATETIME                                  COMMENT '更新时间',
  PRIMARY KEY (reminder_id)
) ENGINE=InnoDB AUTO_INCREMENT=800 COMMENT = '提醒表';

CREATE TABLE pixel_feedback (
  feedback_id       BIGINT(20)      NOT NULL AUTO_INCREMENT    COMMENT '反馈ID',
  user_id           BIGINT(20)      DEFAULT 0                  COMMENT '用户ID',
  content           TEXT                                      COMMENT '反馈内容',
  status            CHAR(1)         DEFAULT '0'               COMMENT '状态（0未处理 1已处理）',
  del_flag          CHAR(1)         DEFAULT '0'               COMMENT '删除标志（0代表存在 2代表删除）',
  create_by         VARCHAR(64)     DEFAULT ''                COMMENT '创建者',
  create_time       DATETIME                                  COMMENT '创建时间',
  update_by         VARCHAR(64)     DEFAULT ''                COMMENT '更新者',
  update_time       DATETIME                                  COMMENT '更新时间',
  PRIMARY KEY (feedback_id)
) ENGINE=InnoDB AUTO_INCREMENT=900 COMMENT = '反馈表';

CREATE TABLE pixel_user (
  user_id           BIGINT(20)      NOT NULL AUTO_INCREMENT    COMMENT '用户ID',
  username          VARCHAR(50)     DEFAULT ''                COMMENT '用户名',
  password          VARCHAR(255)    DEFAULT ''                COMMENT '密码（加密存储）',
  email             VARCHAR(50)     DEFAULT NULL              COMMENT '邮箱',
  phone             VARCHAR(11)     DEFAULT NULL              COMMENT '联系电话',
  status            CHAR(1)         DEFAULT '0'               COMMENT '用户状态（0正常 1停用）',
  del_flag          CHAR(1)         DEFAULT '0'               COMMENT '删除标志（0代表存在 2代表删除）',
  create_by         VARCHAR(64)     DEFAULT ''                COMMENT '创建者',
  create_time       DATETIME                                  COMMENT '创建时间',
  update_by         VARCHAR(64)     DEFAULT ''                COMMENT '更新者',
  update_time       DATETIME                                  COMMENT '更新时间',
  PRIMARY KEY (user_id)
) ENGINE=InnoDB AUTO_INCREMENT=100 COMMENT = '用户表';