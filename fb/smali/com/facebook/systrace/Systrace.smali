.class public Lcom/facebook/systrace/Systrace;
.super Ljava/lang/Object;
.source "wrong phase"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 71
    const/4 v0, 0x1

    .line 110
    .line 133
    sget-boolean v1, Lcom/facebook/androidinternals/android/os/TraceInternal;->e:Z

    if-nez v1, :cond_0

    .line 138
    .line 112
    :goto_0
    invoke-static {}, Lcom/facebook/systrace/TraceConfig;->e()V

    .line 113
    .line 72
    .line 78
    .line 73
    return-void

    .line 137
    :cond_0
    sget-object v1, Lcom/facebook/androidinternals/android/os/TraceInternal;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/facebook/androidinternals/android/os/TraceInternal;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static a(J)V
    .locals 3

    .prologue
    .line 110
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceConfig;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    .line 52
    :cond_0
    sget-boolean v2, Lcom/facebook/systrace/TraceDirect;->b:Z

    if-eqz v2, :cond_1

    .line 57
    :goto_1
    goto :goto_0

    .line 56
    :cond_1
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->nativeEndSection()V

    goto :goto_1
.end method

.method public static a(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 99
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceConfig;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    .line 36
    :cond_0
    sget-boolean v2, Lcom/facebook/systrace/TraceDirect;->b:Z

    if-eqz v2, :cond_1

    .line 41
    :goto_1
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {p2}, Lcom/facebook/systrace/TraceDirect;->nativeBeginSection(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(JLjava/lang/String;I)V
    .locals 3

    .prologue
    .line 133
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceConfig;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 137
    .line 68
    :cond_0
    sget-boolean v2, Lcom/facebook/systrace/TraceDirect;->b:Z

    if-eqz v2, :cond_1

    .line 73
    :goto_1
    goto :goto_0

    .line 72
    :cond_1
    invoke-static {p2, p3}, Lcom/facebook/systrace/TraceDirect;->nativeTraceCounter(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public static a(JLjava/lang/String;IJ)V
    .locals 2

    .prologue
    .line 173
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceConfig;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-static {p4, p5}, Lcom/facebook/systrace/FbSystrace;->a(J)J

    move-result-wide v0

    .line 177
    invoke-static {p2, p3, v0, v1}, Lcom/facebook/systrace/TraceDirect;->a(Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method public static a(JLjava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 195
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceConfig;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 199
    .line 90
    :cond_0
    sget-boolean v2, Lcom/facebook/systrace/TraceDirect;->b:Z

    if-eqz v2, :cond_1

    .line 95
    :goto_1
    goto :goto_0

    .line 94
    :cond_1
    invoke-static {p2, p3, p4}, Lcom/facebook/systrace/TraceDirect;->nativeAsyncTraceStageBegin(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public static a(JLjava/lang/String;Lcom/facebook/systrace/Systrace$EventScope;)V
    .locals 3

    .prologue
    .line 318
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceConfig;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 322
    :cond_0
    const-string v0, ""

    invoke-virtual {p3}, Lcom/facebook/systrace/Systrace$EventScope;->getCode()C

    move-result v1

    .line 166
    sget-boolean v2, Lcom/facebook/systrace/TraceDirect;->b:Z

    if-eqz v2, :cond_1

    .line 171
    :goto_1
    goto :goto_0

    .line 170
    :cond_1
    invoke-static {v0, p2, v1}, Lcom/facebook/systrace/TraceDirect;->nativeTraceInstant(Ljava/lang/String;Ljava/lang/String;C)V

    goto :goto_1
.end method

.method public static a(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 304
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceConfig;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 308
    .line 158
    :cond_0
    sget-boolean v2, Lcom/facebook/systrace/TraceDirect;->b:Z

    if-eqz v2, :cond_1

    .line 163
    :goto_1
    goto :goto_0

    .line 162
    :cond_1
    invoke-static {p2, p3, p4}, Lcom/facebook/systrace/TraceDirect;->nativeTraceMetadata(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public static b(JLjava/lang/String;I)V
    .locals 2

    .prologue
    .line 150
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceConfig;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {p2, p3, v0, v1}, Lcom/facebook/systrace/TraceDirect;->a(Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method public static b(JLjava/lang/String;IJ)V
    .locals 2

    .prologue
    .line 232
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceConfig;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-static {p4, p5}, Lcom/facebook/systrace/FbSystrace;->a(J)J

    move-result-wide v0

    .line 236
    invoke-static {p2, p3, v0, v1}, Lcom/facebook/systrace/TraceDirect;->b(Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method public static b(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 349
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceConfig;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 353
    .line 120
    :cond_0
    sget-boolean v2, Lcom/facebook/systrace/TraceDirect;->b:Z

    if-eqz v2, :cond_1

    .line 125
    :goto_1
    goto :goto_0

    .line 124
    :cond_1
    invoke-static {p2, p3, p4}, Lcom/facebook/systrace/TraceDirect;->nativeAsyncTraceRename(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public static c(JLjava/lang/String;I)V
    .locals 2

    .prologue
    .line 209
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceConfig;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 213
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {p2, p3, v0, v1}, Lcom/facebook/systrace/TraceDirect;->b(Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method public static e(JLjava/lang/String;I)V
    .locals 3

    .prologue
    .line 286
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceConfig;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 290
    .line 150
    :cond_0
    sget-boolean v2, Lcom/facebook/systrace/TraceDirect;->b:Z

    if-eqz v2, :cond_1

    .line 155
    :goto_1
    goto :goto_0

    .line 154
    :cond_1
    invoke-static {p2, p3}, Lcom/facebook/systrace/TraceDirect;->nativeEndAsyncFlow(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public static f(JLjava/lang/String;I)V
    .locals 3

    .prologue
    .line 333
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceConfig;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 337
    .line 109
    :cond_0
    sget-boolean v2, Lcom/facebook/systrace/TraceDirect;->b:Z

    if-eqz v2, :cond_1

    .line 114
    :goto_1
    goto :goto_0

    .line 113
    :cond_1
    invoke-static {p2, p3}, Lcom/facebook/systrace/TraceDirect;->nativeAsyncTraceCancel(Ljava/lang/String;I)V

    goto :goto_1
.end method
