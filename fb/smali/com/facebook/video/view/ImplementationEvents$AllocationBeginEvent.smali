.class public Lcom/facebook/video/view/ImplementationEvents$AllocationBeginEvent;
.super Lcom/facebook/common/eventbus/TypedEvent;
.source "timestamp"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/common/eventbus/TypedEvent",
        "<",
        "Lcom/facebook/video/view/ImplementationEvents$AllocationBeginEvent$Handler;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/facebook/video/view/ImplementationEvents$AllocationBeginEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/facebook/video/view/ImplementationEvents$AllocationBeginEvent;

    invoke-direct {v0}, Lcom/facebook/video/view/ImplementationEvents$AllocationBeginEvent;-><init>()V

    sput-object v0, Lcom/facebook/video/view/ImplementationEvents$AllocationBeginEvent;->a:Lcom/facebook/video/view/ImplementationEvents$AllocationBeginEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/facebook/common/eventbus/TypedEvent;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/common/eventbus/TypedHandler;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/facebook/video/engine/texview/InitializationSequenceLogger$Handler;

    .line 31
    invoke-virtual {p1}, Lcom/facebook/video/engine/texview/InitializationSequenceLogger$Handler;->d()V

    .line 32
    return-void
.end method
