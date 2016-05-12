.class public Lcom/facebook/video/view/ImplementationEvents$PreparationEndEvent;
.super Lcom/facebook/common/eventbus/TypedEvent;
.source "timestamp"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/common/eventbus/TypedEvent",
        "<",
        "Lcom/facebook/video/view/ImplementationEvents$PreparationEndEvent$Handler;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/facebook/video/view/ImplementationEvents$PreparationEndEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/facebook/video/view/ImplementationEvents$PreparationEndEvent;

    invoke-direct {v0}, Lcom/facebook/video/view/ImplementationEvents$PreparationEndEvent;-><init>()V

    sput-object v0, Lcom/facebook/video/view/ImplementationEvents$PreparationEndEvent;->a:Lcom/facebook/video/view/ImplementationEvents$PreparationEndEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/facebook/common/eventbus/TypedEvent;-><init>()V

    .line 93
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/common/eventbus/TypedHandler;)V
    .locals 0

    .prologue
    .line 84
    check-cast p1, Lcom/facebook/video/engine/texview/InitializationSequenceLogger$Handler;

    .line 90
    invoke-virtual {p1}, Lcom/facebook/video/engine/texview/InitializationSequenceLogger$Handler;->g()V

    .line 91
    return-void
.end method
