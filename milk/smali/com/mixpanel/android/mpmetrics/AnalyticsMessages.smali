.class Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;
.super Ljava/lang/Object;
.source "AnalyticsMessages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;,
        Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;
    }
.end annotation


# static fields
.field private static ENQUEUE_EVENTS:I = 0x0

.field private static ENQUEUE_PEOPLE:I = 0x0

.field private static FLUSH_QUEUE:I = 0x0

.field private static INSTALL_DECIDE_CHECK:I = 0x0

.field private static KILL_WORKER:I = 0x0

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI"

.field private static SET_DISABLE_FALLBACK:I

.field private static SET_FLUSH_INTERVAL:I

.field private static final sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

.field private final mContext:Landroid/content/Context;

.field private final mWorker:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x0

    sput v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->ENQUEUE_PEOPLE:I

    .line 510
    const/4 v0, 0x1

    sput v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->ENQUEUE_EVENTS:I

    .line 511
    const/4 v0, 0x2

    sput v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->FLUSH_QUEUE:I

    .line 512
    const/4 v0, 0x5

    sput v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->KILL_WORKER:I

    .line 513
    const/16 v0, 0xc

    sput v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->INSTALL_DECIDE_CHECK:I

    .line 515
    const/4 v0, 0x4

    sput v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->SET_FLUSH_INTERVAL:I

    .line 516
    const/16 v0, 0xa

    sput v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->SET_DISABLE_FALLBACK:I

    .line 520
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->sInstances:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p0, p1}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->getConfig(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

    .line 43
    new-instance v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    invoke-direct {v0, p0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;-><init>(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mWorker:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->logAboutMessageToMixpanel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->INSTALL_DECIDE_CHECK:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->KILL_WORKER:I

    return v0
.end method

.method static synthetic access$200(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)Lcom/mixpanel/android/mpmetrics/MPConfig;
    .locals 1
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->SET_FLUSH_INTERVAL:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->FLUSH_QUEUE:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->SET_DISABLE_FALLBACK:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->ENQUEUE_PEOPLE:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->ENQUEUE_EVENTS:I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;
    .locals 4
    .param p0, "messageContext"    # Landroid/content/Context;

    .prologue
    .line 54
    sget-object v3, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->sInstances:Ljava/util/Map;

    monitor-enter v3

    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, "appContext":Landroid/content/Context;
    sget-object v2, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->sInstances:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    new-instance v1, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    invoke-direct {v1, v0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;-><init>(Landroid/content/Context;)V

    .line 59
    .local v1, "ret":Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;
    sget-object v2, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->sInstances:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :goto_0
    monitor-exit v3

    return-object v1

    .line 62
    .end local v1    # "ret":Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;
    :cond_0
    sget-object v2, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->sInstances:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    .restart local v1    # "ret":Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;
    goto :goto_0

    .line 65
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "ret":Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private logAboutMessageToMixpanel(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 176
    sget-boolean v0, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "MixpanelAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public eventsMessage(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;)V
    .locals 2
    .param p1, "eventDescription"    # Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$EventDescription;

    .prologue
    .line 69
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 70
    .local v0, "m":Landroid/os/Message;
    sget v1, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->ENQUEUE_EVENTS:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 71
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mWorker:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->runMessage(Landroid/os/Message;)V

    .line 73
    return-void
.end method

.method protected getConfig(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPConfig;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getInstance(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getPoster()Lcom/mixpanel/android/mpmetrics/ServerMessage;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/mixpanel/android/mpmetrics/ServerMessage;

    invoke-direct {v0}, Lcom/mixpanel/android/mpmetrics/ServerMessage;-><init>()V

    return-object v0
.end method

.method public hardKill()V
    .locals 2

    .prologue
    .line 122
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 123
    .local v0, "m":Landroid/os/Message;
    sget v1, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->KILL_WORKER:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 125
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mWorker:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->runMessage(Landroid/os/Message;)V

    .line 126
    return-void
.end method

.method public installDecideCheck(Lcom/mixpanel/android/mpmetrics/DecideUpdates;)V
    .locals 2
    .param p1, "check"    # Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    .prologue
    .line 114
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 115
    .local v0, "m":Landroid/os/Message;
    sget v1, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->INSTALL_DECIDE_CHECK:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 116
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 118
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mWorker:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->runMessage(Landroid/os/Message;)V

    .line 119
    return-void
.end method

.method isDead()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mWorker:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->isDead()Z

    move-result v0

    return v0
.end method

.method protected makeDbAdapter(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    new-instance v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;

    invoke-direct {v0, p1}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public peopleMessage(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "peopleJson"    # Lorg/json/JSONObject;

    .prologue
    .line 77
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 78
    .local v0, "m":Landroid/os/Message;
    sget v1, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->ENQUEUE_PEOPLE:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 79
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mWorker:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->runMessage(Landroid/os/Message;)V

    .line 82
    return-void
.end method

.method public postToServer()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 86
    .local v0, "m":Landroid/os/Message;
    sget v1, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->FLUSH_QUEUE:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 88
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mWorker:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->runMessage(Landroid/os/Message;)V

    .line 89
    return-void
.end method

.method public setDisableFallback(Z)V
    .locals 2
    .param p1, "disableIfTrue"    # Z

    .prologue
    .line 106
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 107
    .local v0, "m":Landroid/os/Message;
    sget v1, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->SET_DISABLE_FALLBACK:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 108
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mWorker:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->runMessage(Landroid/os/Message;)V

    .line 111
    return-void
.end method

.method public setFlushInterval(J)V
    .locals 2
    .param p1, "milliseconds"    # J

    .prologue
    .line 95
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 96
    .local v0, "m":Landroid/os/Message;
    sget v1, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->SET_FLUSH_INTERVAL:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 97
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->mWorker:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->runMessage(Landroid/os/Message;)V

    .line 100
    return-void
.end method
