local a={}local b=require("/CC/Pages/APIPage/API")local c=require("/CC/Uteis/Uteis")local d=2;local e=1;MyColors={SUCCESS=colors.green,ERROR=colors.red,INFO=colors.yellow}function a.createFrame(f)local g,h=f:getSize()local i="Logs API Page"local j=string.len(i)local k=math.floor(g/2-j/2)local l=f:addFrame():setPosition(1,1):setSize("{parent.w}","{parent.h}")titleLabelVar=l:addLabel():setText(i):setPosition(k,2)local m=l:addScrollableFrame():setSize("{parent.w - 5}","{parent.h - 8}"):setPosition(2,5):setBackground(colors.black):setBorder(colors.white)statusLabel=l:addLabel():setText("STATUS"):setPosition(2,3)objects={title=titleLabelVar,statusLabel=statusLabel,logsFrame=m,size=m:getSize()}return f,l,objects,"API"end;function a.updateFrame(objects)local n=require("/CC/Uteis/Debug")debugFrame=n.debugFunc({})logs=b.getLogs(0)status=b.getStatus()objects.statusLabel:setText("STATUS = "..status)for o=e,#logs+3 do for p,q in pairs(logs[o])do for r,s in ipairs(c.breakString(q,objects.size-2))do objects.logsFrame:addLabel():setPosition(2,d):setText(s):setForeground(MyColors[p])d=d+1 end;objects.logsFrame:addLabel():setPosition(2,d):setText(""):setForeground(MyColors[p])d=d+1;e=e+1 end end end;return a