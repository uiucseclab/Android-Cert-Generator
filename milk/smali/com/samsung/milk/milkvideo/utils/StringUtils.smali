.class public Lcom/samsung/milk/milkvideo/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countRoundedToK(I)Ljava/lang/String;
    .locals 4
    .param p0, "count"    # I

    .prologue
    .line 86
    const/16 v1, 0x3e8

    if-lt p0, v1, :cond_1

    .line 87
    rem-int/lit16 v1, p0, 0x3e8

    div-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "decimal":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v2, p0, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "K"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    .end local v0    # "decimal":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 88
    .restart local v0    # "decimal":Ljava/lang/String;
    :cond_0
    const-string v1, "K"

    goto :goto_0

    .line 90
    .end local v0    # "decimal":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static countRoundedToM(I)Ljava/lang/String;
    .locals 4
    .param p0, "count"    # I

    .prologue
    const v3, 0xf4240

    .line 95
    if-lt p0, v3, :cond_1

    .line 96
    rem-int v1, p0, v3

    const v2, 0x186a0

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "decimal":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int v2, p0, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "M"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .end local v0    # "decimal":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 97
    .restart local v0    # "decimal":Ljava/lang/String;
    :cond_0
    const-string v1, "M"

    goto :goto_0

    .line 99
    .end local v0    # "decimal":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/samsung/milk/milkvideo/utils/StringUtils;->countRoundedToK(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static millisToHourMinSec(J)Ljava/lang/String;
    .locals 13
    .param p0, "millis"    # J

    .prologue
    const-wide/32 v6, 0x36ee80

    const-wide/32 v8, 0xea60

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 19
    div-long v0, p0, v6

    .line 20
    .local v0, "hours":J
    rem-long v6, p0, v6

    div-long v2, v6, v8

    .line 21
    .local v2, "mins":J
    rem-long v6, p0, v8

    const-wide/16 v8, 0x3e7

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 22
    .local v4, "secs":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 23
    const-string v6, "%d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 25
    :goto_0
    return-object v6

    :cond_0
    const-string v6, "%d:%02d"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static millisToHr(J)Ljava/lang/String;
    .locals 6
    .param p0, "millis"    # J

    .prologue
    .line 8
    const-wide/32 v2, 0x36ee7f

    add-long/2addr v2, p0

    const-wide/32 v4, 0x36ee80

    div-long v0, v2, v4

    .line 9
    .local v0, "hours":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "h ago"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static millisToMinSec(J)Ljava/lang/String;
    .locals 8
    .param p0, "millis"    # J

    .prologue
    const-wide/32 v4, 0xea60

    .line 13
    div-long v0, p0, v4

    .line 14
    .local v0, "mins":J
    rem-long v4, p0, v4

    const-wide/16 v6, 0x3e7

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 15
    .local v2, "secs":J
    const-string v4, "%d:%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static msToTimeRemaining(J)Ljava/lang/String;
    .locals 14
    .param p0, "millis"    # J

    .prologue
    const-wide/16 v12, 0xa

    const-wide/16 v10, 0x3c

    .line 73
    const-wide/16 v6, 0x3e8

    div-long v4, p0, v6

    .line 74
    .local v4, "seconds":J
    cmp-long v6, v4, v10

    if-gez v6, :cond_1

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    cmp-long v6, v4, v12

    if-gez v6, :cond_0

    const-string v6, "0"

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 82
    :goto_1
    return-object v6

    .line 75
    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 77
    :cond_1
    div-long v2, v4, v10

    .line 78
    .local v2, "minutes":J
    cmp-long v6, v2, v10

    if-gez v6, :cond_3

    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-long v8, v4, v10

    cmp-long v6, v8, v12

    if-gez v6, :cond_2

    const-string v6, "0"

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    rem-long v7, v4, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    const-string v6, ""

    goto :goto_2

    .line 81
    :cond_3
    div-long v0, v2, v10

    .line 82
    .local v0, "hours":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-long v8, v2, v10

    cmp-long v6, v8, v12

    if-gez v6, :cond_4

    const-string v6, "0"

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    rem-long v7, v2, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-long v8, v4, v10

    cmp-long v6, v8, v12

    if-gez v6, :cond_5

    const-string v6, "0"

    :goto_4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    rem-long v7, v4, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    const-string v6, ""

    goto :goto_3

    :cond_5
    const-string v6, ""

    goto :goto_4
.end method

.method public static secToTimeAgo(J)Ljava/lang/String;
    .locals 11
    .param p0, "seconds"    # J

    .prologue
    const-wide/32 v9, 0x15180

    const-wide/16 v7, 0xe10

    const-wide/16 v5, 0x3c

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 30
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 31
    const-string v0, "%s sec"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-wide/16 v0, 0x3b

    cmp-long v0, p0, v0

    if-gtz v0, :cond_1

    .line 34
    const-string v0, "%s secs"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_1
    const-wide/16 v0, 0x77

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    .line 38
    const-string v0, "%s min"

    new-array v1, v2, [Ljava/lang/Object;

    div-long v2, p0, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_2
    const-wide/16 v0, 0xe0f

    cmp-long v0, p0, v0

    if-gtz v0, :cond_3

    .line 41
    const-string v0, "%s mins"

    new-array v1, v2, [Ljava/lang/Object;

    div-long v2, p0, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_3
    const-wide/16 v0, 0x1c1f

    cmp-long v0, p0, v0

    if-gtz v0, :cond_4

    .line 45
    const-string v0, "%s hr"

    new-array v1, v2, [Ljava/lang/Object;

    div-long v2, p0, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_4
    const-wide/32 v0, 0x1517f

    cmp-long v0, p0, v0

    if-gtz v0, :cond_5

    .line 48
    const-string v0, "%s hrs"

    new-array v1, v2, [Ljava/lang/Object;

    div-long v2, p0, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_5
    const-wide/32 v0, 0x2a2ff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_6

    .line 52
    const-string v0, "%s day"

    new-array v1, v2, [Ljava/lang/Object;

    div-long v2, p0, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 54
    :cond_6
    const-wide/32 v0, 0x278cff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_7

    .line 55
    const-string v0, "%s days"

    new-array v1, v2, [Ljava/lang/Object;

    div-long v2, p0, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 58
    :cond_7
    const-wide/32 v0, 0x4f19ff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_8

    .line 59
    const-string v0, "%s month"

    new-array v1, v2, [Ljava/lang/Object;

    const-wide/32 v2, 0x278d00

    div-long v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 61
    :cond_8
    const-wide/32 v0, 0x1da9bff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_9

    .line 62
    const-string v0, "%s months"

    new-array v1, v2, [Ljava/lang/Object;

    const-wide/32 v2, 0x278d00

    div-long v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 65
    :cond_9
    const-wide/32 v0, 0x3b537ff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_a

    .line 66
    const-string v0, "%s year"

    new-array v1, v2, [Ljava/lang/Object;

    const-wide/32 v2, 0x1da9c00

    div-long v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 69
    :cond_a
    const-string v0, "%s years"

    new-array v1, v2, [Ljava/lang/Object;

    const-wide/32 v2, 0x1da9c00

    div-long v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static truncateCount(I)Ljava/lang/String;
    .locals 1
    .param p0, "count"    # I

    .prologue
    .line 104
    invoke-static {p0}, Lcom/samsung/milk/milkvideo/utils/StringUtils;->countRoundedToM(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
