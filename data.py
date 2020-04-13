import re
#find是转换前的文件，outpu是你转换后的文件
find = open('jyj_oa.sql', 'r', encoding='utf-8')
output = open('jyj_oa_data_out.sql', 'w+', encoding='utf-8')
lines = find.readlines()
new_lines = []
# print(lines)
state = False

# #大小写转换
def toupper(m):
    val = " \""+m.group(1).upper()+"\".\""+m.group(2).upper()+"\" "
    return val
for i in range(len(lines)):
    # re.sub才能够匹配正则，replace只能替换字符串
    lines[i-1] = re.sub(r' \"(.*)\"\.\"([a-z0-9A-Z_]+)\" ', toupper, lines[i-1])
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
