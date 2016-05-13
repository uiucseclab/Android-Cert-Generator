.class public Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;
.super Ljava/lang/Object;
.source "xdex"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/common/errorreporting/crashcounter/CrashCounter$DefaultCalendarProvider;

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:I

.field private f:[J

.field private g:[I

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter$DefaultCalendarProvider;

    const/4 v1, 0x0

    invoke-direct {v0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter$DefaultCalendarProvider;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;-><init>(Landroid/content/Context;Lcom/facebook/common/errorreporting/crashcounter/CrashCounter$DefaultCalendarProvider;)V

    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/facebook/common/errorreporting/crashcounter/CrashCounter$DefaultCalendarProvider;)V
    .locals 3

    .prologue
    const/16 v2, 0x18

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->a:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->b:Lcom/facebook/common/errorreporting/crashcounter/CrashCounter$DefaultCalendarProvider;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".crash.count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->c:Ljava/lang/String;

    .line 68
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->f:[J

    .line 69
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->g:[I

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->h:Ljava/util/HashMap;

    .line 71
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter;)V
    .locals 4

    .prologue
    .line 59
    new-instance v0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;

    invoke-direct {v0, p0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;-><init>(Landroid/content/Context;)V

    .line 60
    .line 297
    invoke-virtual {p1}, Lcom/facebook/acra/ErrorReporter;->isNativeCrashedOnPreviousRun()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {v0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->a()V

    .line 299
    invoke-virtual {v0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->c()V

    .line 300
    invoke-virtual {v0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->b()V

    .line 302
    .line 61
    .line 288
    :cond_0
    const-string v1, "crash_counter"

    .line 308
    new-instance v3, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter$1;

    invoke-direct {v3, v0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter$1;-><init>(Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;)V

    move-object v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/facebook/acra/ErrorReporter;->putLazyCustomData(Ljava/lang/String;Lcom/facebook/acra/CustomReportDataSupplier;)V

    .line 291
    const-string v1, "crash_counter_24h"

    .line 326
    new-instance v3, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter$2;

    invoke-direct {v3, v0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter$2;-><init>(Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;)V

    move-object v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/facebook/acra/ErrorReporter;->putLazyCustomData(Ljava/lang/String;Lcom/facebook/acra/CustomReportDataSupplier;)V

    .line 294
    .line 62
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 118
    const-string v0, "crash_count"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 119
    const-string v1, "crash_count_24h"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 120
    const-string v2, "crash_count_timestamp_24h"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    .line 122
    iput v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->e:I

    .line 124
    if-eqz v1, :cond_1

    array-length v0, v1

    iget-object v3, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->g:[I

    array-length v3, v3

    if-ne v0, v3, :cond_1

    .line 125
    iget-object v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->g:[I

    iget-object v3, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->g:[I

    array-length v3, v3

    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    :goto_0
    if-eqz v2, :cond_2

    array-length v0, v2

    iget-object v1, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->f:[J

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 131
    iget-object v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->f:[J

    iget-object v1, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->f:[J

    array-length v1, v1

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    :goto_1
    iget-object v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 137
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_3

    .line 139
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    const-string v2, "flag_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {p1, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 143
    iget-object v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->h:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->g:[I

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->f:[J

    invoke-static {v0, v6, v7}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_1

    .line 147
    :cond_3
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 166
    const-string v0, "crash_count"

    iget v1, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    const-string v0, "crash_count_24h"

    iget-object v1, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->g:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 168
    const-string v0, "crash_count_timestamp_24h"

    iget-object v1, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->f:[J

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 170
    iget-object v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "flag_"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->d:Z

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State is not restored."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    return-void
.end method

.method private g()Ljava/util/Calendar;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->b:Lcom/facebook/common/errorreporting/crashcounter/CrashCounter$DefaultCalendarProvider;

    invoke-virtual {v0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter$DefaultCalendarProvider;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 90
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 91
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 92
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 93
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->a:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 105
    if-nez v0, :cond_0

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->a(Landroid/content/Intent;)V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->d:Z

    .line 110
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->f()V

    .line 249
    invoke-direct {p0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->g()Ljava/util/Calendar;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, v0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->b(Landroid/content/Intent;)V

    .line 158
    iget-object v1, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 159
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 276
    invoke-direct {p0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->f()V

    .line 278
    invoke-direct {p0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->g()Ljava/util/Calendar;

    move-result-object v2

    .line 280
    iget-object v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 281
    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 282
    goto :goto_0

    :cond_1
    move v0, v1

    .line 284
    goto :goto_0
.end method

.method public final c()V
    .locals 8

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->f()V

    .line 182
    iget v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->e:I

    .line 185
    invoke-direct {p0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->g()Ljava/util/Calendar;

    move-result-object v0

    .line 186
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 188
    iget-object v2, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->f:[J

    aget-wide v2, v2, v1

    .line 189
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 191
    sub-long v2, v4, v2

    .line 192
    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-ltz v0, :cond_0

    const-wide/32 v6, 0x36ee80

    cmp-long v0, v2, v6

    if-gez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->g:[I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->f:[J

    aput-wide v4, v0, v1

    .line 198
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->g:[I

    const/4 v2, 0x1

    aput v2, v0, v1

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->f()V

    .line 205
    iget v0, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->e:I

    return v0
.end method

.method public final e()I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 227
    invoke-direct {p0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->f()V

    .line 229
    invoke-direct {p0}, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->g()Ljava/util/Calendar;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    move v1, v0

    .line 233
    :goto_0
    const/16 v4, 0x18

    if-ge v1, v4, :cond_1

    .line 234
    iget-object v4, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->f:[J

    aget-wide v4, v4, v1

    .line 235
    sub-long v4, v2, v4

    .line 236
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 237
    iget-object v4, p0, Lcom/facebook/common/errorreporting/crashcounter/CrashCounter;->g:[I

    aget v4, v4, v1

    add-int/2addr v0, v4

    .line 233
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_1
    return v0
.end method
