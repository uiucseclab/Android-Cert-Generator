.class Lcom/facebook/loom/logger/FileManager$6;
.super Ljava/lang/Object;
.source "unset"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/loom/logger/FileManager;


# direct methods
.method constructor <init>(Lcom/facebook/loom/logger/FileManager;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/facebook/loom/logger/FileManager$6;->a:Lcom/facebook/loom/logger/FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/facebook/loom/logger/FileManager$6;->a:Lcom/facebook/loom/logger/FileManager;

    iget-object v0, v0, Lcom/facebook/loom/logger/FileManager;->f:Lcom/facebook/analytics/logger/AnalyticsLogger;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/facebook/loom/logger/FileManager$6;->a:Lcom/facebook/loom/logger/FileManager;

    iget-object v0, v0, Lcom/facebook/loom/logger/FileManager;->f:Lcom/facebook/analytics/logger/AnalyticsLogger;

    const-string v1, "dextr_trace_trimmed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/analytics/logger/AnalyticsLogger;->a(Ljava/lang/String;Z)Lcom/facebook/analytics/event/HoneyClientEventFast;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/facebook/analytics/event/HoneyClientEventFast;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {v0}, Lcom/facebook/analytics/event/HoneyClientEventFast;->b()V

    .line 284
    :cond_0
    return-void
.end method
