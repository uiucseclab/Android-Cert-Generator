.class Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;
.super Ljava/lang/Object;
.source "MixpanelAPI.java"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/DecideUpdates$OnNewResultsListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdatesListener"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mixpanel/android/mpmetrics/OnMixpanelUpdatesReceivedListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;


# direct methods
.method private constructor <init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)V
    .locals 1

    .prologue
    .line 1457
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1488
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;->mListeners:Ljava/util/Set;

    .line 1489
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Lcom/mixpanel/android/mpmetrics/MixpanelAPI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    .param p2, "x1"    # Lcom/mixpanel/android/mpmetrics/MixpanelAPI$1;

    .prologue
    .line 1457
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;-><init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addOnMixpanelUpdatesReceivedListener(Lcom/mixpanel/android/mpmetrics/OnMixpanelUpdatesReceivedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/mixpanel/android/mpmetrics/OnMixpanelUpdatesReceivedListener;

    .prologue
    .line 1466
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$400(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1467
    :try_start_1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$400(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->hasUpdatesAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$400(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->getDistinctId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;->onNewResults(Ljava/lang/String;)V

    .line 1470
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1472
    :try_start_2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1473
    monitor-exit p0

    return-void

    .line 1470
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1466
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onNewResults(Ljava/lang/String;)V
    .locals 1
    .param p1, "distinctId"    # Ljava/lang/String;

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1461
    return-void
.end method

.method public declared-synchronized removeOnMixpanelUpdatesReceivedListener(Lcom/mixpanel/android/mpmetrics/OnMixpanelUpdatesReceivedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mixpanel/android/mpmetrics/OnMixpanelUpdatesReceivedListener;

    .prologue
    .line 1476
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1477
    monitor-exit p0

    return-void

    .line 1476
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run()V
    .locals 5

    .prologue
    .line 1482
    monitor-enter p0

    :try_start_0
    const-string v2, "MixpanelAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE RECIEVED, INFORMING "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;->mListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LISTENERS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mixpanel/android/mpmetrics/OnMixpanelUpdatesReceivedListener;

    .line 1484
    .local v1, "listener":Lcom/mixpanel/android/mpmetrics/OnMixpanelUpdatesReceivedListener;
    invoke-interface {v1}, Lcom/mixpanel/android/mpmetrics/OnMixpanelUpdatesReceivedListener;->onMixpanelUpdatesReceived()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1482
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/mixpanel/android/mpmetrics/OnMixpanelUpdatesReceivedListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1486
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method
