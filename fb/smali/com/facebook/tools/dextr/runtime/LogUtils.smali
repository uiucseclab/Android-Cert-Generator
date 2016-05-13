.class public Lcom/facebook/tools/dextr/runtime/LogUtils;
.super Ljava/lang/Object;
.source "user_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)V
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x2

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->UI_INPUT_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v0, v1, p0, p1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    .line 27
    return-void
.end method

.method public static c(II)V
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x2

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v0, v1, p0, p1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    .line 63
    return-void
.end method

.method public static d(II)V
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x2

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v0, v1, p0, p1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    .line 86
    return-void
.end method

.method public static e(II)V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x2

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v0, v1, p0, p1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    .line 104
    return-void
.end method

.method public static f(II)V
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x2

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_FRAGMENT_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v0, v1, p0, p1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    .line 117
    return-void
.end method

.method public static g(II)V
    .locals 2

    .prologue
    .line 125
    const/4 v0, 0x2

    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_VIEW_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    invoke-static {v0, v1, p0, p1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    .line 127
    return-void
.end method
