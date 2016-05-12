.class Lcom/mixpanel/android/mpmetrics/DecideUpdates;
.super Ljava/lang/Object;
.source "DecideUpdates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/mpmetrics/DecideUpdates$OnNewResultsListener;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI DecideUpdates"


# instance fields
.field private final mDistinctId:Ljava/lang/String;

.field private final mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mListener:Lcom/mixpanel/android/mpmetrics/DecideUpdates$OnNewResultsListener;

.field private final mNotificationIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurveyIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mToken:Ljava/lang/String;

.field private final mUnseenNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mixpanel/android/mpmetrics/InAppNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnseenSurveys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mixpanel/android/mpmetrics/Survey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/DecideUpdates$OnNewResultsListener;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "distinctId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/mixpanel/android/mpmetrics/DecideUpdates$OnNewResultsListener;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mToken:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mDistinctId:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mListener:Lcom/mixpanel/android/mpmetrics/DecideUpdates$OnNewResultsListener;

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenSurveys:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenNotifications:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mSurveyIds:Ljava/util/Set;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mNotificationIds:Ljava/util/Set;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    return-void
.end method

.method public getDistinctId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mDistinctId:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getNotification(IZ)Lcom/mixpanel/android/mpmetrics/InAppNotification;
    .locals 3
    .param p1, "id"    # I
    .param p2, "replace"    # Z

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenNotifications:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 112
    const/4 v1, 0x0

    .line 124
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 114
    :cond_1
    const/4 v1, 0x0

    .line 115
    .local v1, "notif":Lcom/mixpanel/android/mpmetrics/InAppNotification;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenNotifications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenNotifications:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mixpanel/android/mpmetrics/InAppNotification;

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->getId()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 117
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenNotifications:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "notif":Lcom/mixpanel/android/mpmetrics/InAppNotification;
    check-cast v1, Lcom/mixpanel/android/mpmetrics/InAppNotification;

    .line 118
    .restart local v1    # "notif":Lcom/mixpanel/android/mpmetrics/InAppNotification;
    if-nez p2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenNotifications:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    .end local v0    # "i":I
    .end local v1    # "notif":Lcom/mixpanel/android/mpmetrics/InAppNotification;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 115
    .restart local v0    # "i":I
    .restart local v1    # "notif":Lcom/mixpanel/android/mpmetrics/InAppNotification;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public declared-synchronized getNotification(Z)Lcom/mixpanel/android/mpmetrics/InAppNotification;
    .locals 3
    .param p1, "replace"    # Z

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const/4 v0, 0x0

    .line 107
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 103
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenNotifications:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/mpmetrics/InAppNotification;

    .line 104
    .local v0, "n":Lcom/mixpanel/android/mpmetrics/InAppNotification;
    if-eqz p1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenNotifications:Ljava/util/List;

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenNotifications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    .end local v0    # "n":Lcom/mixpanel/android/mpmetrics/InAppNotification;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getSurvey(IZ)Lcom/mixpanel/android/mpmetrics/Survey;
    .locals 3
    .param p1, "id"    # I
    .param p2, "replace"    # Z

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenSurveys:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 84
    const/4 v1, 0x0

    .line 96
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 86
    :cond_1
    const/4 v1, 0x0

    .line 87
    .local v1, "survey":Lcom/mixpanel/android/mpmetrics/Survey;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenSurveys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenSurveys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mixpanel/android/mpmetrics/Survey;

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/Survey;->getId()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 89
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenSurveys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "survey":Lcom/mixpanel/android/mpmetrics/Survey;
    check-cast v1, Lcom/mixpanel/android/mpmetrics/Survey;

    .line 90
    .restart local v1    # "survey":Lcom/mixpanel/android/mpmetrics/Survey;
    if-nez p2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenSurveys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    .end local v0    # "i":I
    .end local v1    # "survey":Lcom/mixpanel/android/mpmetrics/Survey;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 87
    .restart local v0    # "i":I
    .restart local v1    # "survey":Lcom/mixpanel/android/mpmetrics/Survey;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public declared-synchronized getSurvey(Z)Lcom/mixpanel/android/mpmetrics/Survey;
    .locals 3
    .param p1, "replace"    # Z

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenSurveys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const/4 v0, 0x0

    .line 79
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 75
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenSurveys:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/mpmetrics/Survey;

    .line 76
    .local v0, "s":Lcom/mixpanel/android/mpmetrics/Survey;
    if-eqz p1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenSurveys:Ljava/util/List;

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenSurveys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    .end local v0    # "s":Lcom/mixpanel/android/mpmetrics/Survey;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized hasUpdatesAvailable()Z
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenSurveys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mIsDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized reportResults(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mixpanel/android/mpmetrics/Survey;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mixpanel/android/mpmetrics/InAppNotification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "newSurveys":Ljava/util/List;, "Ljava/util/List<Lcom/mixpanel/android/mpmetrics/Survey;>;"
    .local p2, "newNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/mixpanel/android/mpmetrics/InAppNotification;>;"
    monitor-enter p0

    const/4 v3, 0x0

    .line 48
    .local v3, "newContent":Z
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mixpanel/android/mpmetrics/Survey;

    .line 49
    .local v4, "s":Lcom/mixpanel/android/mpmetrics/Survey;
    invoke-virtual {v4}, Lcom/mixpanel/android/mpmetrics/Survey;->getId()I

    move-result v1

    .line 50
    .local v1, "id":I
    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mSurveyIds:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 51
    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mSurveyIds:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenSurveys:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const/4 v3, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "id":I
    .end local v4    # "s":Lcom/mixpanel/android/mpmetrics/Survey;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mixpanel/android/mpmetrics/InAppNotification;

    .line 58
    .local v2, "n":Lcom/mixpanel/android/mpmetrics/InAppNotification;
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->getId()I

    move-result v1

    .line 59
    .restart local v1    # "id":I
    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mNotificationIds:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 60
    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mNotificationIds:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mUnseenNotifications:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    const/4 v3, 0x1

    goto :goto_1

    .line 66
    .end local v1    # "id":I
    .end local v2    # "n":Lcom/mixpanel/android/mpmetrics/InAppNotification;
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->hasUpdatesAvailable()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mListener:Lcom/mixpanel/android/mpmetrics/DecideUpdates$OnNewResultsListener;

    if-eqz v5, :cond_4

    .line 67
    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->mListener:Lcom/mixpanel/android/mpmetrics/DecideUpdates$OnNewResultsListener;

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->getDistinctId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/mixpanel/android/mpmetrics/DecideUpdates$OnNewResultsListener;->onNewResults(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_4
    monitor-exit p0

    return-void

    .line 46
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
