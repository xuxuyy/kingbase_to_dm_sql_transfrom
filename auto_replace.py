import re

find = open('source.sql', 'r', encoding='utf-8')
output = open('dist.sql', 'w+', encoding='utf-8')
lines = find.readlines()
new_lines = []
grant_lines = []

# print(lines)
state = False

# 替换数据字段类型映射：
# TIMESTAMP WITHOUT TIME ZONE 转化为 TIMESTAMP（6）
# for i in range(len(lines)):
#     # re.sub才能够匹配正则，replace只能替换字符串
#     lines[i - 1] = re.sub(r'create user \"(.*)\" identified by \"\*\*\*\*\*\*\"', 'create user \"$1\" identified by \"$1\"', lines[i - 1])
for i in range(len(lines)):
    # re.sub才能够匹配正则，replace只能替换字符串
    # print(re.findall(r'\".+?\"',  lines[i - 1]))
    user_value =re.findall(r'\".+?\"',  lines[i - 1])
    if "create" in lines[i - 1]:
        lines[i - 1] = re.sub(r'create user \"(.*)\" identified by \"\*\*\*\*\*\*\"',
                          'create user ' + user_value[0] + ' identified by ' + user_value[0], lines[i - 1])
        grant_lines.append("grant \"PUBLIC\",\"RESOURCE\",\"VTI\" to " + user_value[0] +";\n")


# 匹配建表/用户语句
for line in lines:
    if "create" in line:
        state = True
    if state:
        new_lines.append(line)
    if ";" in line:
        state = False
# print(grant_lines)
# 写入到输出文件
for line in new_lines:
    output.write(line)

for line in grant_lines:
    output.write(line)

output.close()
find.close()