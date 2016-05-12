.class public Lcom/facebook/video/view/ImplementationEvents$VideoServiceDisconnectedEvent;
.super Lcom/facebook/common/eventbus/TypedEvent;
.source "timestamp"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/common/eventbus/TypedEvent",
        "<",
        "Lcom/facebook/video/view/ImplementationEvents$VideoServiceDisconnectedEvent$Handler;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/facebook/video/view/ImplementationEvents$VideoServiceDisconnectedEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/facebook/video/view/ImplementationEvents$VideoServiceDisconnectedEvent;

    invoke-direct {v0}, Lcom/facebook/video/view/ImplementationEvents$VideoServiceDisconnectedEvent;-><init>()V

    sput-object v0, Lcom/facebook/video/view/ImplementationEvents$VideoServiceDisconnectedEvent;->a:Lcom/facebook/video/view/ImplementationEvents$VideoServiceDisconnectedEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/facebook/common/eventbus/TypedEvent;-><init>()V

    .line 127
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/common/eventbus/TypedHandler;)V
    .locals 0

    .prologue
    .line 117
    check-cast p1, Lcom/facebook/video/engine/texview/exo/ExoVideoPlayerClient;

    .line 124
    invoke-virtual {p1}, Lcom/facebook/video/engine/texview/exo/ExoVideoPlayerClient;->bR_()V

    .line 125
    return-void
.end method
