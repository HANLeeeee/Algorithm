n, k = map(int,input().split()) # N과 K를 입력 받음

count = 0 # count 는 0으로 초기화
for i in range(n+1): # 0 ~ n 까지의 시간을 담당
    if i < 10: # i가 10보다 작은 경우,
        pi = '0'+str(i) # string에 0을 붙이고 pi에 넣기, 예 05
    else: # 그렇지 않은 경우,
        pi = str(i) # string을 pi에 넣기
    for j in range(60): # 0~59 까지의 분을 담당
        if j < 10: # j가 10보다 작은 경우,
            pj = '0'+str(j) # string에 0을 붙이고 pj에 넣기, 예 05
        else: # 그렇지 않은 경우,
            pj = str(j) # string을 pj에 넣기
        for t in range(60): # 0~59 까지의 초를 담당
            if t < 10: # t가 10보다 작은 경우,
                pt = '0'+str(t) # string에 0을 붙이고 pt에 넣기, 예 05
            else: # 그렇지 않은 경우,
                pt = str(t) # string을 pt에 넣기
            if str(k) in pi + pj +pt: # 최종적으로 k가 string pi pj pt 에 있는지 확인,
                count += 1 # 있다면 count 를 1 증가시킴

print(count) # 결과 출력