.class public Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;
.super Ljava/lang/Object;
.source "onScreenOff"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Ljava/lang/Runnable;II)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;->a:Ljava/lang/Runnable;

    .line 17
    iput p2, p0, Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;->c:I

    .line 18
    iput p3, p0, Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;->b:I

    .line 19
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 22
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->CALL_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    iget v1, p0, Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;->b:I

    iget v2, p0, Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;->c:I

    invoke-static {v4, v0, v1, v2}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    move-result v1

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->CALL_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    iget v2, p0, Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;->b:I

    invoke-static {v4, v0, v2, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    .line 30
    return-void

    .line 28
    :catchall_0
    move-exception v0

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->CALL_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    iget v3, p0, Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;->b:I

    invoke-static {v4, v2, v3, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    throw v0
.end method
