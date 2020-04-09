import re

find = open('xxbs_jiegou.sql', 'r', encoding='utf-8')
output = open('xxbs_jiegou_out.sql', 'w+', encoding='utf-8')
lines = find.readlines()
new_lines = []
# print(lines)
state = False

# 替换数据字段类型映射：
# TIMESTAMP WITHOUT TIME ZONE 转化为 TIMESTAMP（6）
for i in range(len(lines)):
    # re.sub才能够匹配正则，replace只能替换字符串
    lines[i - 1] = re.sub(r'TIMESTAMP WITHOUT TIME ZONE', 'TIMESTAMP(6)', lines[i - 1])


# 替换自增字段：
# DEFAULT NEXTVAL('RISENOA_V2_JHSDYS_OA.oa_filenote_OA_FILENOTE_OAFN_UNID_SEQ'::REGCLASS) 转化为 无
# 默认值替换
def default_val(m):
    val = "DEFAULT " + m.group(1)
    return val


for i in range(len(lines)):
    # re.sub才能够匹配正则，replace只能替换字符串
    lines[i - 1] = re.sub(r'DEFAULT NEXTVAL(.*)SS\)', ' ', lines[i - 1])
    # lines[i-1] = re.sub(r'DEFAULT NULL::CHARACTER VARYING', ' ', lines[i - 1])
    lines[i - 1] = re.sub(r'DEFAULT(.*)::CHARACTER VARYING', default_val, lines[i - 1])
    # lines[i - 1] = re.sub(r'::CHARACTER VARYING ', ' ', lines[i - 1])
    lines[i - 1] = re.sub(r'::BPCHAR ', ' ', lines[i - 1])
# BIT(1) 转化为 BIT
for i in range(len(lines)):
    # re.sub才能够匹配正则，replace只能替换字符串
    lines[i - 1] = re.sub(r'BIT\(1\)', 'BIT', lines[i - 1])

# BYTEA 转化为 BINARY
for i in range(len(lines)):
    # re.sub才能够匹配正则，replace只能替换字符串
    lines[i - 1] = re.sub(r'BYTEA', 'BINARY', lines[i - 1])

# #大小写转换
# def toupper(m):
#     val = " \""+m.group(1).upper()+"\".\""+m.group(2).upper()+"\" "
#     return val
# for i in range(len(lines)):
#     # re.sub才能够匹配正则，replace只能替换字符串
#     lines[i-1] = re.sub(r' \"(.*)\"\.\"([a-z0-9A-Z_]+)\" ', toupper, lines[i-1])
for i in range(len(lines)):
    # re.sub才能够匹配正则，replace只能替换字符串
    lines[i - 1] = lines[i - 1].upper()

# 主键语法切换：
# 例子：
# ALTER TABLE ONLY "risen_jhsdys_xxbs"."CORE_DICT_APP"
# ADD CONSTRAINT "FK_CORE_DIC_REFERENCE_CORE_DIC" FOREIGN KEY (CRDTA_CRDCT_UUID)
# REFERENCES risen_jhsdys_xxbs.CORE_DICT(CRDCT_UUID);
# 转化为：
# ALTER TABLE  "risen_jhsdys_xxbs"."CORE_DICT_APP"
# ADD PRIMARY KEY ("CRDCT_UUID");
for i in range(len(lines)):
    # re.sub才能够匹配正则，replace只能替换字符串
    lines[i - 1] = re.sub(r'ADD CONSTRAINT \"(.*)\" PRIMARY KEY', "ADD PRIMARY KEY", lines[i - 1])

# 外键语法切换：
# 例子：
# ALTER TABLE ONLY "risen_jhsdys_xxbs"."CORE_DICT_APP"
# ADD CONSTRAINT "FK_CORE_DIC_REFERENCE_CORE_DIC" FOREIGN KEY (CRDTA_CRDCT_UUID)
# REFERENCES risen_jhsdys_xxbs.CORE_DICT(CRDCT_UUID);
# 转化为：
# ALTER TABLE  "risen_jhsdys_xxbs"."CORE_DICT_APP"
# ADD CONSTRAINT "FK_CORE_DIC_REFERENCE_CORE_DIC" FOREIGN KEY (CRDTA_CRDCT_UUID)
# REFERENCES risen_jhsdys_xxbs.CORE_DICT(CRDCT_UUID);
for i in range(len(lines)):
    # re.sub才能够匹配正则，replace只能替换字符串
    lines[i - 1] = re.sub(r'ALTER TABLE ONLY', "ALTER TABLE", lines[i - 1])

# for i in range(len(lines)):
#     # re.sub才能够匹配正则，replace只能替换字符串
#     lines[i] = re.sub(r'TIMESTAMP WITHOUT TIME ZONE', 'TIMESTAMP(6)', lines[i])


# 匹配建表语句
for line in lines:
    if "CREATE TABLE" in line:
        state = True
    if state:
        new_lines.append(line)
    if ";" in line:
        state = False

# 匹配注释语句
for line in lines:
    # if "COMMENT ON COLUMN" in line:
    #     new_lines.append(line)
    if "COMMENT ON COLUMN" in line:
        state = True
    if state:
        new_lines.append(line)
    if "';\n" in line:
        state = False

# 匹配外键新语句

for i in range(len(lines)):
    if "FOREIGN KEY" in lines[i - 1] or "PRIMARY KEY" in lines[i - 1]:
        new_lines.append(lines[i - 2])
        new_lines.append(lines[i - 1])


# 写入到输出文件
for line in new_lines:
    output.write(line)

output.close()
find.close()
