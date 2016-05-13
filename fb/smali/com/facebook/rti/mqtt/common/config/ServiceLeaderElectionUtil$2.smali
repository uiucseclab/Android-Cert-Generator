.class final Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil$2;
.super Ljava/util/ArrayList;
.source "suppressing exception in try-with-resources"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    sget-object v0, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil;->a:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil$2;->addAll(Ljava/util/Collection;)Z

    .line 36
    const-string v0, "com.instagram.android"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil$2;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v0, "com.instagram.android.preload"

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/config/ServiceLeaderElectionUtil$2;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method
