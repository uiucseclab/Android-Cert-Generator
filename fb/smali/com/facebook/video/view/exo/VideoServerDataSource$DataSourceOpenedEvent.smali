.class public Lcom/facebook/video/view/exo/VideoServerDataSource$DataSourceOpenedEvent;
.super Lcom/facebook/common/eventbus/TypedEvent;
.source "text/html"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/common/eventbus/TypedEvent",
        "<",
        "Lcom/facebook/video/view/exo/VideoServerDataSource$DataSourceOpenedEvent$Handler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/facebook/common/eventbus/TypedEvent;-><init>()V

    .line 113
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/common/eventbus/TypedHandler;)V
    .locals 0

    .prologue
    .line 106
    check-cast p1, Lcom/facebook/video/engine/texview/InitializationSequenceLogger$Handler;

    .line 110
    invoke-virtual {p1}, Lcom/facebook/video/engine/texview/InitializationSequenceLogger$Handler;->h()V

    .line 111
    return-void
.end method
