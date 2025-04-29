CREATE TABLE sys_attendance_report (
    id BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '主键',
    employee_id VARCHAR(50) NOT NULL COMMENT '工号',
    report_date DATE NOT NULL COMMENT '统计日期',
    work_days INT NOT NULL COMMENT '应出勤天数',
    actual_days INT NOT NULL COMMENT '实际出勤天数',
    late_times INT NOT NULL`sys_attendance_report``sys_attendance``sys_attendance_report``sys_employee``sys_attendance` COMMENT '迟到次数',
    early_times INT NOT NULL COMMENT '早退次数',
    absent_days INT NOT NULL COMMENT '缺勤天数',
    total_hours BIGINT NOT NULL COMMENT '总工作时长（秒）',
    remark VARCHAR(255) DEFAULT NULL COMMENT '备注'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='考勤月报表';
