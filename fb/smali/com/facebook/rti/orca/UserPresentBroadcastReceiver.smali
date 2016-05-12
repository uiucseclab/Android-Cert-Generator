.class public Lcom/facebook/rti/orca/UserPresentBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "scale"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/facebook/rti/orca/UserPresentBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/orca/UserPresentBroadcastReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, 0x73b6f192

    invoke-static {v3, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 18
    if-nez p2, :cond_0

    .line 19
    sget-object v1, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v2, -0x3167e347    # -1.2760096E9f

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    .line 28
    :goto_0
    return-void

    .line 22
    :cond_0
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 23
    const v1, 0x7119f0b4

    invoke-static {v1, v0}, Lcom/facebook/tools/dextr/runtime/LogUtils;->e(II)V

    goto :goto_0

    .line 25
    :cond_1
    new-instance v1, Lcom/facebook/rti/push/client/FbnsClientWrapper;

    invoke-direct {v1, p1}, Lcom/facebook/rti/push/client/FbnsClientWrapper;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v2, "USER_PRESENT"

    invoke-virtual {v1, v2}, Lcom/facebook/rti/push/client/FbnsClientWrapper;->b(Ljava/lang/String;)V

    .line 28
    const v1, 0x631e5ab6

    invoke-static {v1, v0}, Lcom/facebook/tools/dextr/runtime/LogUtils;->e(II)V

    goto :goto_0
.end method
