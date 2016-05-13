.class public Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;
.super Ljava/lang/Object;
.source "verve"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 5

    .prologue
    .line 43
    const/16 v0, 0x8

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_POP:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v0, v1, p0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    .line 47
    .line 171
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/tracer/Tracer;->a(JZ)J

    .line 172
    .line 48
    return-void
.end method

.method public static a(JI)V
    .locals 4

    .prologue
    .line 51
    const/16 v0, 0x8

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_POP:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v0, v1, p2}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    .line 55
    .line 181
    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Lcom/facebook/debug/tracer/Tracer;->a(JZ)J

    .line 182
    .line 56
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 16
    .line 80
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/facebook/debug/tracer/Tracer;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 18
    const/16 v0, 0x8

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_PUSH:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v0, v1, p1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    .line 22
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    .line 94
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v2}, Lcom/facebook/debug/tracer/Tracer;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    .line 27
    const/16 v0, 0x8

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_PUSH:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v0, v1, p2}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    .line 31
    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/Object;I)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/facebook/debug/tracer/Tracer;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    const/16 v0, 0x8

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_PUSH:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v0, v1, p2}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    .line 40
    return-void
.end method

.method public static b(I)J
    .locals 6

    .prologue
    .line 59
    const/16 v0, 0x8

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->MARK_POP:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v0, v1, p0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    .line 63
    .line 192
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/tracer/Tracer;->a(JZ)J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    move-wide v0, v2

    return-wide v0
.end method
