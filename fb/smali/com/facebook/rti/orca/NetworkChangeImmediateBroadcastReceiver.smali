.class public Lcom/facebook/rti/orca/NetworkChangeImmediateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "sbtl"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/facebook/rti/orca/NetworkBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/orca/NetworkChangeImmediateBroadcastReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, -0x2c749db6

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v2

    .line 22
    if-nez p2, :cond_0

    .line 23
    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x5ab4ba74

    invoke-static {v3, v0, v1, v2}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    .line 43
    :goto_0
    return-void

    .line 26
    :cond_0
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    const v0, -0x23f11192

    invoke-static {v0, v2}, Lcom/facebook/tools/dextr/runtime/LogUtils;->e(II)V

    goto :goto_0

    .line 34
    :cond_1
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 35
    const-string v1, "NET_NULL"

    .line 36
    if-eqz v0, :cond_3

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":NW_IMM"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "-1"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_2
    new-instance v1, Lcom/facebook/rti/push/client/FbnsClientWrapper;

    invoke-direct {v1, p1}, Lcom/facebook/rti/push/client/FbnsClientWrapper;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v1, v0}, Lcom/facebook/rti/push/client/FbnsClientWrapper;->b(Ljava/lang/String;)V

    .line 43
    const v0, 0x46dbc1f3

    invoke-static {v0, v2}, Lcom/facebook/tools/dextr/runtime/LogUtils;->e(II)V

    goto :goto_0

    .line 38
    :cond_2
    const-string v0, "-0"

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method
