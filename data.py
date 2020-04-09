import re
#find是转换前的文件，outpu是你转换后的文件
find = open('xxbs_jiegou.sql', 'r', encoding='utf-8')
output = open('xxbs_jiegou_out.sql', 'w+', encoding='utf-8')
lines = find.readlines()
new_lines = []
# print(lines)
state = False


# 匹配数据插入语句
for line in lines:
    if "INSERT INTO" in line:
        state = True
    if state:
        new_lines.append(line)
    if ");\n" in line:
        state = False

# 写入到输出文件
for line in new_lines:
    output.write(line)

output.close()
find.close()
