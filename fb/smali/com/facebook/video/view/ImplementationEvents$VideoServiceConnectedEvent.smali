.class public Lcom/facebook/video/view/ImplementationEvents$VideoServiceConnectedEvent;
.super Lcom/facebook/common/eventbus/TypedEvent;
.source "timestamp"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/common/eventbus/TypedEvent",
        "<",
        "Lcom/facebook/video/view/ImplementationEvents$VideoServiceConnectedEvent$Handler;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/facebook/common/eventbus/TypedEvent;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/video/view/ImplementationEvents$VideoServiceConnectedEvent;->a:Ljava/lang/Object;

    .line 104
    iput-object p1, p0, Lcom/facebook/video/view/ImplementationEvents$VideoServiceConnectedEvent;->a:Ljava/lang/Object;

    .line 105
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/common/eventbus/TypedHandler;)V
    .locals 0

    .prologue
    .line 98
    check-cast p1, Lcom/facebook/video/engine/texview/exo/ExoVideoPlayerClient;

    .line 109
    invoke-virtual {p1, p0}, Lcom/facebook/video/engine/texview/exo/ExoVideoPlayerClient;->a(Lcom/facebook/video/view/ImplementationEvents$VideoServiceConnectedEvent;)V

    .line 110
    return-void
.end method
