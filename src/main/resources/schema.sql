
    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        dob date,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        student_system_id varchar(8) not null,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255) not null,
        father_name_english varchar(255) not null,
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255) not null,
        name_english varchar(255) not null,
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer not null,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer not null,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer not null,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer not null,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer not null,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer not null,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id bigint not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        gender_id bigint,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id bigint not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        gender_id bigint,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id bigint not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        gender_id bigint,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        gender_section_id bigint,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id bigint not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        gender_id bigint,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        gender_section_id bigint,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id bigint not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        gender_id bigint,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        gender_section_id bigint,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id bigint not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        gender_id bigint,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        gender_section_id bigint,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id bigint not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        gender_id bigint,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        gender_section_id bigint,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id bigint not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        gender_id bigint,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        gender_section_id bigint,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id bigint not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        gender_id bigint,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        gender_section_id bigint,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id bigint not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        gender_id bigint,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        gender_section_id bigint,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id bigint not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        gender_id bigint,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        gender_section_id bigint,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id bigint not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        gender_id bigint,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        gender_section_id bigint,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id bigint not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        gender_id bigint,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        gender_section_id bigint,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id bigint not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        gender_id bigint,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        gender_section_id bigint,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id bigint not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        gender_id bigint,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        gender_section_id bigint,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id bigint not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        gender_id bigint,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        gender_section_id bigint,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id bigint not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        gender_id bigint,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        gender_section_id bigint,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id bigint not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        gender_id bigint,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        gender_section_id bigint,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id bigint not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        is_active bit,
        gender_id bigint,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        gender_section_id bigint,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table class 
       add constraint FKr12rb947caqrajqojncq9u13e 
       foreign key (student_group_id) 
       references student_group (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        image_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_image (
        id integer not null auto_increment,
        is_active bit not null,
        created_at datetime(6) not null,
        student_id bigint,
        image_url varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKse1dwvle8vv4s7xkbbgnlrujl unique (image_id);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table class 
       add constraint FKr12rb947caqrajqojncq9u13e 
       foreign key (student_group_id) 
       references student_group (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FK3mj171x5jc8w95ou3s0s2dffm 
       foreign key (image_id) 
       references student_image (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    alter table student_image 
       add constraint FK3adf39jlvd22l48hlhekhy670 
       foreign key (student_id) 
       references student (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        image_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_image (
        id integer not null auto_increment,
        is_active bit not null,
        created_at datetime(6) not null,
        student_id bigint,
        image_url varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKse1dwvle8vv4s7xkbbgnlrujl unique (image_id);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table class 
       add constraint FKr12rb947caqrajqojncq9u13e 
       foreign key (student_group_id) 
       references student_group (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FK3mj171x5jc8w95ou3s0s2dffm 
       foreign key (image_id) 
       references student_image (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    alter table student_image 
       add constraint FK3adf39jlvd22l48hlhekhy670 
       foreign key (student_id) 
       references student (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        order_index integer,
        shift_id integer,
        student_group_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        image_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_image (
        id integer not null auto_increment,
        is_active bit not null,
        created_at datetime(6) not null,
        student_id bigint,
        image_url varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKse1dwvle8vv4s7xkbbgnlrujl unique (image_id);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table class 
       add constraint FKr12rb947caqrajqojncq9u13e 
       foreign key (student_group_id) 
       references student_group (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FK3mj171x5jc8w95ou3s0s2dffm 
       foreign key (image_id) 
       references student_image (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    alter table student_image 
       add constraint FK3adf39jlvd22l48hlhekhy670 
       foreign key (student_id) 
       references student (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        order_index integer,
        shift_id integer,
        student_group_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        image_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_image (
        id integer not null auto_increment,
        is_active bit not null,
        created_at datetime(6) not null,
        student_id bigint,
        image_url varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKse1dwvle8vv4s7xkbbgnlrujl unique (image_id);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table class 
       add constraint FKr12rb947caqrajqojncq9u13e 
       foreign key (student_group_id) 
       references student_group (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FK3mj171x5jc8w95ou3s0s2dffm 
       foreign key (image_id) 
       references student_image (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    alter table student_image 
       add constraint FK3adf39jlvd22l48hlhekhy670 
       foreign key (student_id) 
       references student (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        order_index integer,
        shift_id integer,
        student_group_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        academic_year_id integer,
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        image_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_image (
        id integer not null auto_increment,
        is_active bit not null,
        created_at datetime(6) not null,
        student_id bigint,
        image_url varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKse1dwvle8vv4s7xkbbgnlrujl unique (image_id);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table class 
       add constraint FKr12rb947caqrajqojncq9u13e 
       foreign key (student_group_id) 
       references student_group (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKh5f0bgab3sr85l35el8vjk0xm 
       foreign key (academic_year_id) 
       references academic_year (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FK3mj171x5jc8w95ou3s0s2dffm 
       foreign key (image_id) 
       references student_image (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    alter table student_image 
       add constraint FK3adf39jlvd22l48hlhekhy670 
       foreign key (student_id) 
       references student (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        order_index integer,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class_student_group (
        class_id integer not null,
        student_group_id integer not null,
        primary key (class_id, student_group_id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        academic_year_id integer,
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        image_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_image (
        id integer not null auto_increment,
        is_active bit not null,
        created_at datetime(6) not null,
        student_id bigint,
        image_url varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKse1dwvle8vv4s7xkbbgnlrujl unique (image_id);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table class_student_group 
       add constraint FK1r6r51b0cir9uh2856bt4bb57 
       foreign key (student_group_id) 
       references student_group (id);

    alter table class_student_group 
       add constraint FKqrdwnejesthguoxp9a7vevvwl 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKh5f0bgab3sr85l35el8vjk0xm 
       foreign key (academic_year_id) 
       references academic_year (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FK3mj171x5jc8w95ou3s0s2dffm 
       foreign key (image_id) 
       references student_image (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    alter table student_image 
       add constraint FK3adf39jlvd22l48hlhekhy670 
       foreign key (student_id) 
       references student (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        order_index integer,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class_student_group (
        class_id integer not null,
        student_group_id integer not null,
        primary key (class_id, student_group_id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        academic_year_id integer,
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        image_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_image (
        id integer not null auto_increment,
        is_active bit not null,
        created_at datetime(6) not null,
        student_id bigint,
        image_url varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKse1dwvle8vv4s7xkbbgnlrujl unique (image_id);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table class_student_group 
       add constraint FK1r6r51b0cir9uh2856bt4bb57 
       foreign key (student_group_id) 
       references student_group (id);

    alter table class_student_group 
       add constraint FKqrdwnejesthguoxp9a7vevvwl 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKh5f0bgab3sr85l35el8vjk0xm 
       foreign key (academic_year_id) 
       references academic_year (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FK3mj171x5jc8w95ou3s0s2dffm 
       foreign key (image_id) 
       references student_image (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    alter table student_image 
       add constraint FK3adf39jlvd22l48hlhekhy670 
       foreign key (student_id) 
       references student (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        order_index integer,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class_student_group (
        class_id integer not null,
        student_group_id integer not null,
        primary key (class_id, student_group_id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        academic_year_id integer,
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        image_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_image (
        id integer not null auto_increment,
        is_active bit not null,
        created_at datetime(6) not null,
        student_id bigint,
        image_url varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKse1dwvle8vv4s7xkbbgnlrujl unique (image_id);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table class_student_group 
       add constraint FK1r6r51b0cir9uh2856bt4bb57 
       foreign key (student_group_id) 
       references student_group (id);

    alter table class_student_group 
       add constraint FKqrdwnejesthguoxp9a7vevvwl 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKh5f0bgab3sr85l35el8vjk0xm 
       foreign key (academic_year_id) 
       references academic_year (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FK3mj171x5jc8w95ou3s0s2dffm 
       foreign key (image_id) 
       references student_image (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    alter table student_image 
       add constraint FK3adf39jlvd22l48hlhekhy670 
       foreign key (student_id) 
       references student (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        order_index integer,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class_student_group (
        class_id integer not null,
        student_group_id integer not null,
        primary key (class_id, student_group_id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        academic_year_id integer,
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        image_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_image (
        id integer not null auto_increment,
        is_active bit not null,
        created_at datetime(6) not null,
        student_id bigint,
        image_url varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKse1dwvle8vv4s7xkbbgnlrujl unique (image_id);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table class_student_group 
       add constraint FK1r6r51b0cir9uh2856bt4bb57 
       foreign key (student_group_id) 
       references student_group (id);

    alter table class_student_group 
       add constraint FKqrdwnejesthguoxp9a7vevvwl 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKh5f0bgab3sr85l35el8vjk0xm 
       foreign key (academic_year_id) 
       references academic_year (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FK3mj171x5jc8w95ou3s0s2dffm 
       foreign key (image_id) 
       references student_image (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    alter table student_image 
       add constraint FK3adf39jlvd22l48hlhekhy670 
       foreign key (student_id) 
       references student (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        order_index integer,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class_student_group (
        class_id integer not null,
        student_group_id integer not null,
        primary key (class_id, student_group_id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        academic_year_id integer,
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        image_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_image (
        id integer not null auto_increment,
        is_active bit not null,
        created_at datetime(6) not null,
        student_id bigint,
        image_url varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKse1dwvle8vv4s7xkbbgnlrujl unique (image_id);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table class_student_group 
       add constraint FK1r6r51b0cir9uh2856bt4bb57 
       foreign key (student_group_id) 
       references student_group (id);

    alter table class_student_group 
       add constraint FKqrdwnejesthguoxp9a7vevvwl 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKh5f0bgab3sr85l35el8vjk0xm 
       foreign key (academic_year_id) 
       references academic_year (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FK3mj171x5jc8w95ou3s0s2dffm 
       foreign key (image_id) 
       references student_image (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    alter table student_image 
       add constraint FK3adf39jlvd22l48hlhekhy670 
       foreign key (student_id) 
       references student (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        order_index integer,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class_student_group (
        class_id integer not null,
        student_group_id integer not null,
        primary key (class_id, student_group_id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        academic_year_id integer,
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        image_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_image (
        id integer not null auto_increment,
        is_active bit not null,
        created_at datetime(6) not null,
        student_id bigint,
        image_url varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKse1dwvle8vv4s7xkbbgnlrujl unique (image_id);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table class_student_group 
       add constraint FK1r6r51b0cir9uh2856bt4bb57 
       foreign key (student_group_id) 
       references student_group (id);

    alter table class_student_group 
       add constraint FKqrdwnejesthguoxp9a7vevvwl 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKh5f0bgab3sr85l35el8vjk0xm 
       foreign key (academic_year_id) 
       references academic_year (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FK3mj171x5jc8w95ou3s0s2dffm 
       foreign key (image_id) 
       references student_image (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    alter table student_image 
       add constraint FK3adf39jlvd22l48hlhekhy670 
       foreign key (student_id) 
       references student (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        order_index integer,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class_student_group (
        class_id integer not null,
        student_group_id integer not null,
        primary key (class_id, student_group_id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        academic_year_id integer,
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        image_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_image (
        id integer not null auto_increment,
        is_active bit not null,
        created_at datetime(6) not null,
        student_id bigint,
        image_url varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKse1dwvle8vv4s7xkbbgnlrujl unique (image_id);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table class_student_group 
       add constraint FK1r6r51b0cir9uh2856bt4bb57 
       foreign key (student_group_id) 
       references student_group (id);

    alter table class_student_group 
       add constraint FKqrdwnejesthguoxp9a7vevvwl 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKh5f0bgab3sr85l35el8vjk0xm 
       foreign key (academic_year_id) 
       references academic_year (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FK3mj171x5jc8w95ou3s0s2dffm 
       foreign key (image_id) 
       references student_image (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    alter table student_image 
       add constraint FK3adf39jlvd22l48hlhekhy670 
       foreign key (student_id) 
       references student (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        order_index integer,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class_student_group (
        class_id integer not null,
        student_group_id integer not null,
        primary key (class_id, student_group_id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        academic_year_id integer,
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        image_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_image (
        id integer not null auto_increment,
        is_active bit not null,
        created_at datetime(6) not null,
        student_id bigint,
        image_url varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKse1dwvle8vv4s7xkbbgnlrujl unique (image_id);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table class_student_group 
       add constraint FK1r6r51b0cir9uh2856bt4bb57 
       foreign key (student_group_id) 
       references student_group (id);

    alter table class_student_group 
       add constraint FKqrdwnejesthguoxp9a7vevvwl 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKh5f0bgab3sr85l35el8vjk0xm 
       foreign key (academic_year_id) 
       references academic_year (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FK3mj171x5jc8w95ou3s0s2dffm 
       foreign key (image_id) 
       references student_image (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    alter table student_image 
       add constraint FK3adf39jlvd22l48hlhekhy670 
       foreign key (student_id) 
       references student (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        order_index integer,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class_student_group (
        class_id integer not null,
        student_group_id integer not null,
        primary key (class_id, student_group_id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        academic_year_id integer,
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        image_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_image (
        id integer not null auto_increment,
        is_active bit not null,
        created_at datetime(6) not null,
        student_id bigint,
        image_url varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKse1dwvle8vv4s7xkbbgnlrujl unique (image_id);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table class_student_group 
       add constraint FK1r6r51b0cir9uh2856bt4bb57 
       foreign key (student_group_id) 
       references student_group (id);

    alter table class_student_group 
       add constraint FKqrdwnejesthguoxp9a7vevvwl 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKh5f0bgab3sr85l35el8vjk0xm 
       foreign key (academic_year_id) 
       references academic_year (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FK3mj171x5jc8w95ou3s0s2dffm 
       foreign key (image_id) 
       references student_image (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    alter table student_image 
       add constraint FK3adf39jlvd22l48hlhekhy670 
       foreign key (student_id) 
       references student (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        order_index integer,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class_student_group (
        class_id integer not null,
        student_group_id integer not null,
        primary key (class_id, student_group_id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        academic_year_id integer,
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        image_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_image (
        id integer not null auto_increment,
        is_active bit not null,
        created_at datetime(6) not null,
        student_id bigint,
        image_url varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKse1dwvle8vv4s7xkbbgnlrujl unique (image_id);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table class_student_group 
       add constraint FK1r6r51b0cir9uh2856bt4bb57 
       foreign key (student_group_id) 
       references student_group (id);

    alter table class_student_group 
       add constraint FKqrdwnejesthguoxp9a7vevvwl 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKh5f0bgab3sr85l35el8vjk0xm 
       foreign key (academic_year_id) 
       references academic_year (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FK3mj171x5jc8w95ou3s0s2dffm 
       foreign key (image_id) 
       references student_image (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    alter table student_image 
       add constraint FK3adf39jlvd22l48hlhekhy670 
       foreign key (student_id) 
       references student (id);

    create table academic_year (
        id integer not null auto_increment,
        is_active bit,
        year_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class (
        id integer not null auto_increment,
        is_active bit,
        order_index integer,
        shift_id integer,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table class_student_group (
        class_id integer not null,
        student_group_id integer not null,
        primary key (class_id, student_group_id)
    ) engine=InnoDB;

    create table gender (
        id integer not null auto_increment,
        is_active bit,
        gender varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table gender_section (
        id integer not null auto_increment,
        gender_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table group_subject (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table section (
        class_id integer not null,
        gender_id integer,
        is_active bit,
        id bigint not null auto_increment,
        section_name varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table shift (
        id integer not null auto_increment,
        is_active bit,
        name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student (
        academic_year_id integer,
        class_id integer,
        class_roll integer,
        dob date,
        gender_id integer,
        gender_section_id integer,
        image_id integer,
        is_active bit,
        shift_id integer,
        student_group_id integer,
        student_status_id integer,
        id bigint not null auto_increment,
        section_id bigint,
        current_district varchar(255),
        current_holding_no varchar(255),
        current_road_or_village varchar(255),
        current_thana varchar(255),
        father_monthly_salary varchar(255),
        father_name_bangla varchar(255),
        father_name_english varchar(255),
        father_occupation varchar(255),
        father_phone varchar(255),
        guardian_monthly_salary varchar(255),
        guardian_name_bangla varchar(255),
        guardian_name_english varchar(255),
        guardian_occupation varchar(255),
        guardian_phone varchar(255),
        mother_monthly_salary varchar(255),
        mother_name_bangla varchar(255),
        mother_name_english varchar(255),
        mother_occupation varchar(255),
        mother_phone varchar(255),
        name_bangla varchar(255),
        name_english varchar(255),
        nationality varchar(255),
        permanent_district varchar(255),
        permanent_holding_no varchar(255),
        permanent_road_or_village varchar(255),
        permanent_thana varchar(255),
        student_system_id varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_group (
        id integer not null auto_increment,
        is_active bit,
        group_name varchar(255),
        primary key (id)
    ) engine=InnoDB;

    create table student_image (
        id integer not null auto_increment,
        is_active bit not null,
        created_at datetime(6) not null,
        student_id bigint,
        image_url varchar(255) not null,
        primary key (id)
    ) engine=InnoDB;

    create table student_status (
        id integer not null auto_increment,
        status_name varchar(50) not null,
        primary key (id)
    ) engine=InnoDB;

    alter table gender_section 
       add constraint UKcj8mhj9n01pglh47fg6irbu1y unique (gender_name);

    alter table student 
       add constraint UKse1dwvle8vv4s7xkbbgnlrujl unique (image_id);

    alter table student 
       add constraint UKnk1lut8d4qplj0hgjp4m4gr3n unique (student_system_id);

    alter table student_status 
       add constraint UKhp4wxyk7deyc2u7d67eqng1qo unique (status_name);

    alter table class 
       add constraint FKsv8g4iaxs8f691iu6ka8aylmu 
       foreign key (shift_id) 
       references shift (id);

    alter table class_student_group 
       add constraint FK1r6r51b0cir9uh2856bt4bb57 
       foreign key (student_group_id) 
       references student_group (id);

    alter table class_student_group 
       add constraint FKqrdwnejesthguoxp9a7vevvwl 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK8l8i27bhro0d5mjvx6xgw1w4m 
       foreign key (class_id) 
       references class (id);

    alter table section 
       add constraint FK4fsqdy9d5nh1isbjwm7kegsiq 
       foreign key (gender_id) 
       references gender_section (id);

    alter table student 
       add constraint FKh5f0bgab3sr85l35el8vjk0xm 
       foreign key (academic_year_id) 
       references academic_year (id);

    alter table student 
       add constraint FKd2qb7etol4a1hl6quhu3cuhkl 
       foreign key (gender_id) 
       references gender (id);

    alter table student 
       add constraint FK9u3ydv8oxq9w8akq5y4x1adnq 
       foreign key (gender_section_id) 
       references gender_section (id);

    alter table student 
       add constraint FK3mj171x5jc8w95ou3s0s2dffm 
       foreign key (image_id) 
       references student_image (id);

    alter table student 
       add constraint FKj1c0de75pterue04btw6w5mh8 
       foreign key (section_id) 
       references section (id);

    alter table student 
       add constraint FKn157l87fsox6g7grjyeey8vg9 
       foreign key (shift_id) 
       references shift (id);

    alter table student 
       add constraint FKdwhkib64u47wc4yo4hk0cub90 
       foreign key (class_id) 
       references class (id);

    alter table student 
       add constraint FKovvvn9ce56xur7ws8bfdobr7d 
       foreign key (student_group_id) 
       references student_group (id);

    alter table student 
       add constraint FK97ct4ft54qpyq3hyvcst99j40 
       foreign key (student_status_id) 
       references student_status (id);

    alter table student_image 
       add constraint FK3adf39jlvd22l48hlhekhy670 
       foreign key (student_id) 
       references student (id);
