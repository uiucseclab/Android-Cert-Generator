.class Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$BroadcastRecord;
.super Ljava/lang/Object;
.source "snapshot_reported"


# instance fields
.field final a:Landroid/content/Intent;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$ReceiverRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$ReceiverRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$BroadcastRecord;->a:Landroid/content/Intent;

    .line 75
    iput-object p2, p0, Lcom/facebook/rti/common/broadcast/LocalBroadcastManager$BroadcastRecord;->b:Ljava/util/ArrayList;

    .line 76
    return-void
.end method
