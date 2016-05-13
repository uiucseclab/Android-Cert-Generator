.class Lcom/facebook/rti/push/service/FbnsService$5;
.super Ljava/util/ArrayList;
.source "system_server_anr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/push/service/FbnsService;


# direct methods
.method constructor <init>(Lcom/facebook/rti/push/service/FbnsService;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 227
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsService$5;->this$0:Lcom/facebook/rti/push/service/FbnsService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    const-string v1, "/fbns_reg_resp"

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/FbnsService$5;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    const-string v1, "/fbns_msg"

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/FbnsService$5;->add(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method
