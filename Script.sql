-- 创建员工表
CREATE TABLE IF NOT EXISTS `sys_employee` (
    `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
    `employee_id` varchar(32) NOT NULL COMMENT '工号',
    `name` varchar(50) NOT NULL COMMENT '姓名',
    `department` varchar(50) NOT NULL COMMENT '部门',
    `position` varchar(50) NOT NULL COMMENT '职位',
    `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
    `phone` varchar(20) DEFAULT NULL COMMENT '电话',
    `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态：0-离职，1-在职',
    `role` varchar(20) NOT NULL DEFAULT 'employee' COMMENT '角色：admin-管理员，employee-普通员工',
    `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`id`),
    UNIQUE KEY `uk_employee_id` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='员工表';


SELECT * FROM chakan;